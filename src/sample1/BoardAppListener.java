package sample1;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class BoardAppListener
 *
 */
//@WebListener
public class BoardAppListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public BoardAppListener() {
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
    	System.out.println("board app listener initialized.....");
    	ServletContext application = sce.getServletContext();
    	List<Board> list = new ArrayList<>();
    	
    	application.setAttribute("boards", list);
    }
	
}





