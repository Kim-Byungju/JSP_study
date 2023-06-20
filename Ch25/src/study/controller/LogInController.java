package study.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import study.dao.MySqlMemberDao;
import study.vo.Member;


public class LogInController implements Controller {
	
	private static final long serialVersionUID = 1L;
	
	MySqlMemberDao memberDao;
	public LogInController setMemberDao(MySqlMemberDao memberDao) {
		this.memberDao = memberDao;
		
		return this;
	}
	
	@Override
	public String execute(HashMap<String, Object> model) throws Exception {
		
		//doget
		if(model.get("loginInfo") == null) {
			return "/auth/LogInForm.jsp";
		//dopost
		} else {
			Member loginInfo = (Member)model.get("loginInfo");
			Member member = memberDao.exist(loginInfo.getEmail(), loginInfo.getPassword());
			
			if(member != null) {
				HttpSession session = (HttpSession)model.get("session");
				session.setAttribute("member", member);
				return "redirect:../member/list.do";
			} else {
				return "/auth/LogInFail.jsp";
			}
		}
	}
}
