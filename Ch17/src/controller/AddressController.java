package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CommandProcessor;

@WebServlet("/AddressController")
public class AddressController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String cmd = request.getParameter("cmd");
		
		CommandProcessor processor = null;
		String view = null;
		
		if(cmd.equals("addressbook_list")) {
			processor = new model.Addressbook_list();
			
		} else if(cmd.equals("addressbook_insert")) {
			processor = new model.Addressbook_insert();
			
		} else if(cmd.equals("addressbook_update")) {
			processor = new model.Addressbook_update();
			
		} else if(cmd.equals("addressbook_edit")) {
			processor = new model.Addressbook_edit();
			
		} else if(cmd.equals("addressbook_login")) {
			String email = (String)request.getAttribute("email");
			String tel = (String)request.getAttribute("tel");
			processor = new model.Addressbook_login(email, tel);
		}
		view = processor.process(request, response);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
