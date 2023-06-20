package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Command")
public class CMDServlet extends HttpServlet{

	/*
		cmd = null >>view.mvc.jsp
		cmd = join view/member_join.jsp
		cmd = login >> view/member_login.jsp
		cmd = update >> view/member_update.jsp
		cmd = delete >> view/member_delete.jsp
	*/
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String cmd = req.getParameter("cmd");
		
		String view = null;
		if(cmd==null) {
			
		}else if(cmd.equals("info")) {
			view = "/view/member_info.jsp";
			
		}else if(cmd.equals("join")) {
			view = "/view/member_join.jsp";
			
		} else if(cmd.equals("login")) {
			view = "/view/member_login.jsp";
			
		} else if(cmd.equals("update")) {
			view = "/view/member_update.jsp";
			
		} else if(cmd.equals("delete")) {
			view = "/view/member_delete.jsp";
		}
		RequestDispatcher dispatcher
			=req.getRequestDispatcher(view);
		dispatcher.forward(req, resp);
		
		
	}
}
