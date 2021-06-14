package sample2.listener;

import java.util.TimeZone;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Sample2AppListener
 *
 */
@WebListener
public class Sample2AppListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Sample2AppListener() {
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
    	
    	TimeZone.setDefault(TimeZone.getTimeZone("Asia/Seoul"));
    	
    }
	
}







