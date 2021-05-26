package sample1;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardWriterServlet
 */
@WebServlet("/sample1/write")
public class BoardWriterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardWriterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("board writer doGet..");
		
		String path = "/WEB-INF/sample1/boardForm.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
//		PrintWriter out = response.getWriter();
//		out.print("<form >");
//		out.print("</form>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		ServletContext application = request.getServletContext();
		List<Board> list = (List<Board>) application.getAttribute("boards");
		
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		String writer = request.getParameter("writer");
		
		Board board = new Board();
		board.setTitle(title);
		board.setBody(body);
		board.setWriter(writer);
		
		list.add(board);
		
		response.sendRedirect(request.getContextPath()+"/sample1/list");
	}

}








