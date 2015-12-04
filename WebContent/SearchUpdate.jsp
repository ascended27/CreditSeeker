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
	  String firstName = request.getParameter("firstName");
	  Driver driver = new oracle.jdbc.driver.OracleDriver();
	  String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	  String dbUser = "eIntern";
	  String dbPass = "password";
	  Connection conn = null;
	  PreparedStatement searchUpdateStmt = null;
	  ResultSet rs = null;

	  try{
		  DriverManager.registerDriver(driver);
		  conn=DriverManager.getConnection(dbURL,dbUser,dbPass);
		  System.out.println(firstName);
		  if(firstName != null)
		  {	
			  System.out.println("Name is not null");
			  searchUpdateStmt = conn.prepareStatement("SELECT * from CLIENT_TABLE where FIRST_NAME=?");
			  System.out.println("Statement Prepared");
		  	  searchUpdateStmt.setString(1,firstName);
		  	  System.out.println("String set");
		  	  rs = searchUpdateStmt.executeQuery();
		  	  System.out.println("Query Executed");
		  }

		  while(rs.next())
		  {
			  //TODO: Figure out how to send attributes to new page.
			  System.out.println("Adding Attributes to session");
			  session.setAttribute("searchFirstName", rs.getString("FIRST_NAME"));
			  session.setAttribute("searchLastName", rs.getString("LAST_NAME"));
			  session.setAttribute("searchUsername", rs.getString("USER_NAME"));
			  session.setAttribute("searchAddressOne", rs.getString("ADDRESS_1"));
			  session.setAttribute("searchAddressTwo", rs.getString("ADDRESS_2"));
			  session.setAttribute("searchCity", rs.getString("CITY"));
			  session.setAttribute("searchState", rs.getString("STATE"));
			  session.setAttribute("searchZipCode", rs.getString("ZIP"));
			  out.println("<h1>ATTRIBUTES SET</h1>");
			  response.sendRedirect("Management.jsp");
		  }
		  out.println("Hello <br>");
			  
	  }catch(Exception e){
		  System.out.println("Exception occured!" + e.getMessage()+ " " + e.getStackTrace());
	  }finally{
		  searchUpdateStmt.close();
		  conn.close();
	  }

	  %>
</body>
</html>