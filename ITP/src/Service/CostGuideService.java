package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Modal.CostGuide;
import Utility.DBConnection;

public class CostGuideService {
	
	public String CostGuideService(CostGuide costguide)
	 {
	
	 String province=costguide.getProvince();
	 String product = costguide.getProduct();
	 String amount  = costguide.getAmount();
	 String cost  = costguide.getCost();
	 
	 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBConnection.createConnection();
	 String query = "insert into costguide(Cid,province,product,amount,cost) values (NULL,?,?,?,?)"; //Insert user details into the table 'CostGuide'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	 preparedStatement.setString(1, province);
	 preparedStatement.setString(2, product);
	 preparedStatement.setString(3, amount);
	 preparedStatement.setString(4, cost);
	 
	
	 
	 
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
