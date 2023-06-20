package study.listeners;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import study.dao.MemberDao;
import study.util.DBConnectionPool;

/*
	서블릿 리스너
		; 서블릿컨테이너는 웹애플리케이션의 상태를 모니터링 할 수있도록 시작에서 종료 까지 주요한 사건(event)에 대한
		알람기능을 제공한다.
		
		- 웹애플리케이션의 시작/종료: ServletContextListener
		- 세션생성/소멸	: HttpSessionListener
		- 요청/응답 : ServletRequestListener

*/
@WebListener
public class ContextLoaderListener implements ServletContextListener {
	
	DBConnectionPool connPool;
	
	@Override
	public void contextInitialized(ServletContextEvent event) {
		
		try {
			ServletContext sc = event.getServletContext();
			connPool = new DBConnectionPool(
					sc.getInitParameter("driver"), 
					sc.getInitParameter("url"), 
					sc.getInitParameter("username"), 
					sc.getInitParameter("password")
				);
			
			//DAO로 연결
			MemberDao memberDao = new MemberDao();
			memberDao.setDBConnectionPool(connPool);
			
			sc.setAttribute("memberDao", memberDao);
			
		} catch (Exception e) {}
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
		
	}	
}
