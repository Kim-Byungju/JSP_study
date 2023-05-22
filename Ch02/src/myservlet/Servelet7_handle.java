package myservlet;
	//get, post로든 handle()을 호출해서 실행,
//user_id, user_password를 받아서

	//..맞다면 "로그인" 되었습니다.
	//..틀리면 "3번의 기회를 준다."

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/handle")
public class Servelet7_handle extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandle(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandle(req, resp);
		
	}
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_address = request.getParameter("user_address");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String data = "<html>";
		data += "<body>";
		data += "아이디 : " +user_id;
		data += "<br>";
		data += "비밀번호 : " +user_pw;
		data += "<br>";
		data += "주소 : " +user_address;
		data += "</body>";
		data += "</html>";
		
		out.print(data);
		out.close();

	}
}
