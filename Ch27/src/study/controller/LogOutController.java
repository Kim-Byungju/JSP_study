package study.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import study.dao.MySqlMemberDao;


public class LogOutController implements Controller {

	MySqlMemberDao memberDao;
	public LogOutController setMemberDao(MySqlMemberDao memberDao) {
		this.memberDao = memberDao;
		
		return this;
	}
	
	
	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute(HashMap<String, Object> model) {
		
		HttpSession session = (HttpSession)model.get("session");
		session.invalidate();
		

		return "/auth/LogInForm.jsp";
	}
}
