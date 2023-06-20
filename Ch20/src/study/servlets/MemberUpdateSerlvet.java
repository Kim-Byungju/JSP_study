package study.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import study.dao.MemberDao;
import study.vo.Member;

@WebServlet("/member/update")
public class MemberUpdateSerlvet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			ServletContext sc = this.getServletContext();
			MemberDao memberDao = (MemberDao)sc.getAttribute("memberDao");
			
			Member member = memberDao.selectOne(Integer.parseInt(req.getParameter("no")));
			req.setAttribute("member",member);
			
			RequestDispatcher rd = req.getRequestDispatcher("/member/MemberUpdateForm.jsp");
			rd.forward(req, resp);
			
		}catch (Exception e) {
			 e.printStackTrace();
				req.setAttribute("error", e);
				RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
				rd.forward(req, resp);
		}
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			ServletContext sc = this.getServletContext();
			MemberDao memberDao = (MemberDao)sc.getAttribute("memberDao");
			
			Member member = new Member();
			member.setNo(Integer.parseInt(req.getParameter("no")));
			member.setName(req.getParameter("name"));
			member.setEmail(req.getParameter("email"));
			
			memberDao.update(member);
			
			resp.sendRedirect("list");
			
		}catch (Exception e) {
			 e.printStackTrace();
				req.setAttribute("error", e);
				RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
				rd.forward(req, resp);
		}
	}
}
