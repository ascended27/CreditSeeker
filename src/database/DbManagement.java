package database;

import java.sql.*;
import java.util.ArrayList;

public class DbManagement 
{
	//Variables for Database Management
	  private static String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	  private static String dbUser = "eIntern";
	  private static String dbPass = "password";
	  private Connection conn;
	  private ResultSet rs;
	  private PreparedStatement stmt;
	  private ArrayList<String> found;
	  
	  public DbManagement()
	  {
		  
	  }
	  
	  //Search for value 'toSearch' in Database table 'location'
	  public ArrayList<String> dbSearch(String location, String toSearch)
	  {
		  found = null;
		  try {
			conn=DriverManager.getConnection(dbURL,dbUser,dbPass);
			stmt = conn.prepareStatement("Select * From" + location + "Where USER_NAME=" + toSearch);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				found.add(rs.getString("USER_NAME"));
				found.add(rs.getString("FIRST_NAME"));
				found.add(rs.getString("LAST_NAME"));
				found.add(rs.getString("PASSWORD"));
				found.add(rs.getString("CITY"));
				found.add(rs.getString("STATE"));
				found.add(rs.getString("ADDRESS_1"));
				found.add(rs.getString("ADDRESS_2"));
				found.add(rs.getString("ZIP"));

			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.err.println("Search Error!");

		}
		if(found == null)
			found.add("User Not Found");

		return found;
		  
	  }
	  
	  //Delete Client 'toDelete' from CLIENT_TABLE
	  public void dbDelete(String toDelete)
	  {
		  try{
			  conn=DriverManager.getConnection(dbURL,dbUser,dbPass);
			  stmt = conn.prepareStatement("Delete from CLIENT_TABLE Where USER_NAME=" + toDelete);
			  stmt.executeQuery();
			  conn.close();
		  }catch (SQLException e) {
			  e.printStackTrace();
			  System.err.println("Delete Error!");
		  }
	  }
	  
	  //Add Client 'toAdd' to Approval_Table
	  public void dbAddClient(String location, ArrayList<String> toAdd)
	  {
		  try{
			  conn=DriverManager.getConnection(dbURL,dbUser,dbPass);
			  if(toAdd.size() == 9)
			  {
				  if(location == "APPROVAL_TABLE")
			  	  {
					  String userName = toAdd.get(0);
					  String firstName = toAdd.get(1);
					  String lastName = toAdd.get(2);
					  String password = toAdd.get(3);
					  String city = toAdd.get(4);
					  String state = toAdd.get(5);
					  String addressOne = toAdd.get(6);
					  String addressTwo = toAdd.get(7);
					  String zip = toAdd.get(8);
					  stmt = conn.prepareStatement("Insert Into APPROVAL_TABLE(USER_NAME,PASSWORD,FIRST_NAME,LAST_NAME,CITY,STATE,ADDRESS_1,ADDRESS_2,ZIP) VALUES (?,?,?,?,?,?,?,?,?)");
					  stmt.setString(1,userName);
					  stmt.setString(2,firstName);
					  stmt.setString(3,lastName);
					  stmt.setString(4,password);
					  stmt.setString(5,addressOne);
					  stmt.setString(6,addressTwo);
					  stmt.setString(7,city);
					  stmt.setString(8,state);
					  stmt.setString(9,zip);
				  
					  stmt.executeQuery();
			  	  }else
			  	  {
					  String userName = toAdd.get(0);
					  String firstName = toAdd.get(1);
					  String lastName = toAdd.get(2);
					  String password = toAdd.get(3);
					  String city = toAdd.get(4);
					  String state = toAdd.get(5);
					  String addressOne = toAdd.get(6);
					  String addressTwo = toAdd.get(7);
					  String zip = toAdd.get(8);
					  stmt = conn.prepareStatement("Insert Into CLIENT_TABLE(USER_NAME,PASSWORD,FIRST_NAME,LAST_NAME,CITY,STATE,ADDRESS_1,ADDRESS_2,ZIP) VALUES (?,?,?,?,?,?,?,?,?)");
					  stmt.setString(1,userName);
					  stmt.setString(2,firstName);
					  stmt.setString(3,lastName);
					  stmt.setString(4,password);
					  stmt.setString(5,addressOne);
					  stmt.setString(6,addressTwo);
					  stmt.setString(7,city);
					  stmt.setString(8,state);
					  stmt.setString(9,zip);
				  
					  stmt.executeQuery();
			  	  }
			  }else{
				  System.err.println("toAdd Array not of correct length!");
			  }
			  conn.close();
		  }catch (SQLException e) {
			  e.printStackTrace();
			  System.err.println("Add Error!");
		  }
	  }
	  
	  //Moves Client from APPROVAL_TABLE to CLIENT_TABLE
	  public void dbApproveClient(String toApprove)
	  {
		  dbAddClient("CLIENT_TABLE", dbSearch("APPROVE_TABLE", "toApprove"));
	  }
}
