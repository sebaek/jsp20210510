package sample2.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample2.bean.Member;
import sample2.dao.MemberDao;

/**
 * Servlet implementation class Sample2LogInServlet
 */
@WebServlet("/sample2/member/login")
public class Sample2LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2LogInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/sample2/member/login.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDao dao = new MemberDao();
		Member member = dao.getMember(id);
		
		if (member != null && member.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("userLogined", member);
			String path = request.getContextPath() + "/sample2/main";
			response.sendRedirect(path);
		} else {
			String path = "/WEB-INF/sample2/member/login.jsp";
			request.setAttribute("message", "아이디나 패스워드가 일치하지 않습니다");
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

}









