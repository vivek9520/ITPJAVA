package Servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchPro
 */
@WebServlet("/SearchPro")
public class SearchPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			PrintWriter out = response.getWriter();
			String search = request.getParameter("search");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ITP","root","root1234");
			String Query="select * from product where category='"+request.getParameter("search")+"'";
			Statement s=(Statement) con.createStatement();
			ResultSet rs = s.executeQuery(Query);
			
			
			
			
	
			
			out.println("<html>");
	        out.println("<head>");
	        out.println("<title>Product</title>");
	        out.println("<link rel='stylesheet' href='Details.css'>");
	        out.println("<link rel='stylesheet' href='https://www.w3schools.com/w3css/4/w3.css'>");
	        out.println("</head>");
	        out.println("<body>");
	       
	        out.println("<center><h2><font color='black'> PRODUCTS</font></h2></center>");
	        out.println("<div class='w3-container' align='center'>");

	        
			out.println("<table class='w3-table-all' border='1' cellpadding='12'>");
			out.println(" <thead>");
			out.println("<tr class='w3-blue'>");
			out.println("<th>PID</th>");
			out.println("<th>PRODUCT NAME</th>");
			out.println("<th>SEASON</th>");
			out.println("<th>CATEGORY</th>");
			out.println("<th>PLACES</th>");
			out.println("<th>DETAILS</th>");
			out.println("</tr>");		
			out.println(" </thead>");
			out.println("</div>");
			while(rs.next()){
			out.println("<tr bgcolor='#5EBADF'>");
				 out.println("<td>"  +rs.getString(1) + "</td>");
				 out.println("<td>"  +rs.getString(2) + "</td>");
				 out.println("<td>"  +rs.getString(3) + "</td>");
				 out.println("<td>"  +rs.getString(4) + "</td>");
				 out.println("<td>"  +rs.getString(5) + "</td>");
				 out.println("<td>"  +rs.getString(6) + "</td>");
			 out.println("/tr");	 
				
		
				
			}
			out.println("</table>");
			out.println("</body>");
			out.println("</html>");
		}
			
			
		
		
			
			
			
			
			
		
		catch(Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
