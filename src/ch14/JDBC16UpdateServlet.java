package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Customer;

/**
 * Servlet implementation class JDBC16UpdateServlet
 */
@WebServlet("/JDBC16UpdateServlet")
public class JDBC16UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC16UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		Customer customer = getCustomer(id);
	
		System.out.println(customer);
		
		request.setAttribute("customer", customer);
		
		String path = "/ch14/jdbc16.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	private Customer getCustomer(int id) {

		Customer customer = null; // 리턴할 객체
		
		String sql = "SELECT CustomerID,"
				+ "          CustomerName,"
				+ "          ContactName, "
				+ "          Address, "
				+ "          City, "
				+ "          PostalCode,"
				+ "          Country"
				+ "   FROM Customers "
				+ "   WHERE CustomerID = ?";

		String url = "jdbc:mysql://13.125.118.27/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// preparedStatement 생성
			stmt = con.prepareStatement(sql);
			
			// ? (파라미터)에 값 할당
			stmt.setInt(1, id);

			// 쿼리 실행, 결과(ResultSet) 리턴
			rs = stmt.executeQuery();

			if (rs.next()) {
				customer = new Customer();
				customer.setId(id);
				customer.setName(rs.getString(2));
				customer.setContactName(rs.getString(3));
				customer.setAddress(rs.getString(4));
				customer.setCity(rs.getString(5));
				customer.setPostalCode(rs.getString(6));
				customer.setCountry(rs.getString(7));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		return customer;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// code 추가..
		
//		updateCustomer(customer);
		
		doGet(request, response);
	}
	
	private void updateCustomer(Customer customer) {
		// code 완성..
	}

}




