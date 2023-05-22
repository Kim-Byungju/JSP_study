package myservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Board")
public class Servlet8_board extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5272411704276175542L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		out.println("제 목 :" +title+"<br>");
		out.println("저 자 :" +name+"<br>");
		out.println("내 용 :" +content+"<br>");
		out.println("</body></html>");
		out.close();
		
		
	
	}
}
