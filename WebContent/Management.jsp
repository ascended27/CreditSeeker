<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/SearchMenu.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Page</title>
</head>
<body>
	<div id='main_box' title='main box'>
		<div id='navbar' title='top box'>
			<a href="Home.jsp"><img id='logo' alt="LOGO" src="CreditSeekerLogo.bmp" ></a>
			<ul>
				<li><input type='button' onclick="location.href='Login.jsp';" value="Login" /></li>
				<li><input type='button' onclick="location.href='Register.jsp';" value="Register" /></li>
				<li><input type='button' onclick="location.href='Help.jsp';" value="Help" /></li>
				<li><input type='button' onclick="location.href='Logout.jsp';" value="Logout"/></li>
			</ul>
		</div>
		<div id='middle_box' title='middle box'>
			<div id='middle_box_menu' >
				<ul>
					<li><input type='button' onclick="location.href='SearchMenu.jsp';" value="Search" /></li>
					<li><input type='button' onclick="location.href='Register.jsp';" value="Approve" /></li>
				</ul>
			</div>
			<div id='userInfo'>
				<%System.out.println(session.getAttribute("searchFirstName")); %>
				<form>
					First Name:<br>
					<input type="text" name="name" value="<%out.println(session.getAttribute("searchFirstName"));%>"/>
					<br>
					Last Name:<br>
					<input type="text" name="name" value="<%out.println(session.getAttribute("searchLastName"));%>"/>
					<br>
					Username:<br>
					<input type="text" name="username" value="<%out.println(session.getAttribute("searchUsername"));%>"/>
					<br>
					Password:<br>
					<input type="text" name="password"/>
					<br>
					Confirm Password:<br>
					<input type="text" name="passwordConfirm"/>
					<br>
					Address 1:<br>
					<input type="text" name="addressOne" value="<%out.println(session.getAttribute("searchAddressOne"));%>"/>
					<br>
					Address 2:<br>
					<input type="text" name="addressTwo" value="<%out.println(session.getAttribute("searchAddressTwo"));%>"/>
					<br>
					City:<br>
					<input type="text" name="city" value="<%out.println(session.getAttribute("searchCity"));%>"/>
					<br>
					State:<br>
					<input type="text" name="state" value="<%out.println(session.getAttribute("searchState"));%>"/>
					<br>
					Zip Code:<br>
					<input type="text" name="zipCode" value="<%out.println(session.getAttribute("searchZip"));%>"/>
					<br><br>
					<input id='UpdateButton' type="submit" value="Update" onclick='form.action="UpdateAction.jsp"'>
					<input id='DeleteButton' type="submit" value="Delete" onclick='form.action="DeleteAction.jsp"'>
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