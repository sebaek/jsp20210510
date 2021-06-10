package sample2.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import sample2.bean.Board;
import sample2.bean.BoardDto;
import sample2.util.DBConnection;

public class BoardDao {
	
	private String url;
	private String user;
	private String password;
	
	public BoardDao() {
		this.url = "jdbc:mysql://13.125.118.27/test2";
		this.user = "root";
		this.password = "wnddkdwjdqhcjfl1";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public boolean insert(Board board) {
		String sql = "INSERT INTO Board "
				+ "(title, body, memberId) "
				+ "VALUES "
				+ "(?, ?, ?) ";
		
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getBody());
			pstmt.setString(3, board.getMemberId());
			
			int cnt = pstmt.executeUpdate();
			if (cnt == 1) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public List<Board> list() {
		List<Board> list = new ArrayList<>();
		
		String sql = "SELECT id, title, memberId, inserted "
				+ "FROM Board "
				+ "ORDER BY id DESC ";
		
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
				) {
			
			while (rs.next()) {
				Board board = new Board();
				board.setId(rs.getInt(1));
				board.setTitle(rs.getString(2));
				board.setMemberId(rs.getString(3));
				board.setInserted(rs.getTimestamp(4));
				
				list.add(board);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	public List<BoardDto> list2() {
		List<BoardDto> list = new ArrayList<>();
		
		String sql = "SELECT b.id boardId, "
				+ "          b.title title,"
				+ "          m.name name,"
				+ "          b.inserted "
				+ "FROM Board b "
				+ "JOIN Member m "
				+ "ON b.memberId = m.id "
				+ "ORDER BY boardId DESC ";
		
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
				) {
			
			while (rs.next()) {
				BoardDto board = new BoardDto();
				board.setBoardId(rs.getInt(1));
				board.setTitle(rs.getString(2));
				board.setMemberName(rs.getString(3));
				board.setInserted(rs.getTimestamp(4));
				
				list.add(board);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	public Board get(int id) {
		String sql = "SELECT id, title, body, memberId, inserted "
				+ "FROM Board "
				+ "WHERE id = ? ";
		
		ResultSet rs = null;
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
			
				) {
			pstmt.setInt(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				Board board = new Board();
				board.setId(id);
				board.setTitle(rs.getString(2));
				board.setBody(rs.getString(3));
				board.setMemberId(rs.getString(4));
				board.setInserted(rs.getTimestamp(5));
				
				return board;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return null;
	}
	
	public BoardDto get2(int id) {
		String sql = "SELECT b.id boardId,"
				+ "          b.title title,"
				+ "          b.body body,"
				+ "          m.name memberName,"
				+ "          m.id memberID, "
				+ "          b.inserted "
				+ "FROM Board b JOIN Member m ON b.memberId = m.id "
				+ "WHERE b.id = ? ";
		
		ResultSet rs = null;
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
			
				) {
			pstmt.setInt(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				BoardDto board = new BoardDto();
				board.setBoardId(id);
				board.setTitle(rs.getString(2));
				board.setBody(rs.getString(3));
				board.setMemberName(rs.getString(4));
				board.setMemberId(rs.getString(5));
				board.setInserted(rs.getTimestamp(6));
				
				return board;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return null;
	}

	public boolean modify(BoardDto newBoard) {
		String sql = "UPDATE Board "
				+ " SET title = ?, "
				+ "     body = ? "
				+ " WHERE id = ? ";
		
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			
			pstmt.setString(1, newBoard.getTitle());
			pstmt.setString(2, newBoard.getBody());
			pstmt.setInt(3, newBoard.getBoardId());
			
			int cnt = pstmt.executeUpdate();
			
			return cnt == 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public boolean remove(int id) {
		String sql = "DELETE FROM Board WHERE id = ?";
		
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			
			pstmt.setInt(1, id);
			int cnt = pstmt.executeUpdate();
			
			return cnt == 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public void removeByMember(String id, Connection con) {
		String sql = "DELETE FROM Board WHERE memberId = ?";
		
		try (
			PreparedStatement pstmt = con.prepareStatement(sql);	
				) {
			
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public List<BoardDto> list3() {
		List<BoardDto> list = new ArrayList<>();
		
		String sql = "SELECT b.id boardId, "
				+ "          b.title title,"
				+ "          m.name name,"
				+ "          count(c.id) numberOfComment, "
				+ "          b.inserted "
				+ " FROM Board b "
				+ " JOIN Member m "
				+ " ON b.memberId = m.id "
				+ " LEFT JOIN Comment c "
				+ " ON b.id = c.boardId "
				+ " GROUP BY b.id "
				+ " ORDER BY boardId DESC ";
		
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
				) {
			
			while (rs.next()) {
				BoardDto board = new BoardDto();
				board.setBoardId(rs.getInt(1));
				board.setTitle(rs.getString(2));
				board.setMemberName(rs.getString(3));
				board.setNumberOfComment(rs.getInt(4));
				board.setInserted(rs.getTimestamp(5));
				
				list.add(board);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	public int getNumberOfBoard(String id, Connection con) {
		String sql = "SELECT COUNT(*) FROM Board WHERE memberId = ? ";
		
		ResultSet rs = null;
		try (
			PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				return rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(rs);
		}
		
		return 0;
	}

	public int countAll() {
		String sql = "SELECT COUNT(*) FROM Board";
		
		ResultSet rs = null;
		
		try (
			Connection con = DBConnection.getConnection();
			Statement stmt = con.createStatement();
				) {
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(rs);
		}
		
		return 0;
	}
}

















