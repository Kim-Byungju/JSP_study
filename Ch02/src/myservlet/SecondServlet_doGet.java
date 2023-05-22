package myservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/third")
public class SecondServlet_doGet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	//doGet()에 <h1>Hello ~ Servlet</h1>
	
	//web.xml맴핑, @Wwbserlet
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter writer = resp.getWriter();
		
		writer.println("<html>");
		writer.println("<head><title>First1 Servlet</title></head>");
		writer.println("<body bgcolor='blue'>");
		writer.printf("<h1>Hello ~ Servlet</h1>");
		writer.println("</body>");
		writer.println("</html>");
	}
}
