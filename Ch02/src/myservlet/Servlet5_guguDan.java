package myservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet5")
public class Servlet5_guguDan extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String num = req.getParameter("num");
		int input=0;
		try {
			input = Integer.parseInt(num);
		} catch (NumberFormatException e) {
			
		}
		
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		for(int i=2; i<=input; i++) {
			for(int j=1; j<=9; j++) {
				
				out.println("<h2>"+i+"*"+j+"="+(i*j)+"</h2>");
				out.println("");
				
			}
		}
		out.println("</body></html>");
		out.close();
	}
}
