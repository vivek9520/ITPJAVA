package Servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modal.guideSathu;
import Service.Addservicesat;



/**
 * Servlet implementation class AddSathu
 */
@WebServlet("/AddSathu")
public class AddSathu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSathu() {
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
		String name = request.getParameter("name");
		 String days = request.getParameter("days");
		 String tools = request.getParameter("tools");
		 String steps = request.getParameter("steps");
		 
		 guideSathu guideSathu = new guideSathu();
		 //Using Java Beans - An easiest way to play with group of related data
		 guideSathu.setName(name);
		 guideSathu.setDays(days);
		 guideSathu.setTools(tools);
		 guideSathu.setSteps(steps); 
		 
		 Addservicesat addservicesat = new Addservicesat();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String userRegistered = addservicesat.registerUser(guideSathu);
		 
		 if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/listsathu.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", userRegistered);
		 request.getRequestDispatcher("/AddSathu.jsp").forward(request, response);
		 }
		 }
	}

