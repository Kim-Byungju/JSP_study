package study;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/add")
public class MemberAdd extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//RequestDispatcher rd = req.getRequestDispatcher("/view.jsp");
		//RequestDispatcher rd = req.getRequestDispatcher("/member/view.jsp"); //절대주소
		RequestDispatcher rd = req.getRequestDispatcher("view.jsp");  //상대주소
		//rd.forward(req, resp);
		//resp.setContentType("text/html; charset=UTF-8");
		//rd.include(req, resp);
		resp.sendRedirect("http://localhost:8080/Ch22/member/view.jsp");
	}
}
