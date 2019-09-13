package Servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modal.Products;
import Service.ProductsService;



/**
 * Servlet implementation class ProductsServlet
 */
@WebServlet("/ProductsServlet")


public class ProductsServlet extends HttpServlet {
	
private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductsServlet() {
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
		 String product = request.getParameter("product");
		 String season = request.getParameter("season");
		 String category = request.getParameter("category");
		 String places = request.getParameter("places");
		 String details = request.getParameter("details");
	
		Products products = new Products();
		 //Using Java Beans - An easiest way to play with group of related data
		products.setProduct(product);
		products.setSeason(season);
		products.setCategory(category);
		products.setPlaces(places);
		products.setDetails(details);
		
		 ProductsService addService = new ProductsService();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedE = addService.ProductsService(products);
		 
		 if(AddedE.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/viewProduct.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedE);
		 request.getRequestDispatcher("/Products.jsp").forward(request, response);
		 }
		 }

}
