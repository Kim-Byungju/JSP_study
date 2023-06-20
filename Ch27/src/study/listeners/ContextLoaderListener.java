package study.listeners;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import study.Context.ApplicationContext;
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
	
	static ApplicationContext applicationContext;
	
	public static ApplicationContext getApplicationContext() {
		
		return applicationContext;
	}
	
	@Override
	public void contextInitialized(ServletContextEvent event) {
		
		try {
			ServletContext sc = event.getServletContext();
			String propertiesPath = sc.getRealPath(sc.getInitParameter("contextConfigLocation"));
			
			 applicationContext = new ApplicationContext(propertiesPath);
		
		//sc.setAttribute("/member/new.do", new NewaddController().setMemberDao(memberDao));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
	}	
}
