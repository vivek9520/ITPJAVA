package Servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out= response.getWriter();
		doGet(request, response);
		
		String uname =request.getParameter("username");
		String pass =request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
				Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ITP", "root", "root1234");
				Statement stmt= (Statement) c.createStatement();
				ResultSet rs=(ResultSet) stmt.executeQuery("select uname,passw from login where uname='"+uname+"'and passw='"+pass+"'");
			if(rs.next())
				{	if(pass.equals("Vivek@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("AdminDailyPrice.jsp");
				}
				if(pass.equals("Haarini@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("FarmersProduct.jsp");
				}
				if(pass.equals("Nitha@1910"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("Products.jsp");
				}
				if(pass.equals("Subangan@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("FarmerProfile.jsp");
				}
				if(pass.equals("Anjanan@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("CostGuide.jsp");
				}
				if(pass.equals("Umai@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("FarmerUnion.jsp");
				}
				if(pass.equals("Sathu@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("AddSathu.jsp");
				}
				if(pass.equals("Ram@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("market.jsp");
				}
				
				}
				
				
					
					
					
					
					
				else
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("userlogin.jsp");
				}			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	

	
		
		 }
		 
	
	
	}


