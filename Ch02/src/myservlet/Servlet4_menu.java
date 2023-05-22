package myservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fourth")
public class Servlet4_menu extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String menu = req.getParameter("menu");
		String color = req.getParameter("color");
		
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();//출력스트림, 출력을하기위해 호출
		out.println("<html><body>");
		out.println("<h2 style='color:"+color+"'>당신이 선택한 메뉴는 "+menu+"입니다</h2>");
		out.println("</body></html>");
		out.close();
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}
}
