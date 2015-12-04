<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*" import = "java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String firstName = request.getParameter("firstName");
		System.out.println(firstName);
		String lastName = request.getParameter("lastName");
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
		PreparedStatement userCountStmt = null;
		
		try{
			DriverManager.registerDriver(driver);
			conn = DriverManager.getConnection(dbURL,dbUser,dbPass);
			if(password.equals(passwordConfirm))
			{
				registrationStmt = conn.prepareStatement("INSERT INTO APPROVAL_TABLE(USER_NAME,PASSWORD,FIRST_NAME,LAST_NAME,CITY,STATE,ADDRESS_1,ADDRESS_2,ZIP) VALUES (?,?,?,?,?,?,?,?,?)");
				registrationStmt.setString(1,username);
				registrationStmt.setString(2,firstName);
				registrationStmt.setString(3,lastName);
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
		}finally{
			  conn.close();
		  }
	%>
</body>
</html>