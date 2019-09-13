package Servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modal.DailyPriceModal;
import Service.AddDailyPriceService;


/**
 * Servlet implementation class AddDailyPriceServlet
 */
@WebServlet("/AddDailyPriceServlet")
public class AddDailyPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDailyPriceServlet() {
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
		

		 String DailyMarketName = request.getParameter("DailyMarketName");
		 String DailyProductName = request.getParameter("DailyProductName");
		 String DailyDate = request.getParameter("DailyDate");
		 String buyingPrice = request.getParameter("buyingPrice");
		 String sellingPrice = request.getParameter("sellingPrice");
		 
		  
		 //Using Java Beans - An easiest way to play with group of related data
		 DailyPriceModal DailyPriceModalObj = new  DailyPriceModal();
		 
		 DailyPriceModalObj.setMarketName(DailyMarketName);
		 DailyPriceModalObj.setProductName(DailyProductName);
		 DailyPriceModalObj.setDate(DailyDate);
		 DailyPriceModalObj.setBuying(buyingPrice);
		 DailyPriceModalObj.setSelling(sellingPrice);
		 
		
		 
		 
		 
		
		 
		
		 AddDailyPriceService addDailyPrice = new AddDailyPriceService();
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String DailyPrice = addDailyPrice.AddDailyPrice(DailyPriceModalObj);
		
		 if(DailyPrice.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
			 
		 request.getRequestDispatcher("/AdminDailyPrice.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
			 PrintWriter out = response.getWriter();
			 out.print("Error");
		//request.setAttribute("errMessage", AddedE);
		//request.getRequestDispatcher("/empl.jsp").forward(request, response);
		 }
		 
	}

}
