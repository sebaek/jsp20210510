package ch14.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ch14.bean.Customer;

public class CustomersDAO {
	public Customer getCustomer(int id) {

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
	
	public void updateCustomer(Customer customer) {
		
		String sql = " UPDATE Customers "
				+ "    SET CustomerName = ?, "
				+ "        ContactName = ?,"
				+ "        Address = ?, "
				+ "        City = ?, "
				+ "        PostalCode = ?, "
				+ "        Country = ? "
				+ "    WHERE CustomerID = ? ";
		
		String url = "jdbc:mysql://13.125.118.27/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// preparedStatement 생성
			stmt = con.prepareStatement(sql);
			
			// ? (파라미터)에 값 할당
			stmt.setString(1, customer.getName());
			stmt.setString(2, customer.getContactName());
			stmt.setString(3, customer.getAddress());
			stmt.setString(4, customer.getCity());
			stmt.setString(5, customer.getPostalCode());
			stmt.setString(6, customer.getCountry());
			stmt.setInt(7, customer.getId());

			// 쿼리 실행, 결과(ResultSet) 리턴
			int cnt = stmt.executeUpdate();

			if (cnt == 1) {
				System.out.println("수정 성공");
			} else {
				System.out.println("수정 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
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
	}

	public void deleteCustomer(int id) {
		String sql = "DELETE FROM Customers WHERE CustomerID = ?";
		
		String url = "jdbc:mysql://13.125.118.27/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;

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
			int cnt = stmt.executeUpdate();

			if (cnt == 1) {
				System.out.println("삭제 성공");
			} else {
				System.out.println("삭제 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
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
		
	}
}





