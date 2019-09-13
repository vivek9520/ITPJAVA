package Servelet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modal.CostGuide;
import Service.CostGuideService;


/**
 * Servlet implementation class CostGuideServlet
 */
@WebServlet("/CostGuideServlet")

public class CostGuideServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CostGuideServlet() {
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
		 String province = request.getParameter("province");
		 String product = request.getParameter("product");
		 String amount = request.getParameter("amount");
		 String cost = request.getParameter("cost");
		
	
		CostGuide costguide = new CostGuide();
		 //Using Java Beans - An easiest way to play with group of related data
		costguide.setProvince(province);
		costguide.setProduct(product);
		costguide.setAmount(amount);
		costguide.setCost(cost);
		
		
		 CostGuideService addService = new CostGuideService();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedE = addService.CostGuideService(costguide);
		 
		 if(AddedE.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/viewCostGuide.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedE);
		 request.getRequestDispatcher("/CostGuide.jsp").forward(request, response);
		 }
		 }

}
