<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/LoginError.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Credit Seeker</title>
</head>
<body>
	<div id='main_box' title='main box'>
		<div id='navbar' title='top box'>
			<a href="Home.jsp"><img id='logo' alt="LOGO" src="CreditSeekerLogo.bmp" ></a>
			<ul>
				<li><input type='button' onclick="location.href='Login.jsp';" value="Login" /></li>
				<li><input type='button' onclick="location.href='Register.jsp';" value="Register" /></li>
				<li><input type='button' onclick="location.href='Help.jsp';" value="Help" /></li>
			</ul>
		</div>
		<div id='middle_box' title='middle box'>
			<h2>Login Form</h2>
			<div>
				<form action="LoginCheck.jsp" method="post">
					<h3>Username or Password Incorrect</h3>
					Username:<br>
					<input type="text" name="username">
					<br>
					Password:<br>
					<input type="password" name="password">
					<br><br>
					<input id='LoginButton' type="submit" value="Submit" />
					<br><br>
				</form>
			</div>
		</div>
		<div id='bottom_box' title='bottom box'>
			<h2>Footer Company Info</h2>
			<p>Links on Links on Links</p>
		</div>
	</div>
</body>
</html>