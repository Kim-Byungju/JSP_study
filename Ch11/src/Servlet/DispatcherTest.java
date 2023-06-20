package Servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dispatcher")
public class DispatcherTest extends HttpServlet {

	
	private static final long serialVersionUID = -7656416718098720082L;
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		req.setAttribute("name", "홍길동");
		
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/hello");
		//dispatcher.forward(req, resp);
		
		//resp.sendRedirect("http://localhost:8080/Ch11/hello");
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/test.jsp");
		dispatcher.forward(req, resp);
	}
}	
