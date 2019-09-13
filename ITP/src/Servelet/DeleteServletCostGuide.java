package Servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.DeleteService_Su;




/**
 * Servlet implementation class DeleteServletProduct
 */
@WebServlet("/DeleteServletCostGuide")
public class DeleteServletCostGuide {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServletCostGuide() {
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String pid=request.getParameter("pid");	
				DeleteService_Su d=new DeleteService_Su();
				d.removeEmployee(pid);
				request.getRequestDispatcher("/viewCostGuide.jsp").forward(request, response);
				
				//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewCostGuide.jsp");
				//dispatcher.forward(request, response);
}

}
