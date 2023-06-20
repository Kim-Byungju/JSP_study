package study.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study.controller.Controller;
import study.vo.Member;

//컨트롤러의 역할
@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		resp.setContentType("text/html; charset=UTF-8");
		
		ServletContext sc = req.getServletContext();
		String servletPath =  req.getServletPath(); //  /member/add
		
		HashMap<String, Object> model = new HashMap<String, Object>();
		model.put("memberDao", sc.getAttribute("memberDao"));
		model.put("session", req.getSession());
		
		Controller pageController = (Controller)sc.getAttribute(servletPath);
		try {
			
			if("/member/list.do".equals(servletPath)) {
				
			}else if("/auth/login.do".equals(servletPath)) {
				if(req.getParameter("email")!=null) {
					model.put("loginInfo", new Member()
							.setEmail(req.getParameter("email"))
							.setPassword(req.getParameter("password")));
				}
			} else if ("/member/add.do".equals(servletPath)) {
			
				if(req.getParameter("email")!=null) {
					model.put("member", new Member()
							.setEmail(req.getParameter("email"))
							.setPassword(req.getParameter("password"))
							.setName(req.getParameter("name")));
				}
			} else if ("/member/update.do".equals(servletPath)) {
				//MemberUpdateForm.jsp: 회원정보를 수정하고 온거라면
				if(req.getParameter("email")!=null) {
					model.put("member", new Member()
							.setNo(Integer.parseInt(req.getParameter("no")))
							.setEmail(req.getParameter("email"))
							.setName(req.getParameter("name")));
				//MemberList.jsp : list에서 no만 클릭하고온거라면
				} else {
					model.put("no",new Integer(req.getParameter("no")));
				}
				
			} else if ("/member/delete.do".equals(servletPath)) {
				model.put("no", new Integer(req.getParameter("no")));
			} 
			
			//****************************
			
			//*****실행
			String viewUrl = pageController.execute(model);  
			
			for(String key :model.keySet()) {
				req.setAttribute(key, model.get(key));
			}
			
			if(viewUrl.startsWith("redirect")) {
				resp.sendRedirect(viewUrl.substring(9));
				return;
			} else {
				RequestDispatcher rd = req.getRequestDispatcher(viewUrl);
				rd.include(req, resp);
			}
			
		} catch (Exception e) {
			req.setAttribute("error", e);
			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
			rd.forward(req, resp);
		}
	}
}
