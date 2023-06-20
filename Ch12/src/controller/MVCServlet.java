package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class MVCServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String param = req.getParameter("name");
		Object obj = null;
		
		if(param == null) {
			obj = new String("Hello~ MVC!!");
		} else {
			obj = new Date();
		}
		req.setAttribute("result", obj);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/mvc.jsp");
		dispatcher.forward(req, resp);
	}
}
