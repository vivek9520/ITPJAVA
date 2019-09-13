package Service;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Modal.DailyPriceModal;

import Utility.DBConnection;

public class AddDailyPriceService {
	
	public String AddDailyPrice(DailyPriceModal DailyPrice)
	 {
		 String DailyMarketName = DailyPrice.getMarketName();
		 String DailyProductName = DailyPrice.getProductName();
		 String DailyDate = DailyPrice.getDate();
		 String buyingPrice = DailyPrice.getBuying();
		 String sellingPrice = DailyPrice.getSelling();
	 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 
	
	 
	 try
	 {
	 con = DBConnection.createConnection();
	 String query = "insert into DailyPrice(DPID,MarketName,ProductName,Date,Buying,Selling) values (NULL,?,?,?,?,?)"; //Insert user details into the table 'Stocks'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	 
	 preparedStatement.setString(1, DailyMarketName);
	 preparedStatement.setString(2, DailyProductName);
	 preparedStatement.setString(3, DailyDate);
	 preparedStatement.setString(4, buyingPrice);
	 preparedStatement.setString(5, sellingPrice);
	
	 
	 
	 
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
