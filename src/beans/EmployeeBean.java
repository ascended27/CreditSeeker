package beans;

import java.io.Serializable;

public class EmployeeBean implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	//Employee Information
	private String userName = null;
	private String firstName = null;
	private String lastName = null;
	private String password = null;
	private int userID = 0;
	
	public EmployeeBean()
	{
		
	}
	
	public EmployeeBean(String userName, String firstName, String lastName, String password, int userID)
	{
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.userID = userID;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
}
