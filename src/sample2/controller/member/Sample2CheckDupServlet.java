package sample2.controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.dao.MemberDao;

/**
 * Servlet implementation class Sample2CheckDupServlet
 */
@WebServlet("/sample2/member/checkdup")
public class Sample2CheckDupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2CheckDupServlet() {
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
		String id = request.getParameter("id");
		
		// System.out.println(id);
		
		MemberDao dao = new MemberDao();
		
		response.setContentType("text/plain; charset=utf-8");
		if (dao.existsId(id)) {
			response.getWriter().append("not ok");
		} else {
			response.getWriter().append("ok");
		}
		
	}

}








