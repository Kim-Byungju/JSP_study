package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CommandProcessor;

@WebServlet("/MemberController")
public class MemberController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String cmd = request.getParameter("cmd");
		
		CommandProcessor processor = null;
		String view = null;
		
		if(cmd.equals("member_login")) {
			String id =  request.getParameter("id");
			String pw =  request.getParameter("pass");
			processor = new model.Member_login(id, pw);  //  부모 = 자식  (업캐스팅)
			
		} else if(cmd.equals("member_update")) {
			processor = new model.Member_update();
			
		} else if(cmd.equals("member_list")) {
			processor = new model.Member_list();
			
		} else if(cmd.equals("member_delete")) {
			processor = new model.Member_delete();
			
		} else if(cmd.equals("member_register")) {
			processor = new model.Member_register();
			
		} else if(cmd.equals("member_info")) {  //특정회원 보기
			processor = new model.Member_info();  
			
		} else if(cmd.equals("member_logout")) {  
			processor = new model.Member_logout();  
		}
		view = processor.process(request, response);
		//view페이지로 이동처리
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
