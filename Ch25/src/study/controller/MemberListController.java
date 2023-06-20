package study.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study.dao.MySqlMemberDao;


public class MemberListController implements Controller {
	
	MySqlMemberDao memberDao;
	public MemberListController setMemberDao(MySqlMemberDao memberDao) {
		this.memberDao = memberDao;
		
		return this;
	}

	private static final long serialVersionUID = 1L;
	@Override
	public String execute(HashMap<String, Object> model) throws Exception {
		
		model.put("members",memberDao.selectList());
		
		return "/member/memberList.jsp";
	}
}
