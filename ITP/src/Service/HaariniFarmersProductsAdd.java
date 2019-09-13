package Service;

    import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;

import Modal.FarmersProducts;
import Utility.DBConnection;

	

	public class HaariniFarmersProductsAdd {
		public String HaariniFarmersProductsAdd( FarmersProducts farmersproducts)
		 {
		 String id = farmersproducts.getFid();
		 String fname=farmersproducts.getFname();
		 String fproduct= farmersproducts.getfProduct();
		 String amountofseeds = farmersproducts.getAmountOfSeeds();
		 String harvesttime  = farmersproducts.getHarvestTime();
		 String harvestland = farmersproducts.getHarvestLand();
		
		
		 Connection con = null;
		 PreparedStatement preparedStatement = null;
		 
		 try
		 {
		 con = DBConnection.createConnection();
		 String query = "insert into farmersproducts(fid,fname,fproduct,amountofseeds,harvesttime,harvestland) values (NULL,?,?,?,?,?)"; //Insert user details into the table 'Stocks'
		 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
		 
		 
		 preparedStatement.setString(1, fname);
		 preparedStatement.setString(2, fproduct);
		 preparedStatement.setString(3, amountofseeds);
		 preparedStatement.setString(4, harvesttime);
		 preparedStatement.setString(5, harvestland);
		
		 
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







