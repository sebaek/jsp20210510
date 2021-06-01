package ch14;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Customer;
import ch14.dao.CustomersDAO;

/**
 * Servlet implementation class JDBC18DeleteServlet
 */
@WebServlet("/JDBC18DeleteServlet")
public class JDBC18DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC18DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		CustomersDAO customersDao = new CustomersDAO();
	
		Customer customer = customersDao.getCustomer(Integer.parseInt(id));
		request.setAttribute("customer", customer);
		
		String path = "/ch14/jdbc18.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		CustomersDAO customersDAO = new CustomersDAO();
		
		customersDAO.deleteCustomer(Integer.parseInt(id));
		
		doGet(request, response);
	}

}










