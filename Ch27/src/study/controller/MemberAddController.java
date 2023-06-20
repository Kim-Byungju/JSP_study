package study.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import study.bind.DataBinding;
import study.dao.MySqlMemberDao;
import study.vo.Member;


public class MemberAddController implements Controller, DataBinding{
	
	MySqlMemberDao memberDao;
	public MemberAddController setMemberDao(MySqlMemberDao memberDao) {
		this.memberDao = memberDao;
		
		return this;
	}

	private static final long serialVersionUID = 1L;
	@Override
	public Object[] getDataBinders() {
		
		return new Object[] {"member", study.vo.Member.class};
	}
	
	@Override
	public String execute(HashMap<String, Object> model) throws Exception {
	
		Member member = (Member)model.get("member");
		
		if(member.getEmail() == null) {
			return "/member/MemberForm.jsp";
		//회원등록
		} else {
			memberDao.insert(member);
		}
		return "redirect:list.do";  
	}
}
