package sample1;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardModifyServlet
 */
@WebServlet("/sample1/modify")
public class BoardModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardModifyServlet() {
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
		request.setCharacterEncoding("utf-8");
		
		String index = request.getParameter("index");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		String writer = request.getParameter("writer");
		
		ServletContext application = request.getServletContext();
		List<Board> list = (List<Board>) application.getAttribute("boards");
		
		int i = Integer.parseInt(index);
		Board board = list.get(i);
		board.setTitle(title);
		board.setBody(body);
		board.setWriter(writer);
		
		String path = request.getContextPath() + "/sample1/detail?index=" + index;
		response.sendRedirect(path);
	}

}








