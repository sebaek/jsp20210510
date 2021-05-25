package ch17.textbook;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DBCPInit2
 */
//@WebServlet("/DBCPInit2")
public class DBCPInit2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    public void init() throws ServletException {
//    	loadJDBCDriver();
//    	initConnectionPool();
    	String driver = getInitParameter("jdbcdriver");
    	String url = getInitParameter("jdbcUrl");
    	String user = getInitParameter("dbUser");
    	String pw = getInitParameter("dbPass");
    	String pool = getInitParameter("poolName");
    	
    	System.out.println(driver);
    	System.out.println(url);
    	System.out.println(user);
    	System.out.println(pw);
    	System.out.println(pool);
    }

}






