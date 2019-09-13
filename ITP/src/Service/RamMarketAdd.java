package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Modal.Market;
import Utility.DBConnection;
import util.DBconnection;

public class RamMarketAdd {

	public String RamMarketAdd(Market market)
	 {
	 String Mid = market.getMid();
	 String district=market.getDistrict();
	 String name = market.getName();
	 String province  = market.getProvince();
	
	
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBConnection.createConnection();
	 String query = "insert into market(Mid,district,name,province) values (NULL,?,?,?)"; //Insert user details into the table 'Stocks'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	 preparedStatement.setString(1, district);
	 preparedStatement.setString(2, name);
	 preparedStatement.setString(3, province);
	 
	 
	 
	 
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



