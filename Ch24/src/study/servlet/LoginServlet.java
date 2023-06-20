package study.servlet;

import java.io.IOException;

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
public class LoginServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("viewUrl","/auth/LogInForm.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			ServletContext sc = this.getServletContext();
		
			MemberDao memberDao = (MemberDao)sc.getAttribute("memberDao");
			
			Member member = memberDao.exist(req.getParameter("email"), req.getParameter("password"));
			
			if(member != null) {
				HttpSession session = req.getSession();
				session.setAttribute("member", member);
				req.setAttribute("viewUrl", "redirect:../member/list.do");
			} else {
				req.setAttribute("viewUrl", "/auth/LogInFail.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
