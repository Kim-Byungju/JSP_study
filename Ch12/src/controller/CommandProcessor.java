package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CommandProcessor1")
public class CommandProcessor extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String cmd = req.getParameter("cmd");
		
		model.CommandProcessor processor = null;
		
		String view = null;
		if(cmd==null) {
			processor = new model.Member_null();
		}else if(cmd.equals("info")) {
			processor = new model.Member_info();
		}else if(cmd.equals("join")) {
			processor = new model.Member_join();
		}else if (cmd.equals("login")) {
			processor = new model.Member_login();
		}else if (cmd.equals("update")) {
			processor = new model.Member_update();
		}else if (cmd.equals("delete")) {
			processor = new model.Member_delete();
		}
		
		try {
			view = processor.process(req, resp);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd = req.getRequestDispatcher(view);
		
		rd.forward(req, resp);
	}
}
