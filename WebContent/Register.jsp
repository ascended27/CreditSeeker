<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="Register.css">
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
			<div id='middle_text'>
				<h1>Registration</h1>
				<form>
					Name:<br>
					<input type="text" name="name">
					<br>
					Username:<br>
					<input type="text" name="username">
					<br>
					Password:<br>
					<input type="text" name="password">
					<br>
					Confirm Password:<br>
					<input type="text" name="password">
					<br>
					Address:<br>
					<input type="text" name="address">
					<br>
					City:<br>
					<input type="text" name="city">
					<br>
					State:<br>
					<input type="text" name="state">
					<br>
					Zip Code:<br>
					<input type="text" name="zip code">
					<br><br>
					<input id='LoginButton' type="submit">
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