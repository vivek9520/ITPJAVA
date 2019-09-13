package Service;

import java.io.PrintWriter;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Modal.guideSathu;
import Utility.DBConnection;



public class Addservicesat {
	

	public String registerUser(guideSathu guideSathu)
	 {
	 String name = guideSathu.getName();
	 String days = guideSathu.getDays();
	 String tools = guideSathu.getTools();
	 String steps = guideSathu.getSteps();
	 
	 
	
	 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBConnection.createConnection();
	 String query = "insert into fguide(gid,name,days,tools,steps) values (NULL,?,?,?,?)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1, name);
	 preparedStatement.setString(2, days);
	 preparedStatement.setString(3, tools);
	 preparedStatement.setString(4, steps);
	 
	 int i= preparedStatement.executeUpdate();
	 
	 if (i!=0)  //Just to ensure data has been inserted into the database
	 return "SUCCESS"; 
	 }
	 catch(SQLException e)
	 
	 {
		
	 e.printStackTrace();
	 }
	
	 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	 }
}
