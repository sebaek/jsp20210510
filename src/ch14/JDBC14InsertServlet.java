package ch14;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Customer;

/**
 * Servlet implementation class JDBC14InsertServlet
 */
@WebServlet("/JDBC14InsertServlet")
public class JDBC14InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC14InsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/ch14/jdbc14form.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String contactName = request.getParameter("contactName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String postalCode = request.getParameter("postalCode");
		String country = request.getParameter("country");
		
		Customer customer = new Customer();
		customer.setName(name);
		customer.setContactName(contactName);
		customer.setAddress(address);
		customer.setCity(city);
		customer.setPostalCode(postalCode);
		customer.setCountry(country);
		
//		executeJDBC(name, contactName, address, city, postalCode, country);
		executeJDBC(customer);
	
	}

}























