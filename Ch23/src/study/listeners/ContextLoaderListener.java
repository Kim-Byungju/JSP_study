package study.listeners;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.InitialContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;

import study.dao.MemberDao;
import study.util.DBConnectionPool;

/*
	JNDI
		-Java Naming and Directory Interface API
		- 디렉터리 서비스에 접근하는데  필요한 API.
		- 애플리케이션은 API를 통해서 자원을(서버나 메시징시스템 등) 찾을 수있다.
		- JDBC를 특히 데이터 소스라한다.
		- 자원을 서버에 등록할때 고유한 JNDI이름을 붙인다.
		
		-서버에서 자원을 찾을때 기본 JNDI이름
			java:comp/env   - 응용프로그램 환경항목
			java:comp/env/jdbc   - jdbc데이터소스
						~~~
		
*/
@WebListener
public class ContextLoaderListener implements ServletContextListener {
	
	
	@Override
	public void contextInitialized(ServletContextEvent event) {
		
		try {
		ServletContext sc = event.getServletContext();
		InitialContext initialContext = new InitialContext();
		//WAS에서 웹어플리케이션이 등록될때 설정되는 자원객체
		
		DataSource ds = (DataSource)initialContext.lookup("java:comp/env/jdbc/myDB");
		//DataSource(JDBC자원)
		// - 커넥션 풀의 connection을 관리하기위한 객체이다.
		// - DataSource객체를 통해서 Connection을 획득, 반납등의 작업을 한다.
		
		MemberDao memberDao = new MemberDao();
		memberDao.setDataSource(ds);
		
		sc.setAttribute("memberDao", memberDao);
		
		} catch (Exception e) {
		
		}
	}
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
		
	}	
}
