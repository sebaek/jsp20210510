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
import sample2.service.member.MemberService;

/**
 * Servlet implementation class Sample2InfoServlet
 */
@WebServlet("/sample2/member/info")
public class Sample2InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private MemberService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2InfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	super.init();
    	service = new MemberService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("userLogined");
		
		if (member != null) {
			MemberDao dao = new MemberDao();
//			Member mem = dao.getMember(member.getId());
			
//			Member mem = dao.getMember2(member.getId());
			
			Member mem = service.getMember(member.getId());
			
			request.setAttribute("member", mem);
			
			String path = "/WEB-INF/sample2/member/info.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		} else {
			String path = request.getContextPath() + "/sample2/main";
			response.sendRedirect(path);
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




