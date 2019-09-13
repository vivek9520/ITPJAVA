package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Utility.DBConnection;

public class DeleteFarmerGuideService {
	
	public void removeFGuide(String FGid){
		Connection con = null;
		PreparedStatement preparedStatement = null;
	 
		try {
			 con = DBConnection.createConnection();
			 String query = "DELETE FROM FarmerGuide WHERE FGId="+FGid; 
			 preparedStatement = con.prepareStatement(query);
			 preparedStatement.execute(query);
			 
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		
		
	}

}
