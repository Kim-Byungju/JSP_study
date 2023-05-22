package myservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet3")
public class Servlet3_doPost extends HttpServlet {

	
	public Servlet3_doPost() {
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1. 응답형 컨텐트타입을 설정한다.
		resp.setContentType("text/html; charset=utf-8");
		//2.출력시킬 아웃스트림을 생성한다.
		PrintWriter out =  resp.getWriter();
		
		//3.요청받은 파라미터값을 한글이깨지;지않도록 인코딩을 맞춘다.
		req.setCharacterEncoding("utf-8");
		
		//4. 요청시에보내온 파라미터값을 받아온다.
		String name = req.getParameter("name");
		
		//5. 응답할 출력문서 작성
		out.println("<html><body>");
		out.println("<h1>Hello, "+name+"님</h1>");
		out.println("</body></html>");
		
		//스트림을 닫는다.
		out.close();
	}
}
