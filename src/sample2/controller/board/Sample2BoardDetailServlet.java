package sample2.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.BoardDto;
import sample2.dao.BoardDao;

/**
 * Servlet implementation class Sample2BoardDetailServlet
 */
@WebServlet("/sample2/board/detail")
public class Sample2BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2BoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		if (id == null) {
			String path = request.getContextPath() + "/sample2/board/list";
			response.sendRedirect(path);
		} else {
			BoardDao dao = new BoardDao();
//			Board board = dao.get(Integer.parseInt(id));
			BoardDto board = dao.get2(Integer.parseInt(id));
			
			request.setAttribute("board", board);
			
			String path = "/WEB-INF/sample2/board/detail.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
