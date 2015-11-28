<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*" import = "java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%	int userCount = 1;
		String name = request.getParameter("name");
		System.out.println(name);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String passwordConfirm = request.getParameter("passwordConfirm");
		String addressOne = request.getParameter("addressOne");
		String addressTwo = request.getParameter("addressTwo");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipCode = request.getParameter("zipCode");
		Driver driver = new oracle.jdbc.driver.OracleDriver();
		String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbUser = "eIntern";
		String dbPass = "password";
		Connection conn = null;
		PreparedStatement registrationStmt = null;
		
		try{
			DriverManager.registerDriver(driver);
			conn = DriverManager.getConnection(dbURL,dbUser,dbPass);
			if(password.equals(passwordConfirm))
			{
				//TODO: USER ID UPDATING
				userCount++;
				registrationStmt = conn.prepareStatement("INSERT INTO CLIENT_TABLE(USER_ID,USER_NAME,PASSWORD,NAME,CITY,STATE,ADDRESS_1,ADDRESS_2,ZIP) VALUES (?,?,?,?,?,?,?,?,?)");
				registrationStmt.setInt(1, userCount);
				registrationStmt.setString(2,name);
				registrationStmt.setString(3,username);
				registrationStmt.setString(4,password);
				registrationStmt.setString(5,addressOne);
				registrationStmt.setString(6,addressTwo);
				registrationStmt.setString(7,city);
				registrationStmt.setString(8,state);
				registrationStmt.setString(9,zipCode);
				ResultSet rs = registrationStmt.executeQuery();
				System.out.println("INSERTED");
				response.sendRedirect("Home.jsp");
			}
			else
			{
				response.sendRedirect("Help.jsp");
			}
		}catch(Exception e){
			System.out.println("Exception occured!" + e.getMessage()+ " " + e.getStackTrace());
		}
	%>
</body>
</html>