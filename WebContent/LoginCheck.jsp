<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*" import = "java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%String username=request.getParameter("username");
	  String password=request.getParameter("password");
	  Driver driver = new oracle.jdbc.driver.OracleDriver();
	  String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	  String dbUser = "eIntern";
	  String dbPass = "password";
	  Connection conn = null;
	  PreparedStatement loginCheckStmt = null;
	  
	  try{
		  DriverManager.registerDriver(driver);
		  conn=DriverManager.getConnection(dbURL,dbUser,dbPass);
		  loginCheckStmt = conn.prepareStatement("SELECT * from EMPLOYEE_TABLE where USER_NAME=? and PASSWORD=?");
		  loginCheckStmt.setString(1,request.getParameter("username"));
		  loginCheckStmt.setString(2,request.getParameter("password"));
		  ResultSet rs = loginCheckStmt.executeQuery();
		  
		  if(rs.next()){
			  response.sendRedirect("MainPage.jsp");
		  }
		  else
		  {
			  System.out.println("FAILED");
			  response.sendRedirect("Help.jsp");
		  }
	  }catch(Exception e){
		  System.out.println("Exception occured!" + e.getMessage()+ " " + e.getStackTrace());
	  }

	  %>
</body>
</html>