package myservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet6")
public class Servelet6_calculator extends HttpServlet {
	//두수를 받아서 덧셈, 뺼셈, 곱셉, 나눗셈을 출력해주는 서블릿 구현
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body style='background-color:#ff00ff'>");
		out.println("<h2>사칙연산</h2>");
		out.printf("<p>덧 셈 : %d + %d = %d</p>",num1,num2,(num1+num2));
		out.printf("<p>뺼 셈 : %d - %d = %d</p>",num1,num2,(num1-num2));
		out.printf("<p>곱 셈 : %d * %d = %d</p>",num1,num2,(num1*num2));
		out.printf("<p>나눗셈 : %d / %d = %d</p>",num1,num2,(num1/num2));
		out.println("</body></html>");
		out.close();	
	}
}
