package study.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import study.dao.MemberDao;
import study.vo.Member;

@WebServlet("/auth/login")
public class LogInServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	 
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/auth/LogInForm.jsp");
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			ServletContext sc = this.getServletContext();
			Connection conn =(Connection) sc.getAttribute("conn");
			
			MemberDao dao = new MemberDao();
			dao.setConnection(conn);
			
			Member member = dao.exist(request.getParameter("email"),request.getParameter("password"));
			
			if(member != null) {
				HttpSession session = request.getSession();
				session.setAttribute("member",member);
				
				//response.sendRedirect("http://localhost:8080/Ch19/member/list");
				response.sendRedirect("../member/list");
			
			}
			else {
				//로그인실패
				RequestDispatcher rd = request.getRequestDispatcher("/auth/LogInFail.jsp");
				rd.forward(request, response);
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
