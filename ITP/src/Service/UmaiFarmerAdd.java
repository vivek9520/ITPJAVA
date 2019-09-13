package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Modal.Farmer;
import Utility.DBConnection;




public class UmaiFarmerAdd {

	public String UmaiFarmerAdd(Farmer farmer)
	 {
	 String id = farmer.getId();
	 String name=farmer.getName();
	 String noOfFarmers = farmer.getNoOfFarmers();
	 String district  = farmer.getDistrict();
	 String province = farmer.getProvince();
	
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBConnection.createConnection();
	 String query = "insert into farmerunion(id,name,noOfFarmers,district,province) values (NULL,?,?,?,?)"; //Insert user details into the table 'Stocks'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	 preparedStatement.setString(1, name);
	 preparedStatement.setString(2, noOfFarmers);
	 preparedStatement.setString(3, district);
	 preparedStatement.setString(4, province);
	 
	 
	 
	 
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



