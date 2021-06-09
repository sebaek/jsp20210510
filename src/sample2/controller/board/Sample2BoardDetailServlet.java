package sample2.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.BoardDto;
import sample2.bean.Comment;
import sample2.dao.BoardDao;
import sample2.service.comment.CommentService;

/**
 * Servlet implementation class Sample2BoardDetailServlet
 */
@WebServlet("/sample2/board/detail")
public class Sample2BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private CommentService commentSerivce;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2BoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	super.init();
    	this.commentSerivce = new CommentService();
    	
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
			
			List<Comment> commentList = commentSerivce.list(Integer.parseInt(id));
			request.setAttribute("board", board);
			request.setAttribute("comments", commentList);
			
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
