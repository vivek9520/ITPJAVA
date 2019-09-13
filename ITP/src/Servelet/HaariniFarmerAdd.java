package Servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modal.FarmersProducts;
import Service.HaariniFarmersProductsAdd;



/**
 * Servlet implementation class HaariniFarmerAdd
 */
@WebServlet("/HaariniFarmerAdd")
public class HaariniFarmerAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HaariniFarmerAdd() {
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
		 String fname = request.getParameter("fname");
		 String fproduct = request.getParameter("fproduct");
		 String amountOfSeeds = request.getParameter("amountOfSeeds");
		 String harvestTime = request.getParameter("harvestTime");
		 String harvestLand = request.getParameter("harvestLand");

	
		FarmersProducts farmersproducts= new FarmersProducts();
		 //Using Java Beans - An easiest way to play with group of related data
		
		farmersproducts.setFname(fname);
		farmersproducts.setfProduct(fproduct);
		farmersproducts.setAmountOfSeeds(amountOfSeeds);
		farmersproducts.setHarvestTime(harvestTime);
		farmersproducts.setHarvestLand(harvestLand);
		
		 HaariniFarmersProductsAdd addService = new  HaariniFarmersProductsAdd();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedE = addService.HaariniFarmersProductsAdd(farmersproducts);
		 
		 if(AddedE.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/retrivecheck.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedE);
		 request.getRequestDispatcher("/empl.jsp").forward(request, response);
		 }
		 }
	}






