package study.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study.dao.MemberDao;

@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			ServletContext sc = req.getServletContext();
			MemberDao memberDao = (MemberDao)sc.getAttribute("memberDao");
			req.setAttribute("members", memberDao.selectList());
			req.setAttribute("viewUrl","/member/memberList.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
