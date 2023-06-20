package study;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/auth/login")
public class AuthLogin extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		
		req.setAttribute("name", name);
		req.setAttribute("age", age);
												//   /auth/login
												//   /member/add
		RequestDispatcher rd = req.getRequestDispatcher("../member/add");
		rd.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		
		req.setAttribute("name", name);
		req.setAttribute("age", age);
		
		RequestDispatcher rd = req.getRequestDispatcher("../member/view.jsp");
		
		//resp.setContentType("text/html; charset=UTF-8");
		//rd.include(req, resp);
		
		rd.forward(req, resp);
		
		//resp.sendRedirect("../view.jsp");
	}
}
