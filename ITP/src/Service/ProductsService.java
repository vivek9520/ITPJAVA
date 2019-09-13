package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Modal.Products;
import Utility.DBConnection;




public class ProductsService {
	
	public String ProductsService(Products products)
	 {
	
	 String product=products.getProduct();
	 String season = products.getSeason();
	 String category  = products.getCategory();
	 
	 String places  = products.getPlaces();
	 String details  = products.getDetails();
	 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBConnection.createConnection();
	 String query = "insert into product(pid,product,season,category,places,details) values (NULL,?,?,?,?,?)"; //Insert user details into the table 'Product'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	 preparedStatement.setString(1, product);
	 preparedStatement.setString(2, season);
	 preparedStatement.setString(3, category);
	 preparedStatement.setString(4, places);
	 preparedStatement.setString(5, details);
	
	 
	 
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
