package net.myinterns.log;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import net.andree.MyInterns.common.dto.UserDTO;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		
		Client c = Client.create();

		WebResource webResource = c.resource("http://localhost:8080/MyInterns8-0.0.1-SNAPSHOT/user/login");

		String input = "{\"username\":" + username + ",\"password\":" + password + "}";

		ClientResponse res = webResource.type("application/json").post(ClientResponse.class, input);
		JSONObject output = res.getEntity(JSONObject.class);

		session.setAttribute("username", username);

		response.sendRedirect("mentor.jsp");
				
		WebResource webResourceUsersTypeS = c.resource("http://localhost:8080/MyInterns8-0.0.1-SNAPSHOT/user/users");
		ClientResponse responseUsersTypeS = webResourceUsersTypeS.type("application/json").get(ClientResponse.class);
		JSONArray resultUserTypeS = responseUsersTypeS.getEntity(JSONArray.class);
		
		int s = 0;
		JSONObject objS = new JSONObject();
		List<UserDTO> users = new ArrayList<UserDTO>();
		
		while (s < resultUserTypeS.length()) {
			try {
				objS = resultUserTypeS.getJSONObject(s);
				UserDTO userDTO = new UserDTO();
				userDTO.setUsername(objS.getString("username"));
				userDTO.setIsMentor(objS.getBoolean("isMentor"));
				users.add(userDTO);
			} catch (JSONException e) {
				e.printStackTrace();
			}
			s++;
		}
		
		session.setAttribute("users", users);
	}
}
