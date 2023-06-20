package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<head><title>출력페이지</title></head>");
		out.print("<body>");
		out.print("<h3>전달받은 데이터 :"+req.getAttribute("name")+"님! 환영합닌다.</h3>");
		out.print("</body>");
		out.print("</html>");
	}

}
