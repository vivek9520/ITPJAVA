package Servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modal.Market;
import Service.RamMarketAdd;




@WebServlet("/RamMarketAddServlet")
public class RamMarketAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RamMarketAddServlet() {
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
		
		
		 String district = request.getParameter("district");
		 String name = request.getParameter("name");
		 String province = request.getParameter("province");
		
		Market market = new Market();
		 //Using Java Beans - An easiest way to play with group of related data
		market.setName(name);
	    market.setDistrict(district);
		market.setProvince(province);
		 
		 
		 RamMarketAdd addService = new RamMarketAdd();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedE = addService.RamMarketAdd(market);
		 
		 if(AddedE.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/ListMarket.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedE);
		 request.getRequestDispatcher("/empl.jsp").forward(request, response);
		 }
		 }
	}



