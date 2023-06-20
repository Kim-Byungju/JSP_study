package study.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import study.bind.DataBinding;
import study.dao.MySqlMemberDao;
import study.vo.Member;


public class MemberUpdateController implements Controller, DataBinding {
	
	private static final long serialVersionUID = 1L;
	
	MySqlMemberDao memberDao;
	public MemberUpdateController setMemberDao(MySqlMemberDao memberDao) {
		this.memberDao = memberDao;
		
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {"no",Integer.class,"member",study.vo.Member.class};
	}

	@Override
	public String execute(HashMap<String, Object> model) throws Exception {
		
		Member member = (Member)model.get("member");
		
		if(member.getEmail() == null) {
			int no = (int)model.get("no");
			member = memberDao.selectOne(no);
			model.put("member",member);
			
			return "/member/MemberUpdateForm.jsp";
			
		} else {
			memberDao.update(member);
			return "redirect:list.do";  
		}
	}
}
