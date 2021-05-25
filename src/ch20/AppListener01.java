package ch20;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Application Lifecycle Listener implementation class AppListener01
 *
 */
//@WebListener
public class AppListener01 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public AppListener01() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         System.out.println("어플리케이션 초기화 되었습니다.");
         ServletContext application = sce.getServletContext();
         String driver = application.getInitParameter("jdbcdriver");
         String url = application.getInitParameter("jdbcUrl");
         
         System.out.println(driver);
         System.out.println(url);
         
         System.out.println("초기화 메소드 종료");
    }
	
}








