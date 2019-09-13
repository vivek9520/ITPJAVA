package Servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modal.Farmer;
import Service.UmaiFarmerAdd;



/**
 * Servlet implementation class UmaiFarmerAddServlet
 */
@WebServlet("/UmaiFarmerAddServlet")
public class UmaiFarmerAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UmaiFarmerAddServlet() {
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
		
		
		String name = request.getParameter("name");
		 String noOfFarmers = request.getParameter("noOfFarmers");
		 String district = request.getParameter("district");
		 String province = request.getParameter("province");
		
		Farmer farmer = new Farmer();
		 //Using Java Beans - An easiest way to play with group of related data
		farmer.setName(name);
		farmer.setNoOfFarmers(noOfFarmers);
		farmer.setDistrict(district);
		farmer.setProvince(province);
		 
		 
		 UmaiFarmerAdd addService = new UmaiFarmerAdd();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedE = addService.UmaiFarmerAdd(farmer);
		 
		 if(AddedE.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/ListFarmerUnion.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedE);
		 request.getRequestDispatcher("/ListFarmerUnion.jsp").forward(request, response);
		 }
		 }
	}



