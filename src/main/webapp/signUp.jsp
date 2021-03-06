  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>SignUp</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- 	<div>Create an account!</div> -->
<!-- 	<form method="post" action="signUp"> -->
<!-- 		<input type="text" placeholder="Name" required name="name" required><br> -->
<!-- 		<input type="text" placeholder="Surname" required name="surname"><br> -->
<!-- 		<input type="text" placeholder="Email" required name="email" required><br> -->
<!-- 		<input type="text" placeholder="Username" required name="username" required><br> -->
<!-- 		<input type="text" placeholder="Description" required name="description"><br> -->
<!-- 		<input type="password" placeholder="Password" required name="password" required><br> -->

<!-- 		<input type="submit" value="Signup"> -->
<!-- 	</form> -->
<!-- </body> -->
<!-- </html> -->

<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================	 -->
	<link rel="icon" type="image/png" href="/resources/images/icons/favicon.ico"/>
<!--=============================================================================================== -->
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--=============================================================================================== -->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--=============================================================================================== -->
	<link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--=============================================================================================== -->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================	 -->
	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--=============================================================================================== -->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--=============================================================================================== -->
	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================	 -->
	<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<!--=============================================================================================== -->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--=============================================================================================== -->
</head>
<body>
	
	
	<div class="container-login100" style="background-image: url('resources/images/login_bg.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form class="login100-form validate-form" method="post" action="signUp">
				<span class="login100-form-title p-b-37">
					Create an account
				</span>
				<div class="wrap-input100 validate-input m-b-20" data-validate="name">
					<input class="input100" type="text" name="name" placeholder="name">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-20" data-validate="surname">
					<input class="input100" type="text" name="surname" placeholder="surname">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-20" data-validate="email">
					<input class="input100" type="email" name="email" placeholder="email">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-20" data-validate="username">
					<input class="input100" type="text" name="username" placeholder="username">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-20" data-validate="description">
					<input class="input100" type="text" name="description" placeholder="description">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
					<input class="input100" type="password" name="password" placeholder="password">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit" name="submit">
						Sign in
						
					</button>
				</div>

				<div class="text-center">
					<a href="login.jsp" class="txt2 hov1">
						Log in
					</a>
				</div>
			</form>
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--=============================================================================================== -->
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--=============================================================================================== -->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--=============================================================================================== -->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--=============================================================================================== -->
	<script src="resources/vendor/select2/select2.min.js"></script>
<!--=============================================================================================== -->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--=============================================================================================== -->
	<script src="resources/vendor/countdowntime/countdowntime.js"></script>
<!--=============================================================================================== -->
	<script src="resources/js/main.js"></script>

</body>
</html>