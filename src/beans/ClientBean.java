package beans;

import java.io.Serializable;

public class ClientBean implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	//Client Information
	private String firstName = null;
	private String lastName = null;
	private String userName = null;
	private String password = null;
	private String city = null;
	private String state = null;
	private String zip = null;
	private int userID = 0;
	
	public ClientBean()
	{
		
	}
	
	public ClientBean(String firstName, String lastName, String userName, String password, String city, String state, String zip, int userID)
	{
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.password = password;
		this.city = city;
		this.state = state;
		this.zip = zip;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
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
	
	
	
}
