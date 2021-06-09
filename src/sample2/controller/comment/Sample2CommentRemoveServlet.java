package sample2.controller.comment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.service.comment.CommentService;

/**
 * Servlet implementation class Sample2CommentRemoveServlet
 */
@WebServlet("/sample2/comment/remove")
public class Sample2CommentRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CommentService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2CommentRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	super.init();
    	this.service = new CommentService();
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
		String idStr = request.getParameter("commentId");
		String boardId = request.getParameter("boardId");
		int id = Integer.parseInt(idStr);
		
		service.remove(id);
		
		String path = request.getContextPath() + "/sample2/board/detail?id=" + boardId;
		response.sendRedirect(path);
	}

}










