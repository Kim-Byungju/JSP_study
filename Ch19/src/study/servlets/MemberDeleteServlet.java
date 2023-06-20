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

import study.dao.MemberDao;

@WebServlet("/member/delete")
public class MemberDeleteServlet extends HttpServlet{
 
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	 try {	
		ServletContext sc = this.getServletContext();
		Connection conn = (Connection)sc.getAttribute("conn");
		
		MemberDao dao = new MemberDao();
		dao.setConnection(conn);
		
		dao.delete(Integer.parseInt(req.getParameter("no")));
		resp.sendRedirect("list");		
		
	 }catch (Exception e) {
		 e.printStackTrace();
			req.setAttribute("error", e);
			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
			rd.forward(req, resp);
	}	
  }
}
