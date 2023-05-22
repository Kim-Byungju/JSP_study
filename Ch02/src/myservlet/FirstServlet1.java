
package myservlet;

/*
 	서블릿클래스 계층도
 	
 	ServletConfig 인터페이스
 	Servlet인터페이스  |-------------GenericServlet 클래스
 										|
 									HttpServlet클래스
 										|
 										|
 									상속받아 작성
 	
 	서블릿의 생명주기가 있다.(자동호출)
 	
 				init()
 					- 서블릿이 생성될때 딱 한번만 호출된다.
 					- 서블릿 컨테이너가 서블릿 객체를 생성한 후 호출합니다.
 					- 서블릿이 작업하는데 필요한 자원을 준비시키는 코드를 여기서 작성한다.(초기화 작업)
 				
 				
 				service()
 					- 해당 서블릿에 대한 요청이 들어오면 그때마다 호출된다.
 					- 클라이언트가 요청한 작업을 처리하는 코드를 여기서 작성 
 					
 				doGet/doPost()
 					- 서블릿이 Get방식으로 호출되면 service()를 통해 호출됩니다. -doGet()
 					- 서블릿이 Post방식으로 호출되면 service()를 통해 호출된다. - doPost()
 				
 				destory()
 					-서블릿이 기능을 수행하고 메모리에서 소멸될때 호출된다.
 					- 서블릿이 마무리작업을 주로 작성한다.


*/
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/second")  //어노테이션
public class FirstServlet1 extends HttpServlet{


	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
		 System.out.println("init 메소드호출");
		 System.out.println("Servelet인터페이스에 정의되어 있다.");
		 System.out.println("서블릿요청시 지금 한번만 호출됩니다.");
		 System.out.println("초기화작업 실행전에 준비할 리소스등을 설정한다."); 
	}

	
	//@Override 
	//protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	//	 System.out.println("service()메서드 호출");
	//	 System.out.println("클라이언트의 서비스 요청이 있을떄마다 호출된다."); 
	//}
	 
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()메서드 호출");
		System.out.println("클라이언트의 요청이올떄 service()를 통해 호출된다.");
		System.out.println("실제로 클라이언트가 요청한 작업을 정의한다.");
		
		//1~100합계 요청
		
		int total=0;
		for(int cnt=1; cnt<=100; cnt++) {
			total += cnt;
		}
		
		//출력(클라이언트에게 보내기)
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>First1 Servlet</title></head>");
		writer.println("<body bgcolor='orange'>");
		writer.printf("<h3>1+2+3+4+,,,+100 = %d</h3>",total);
		writer.println("</body>");
		writer.println("</html>");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost()메서드 호출");
		System.out.println("클라이언트의 요청이올떄 service()를 통해 호출된다.");
		System.out.println("실제로 클라이언트가 요청한 작업을 정의한다.");
	}
	
	@Override
	public void destroy() {
		System.out.println("destory()메서드 호출");
		System.out.println("서블릿이 메모리에서 쇼멸될떄 호출");
		System.out.println("서블릿의 마무리작업 수행");
	}
	
	

}
