package study.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import study.dao.MySqlMemberDao;
import study.vo.Member;


public class MemberUpdateController implements Controller {
	
	MySqlMemberDao memberDao;
	public MemberUpdateController setMemberDao(MySqlMemberDao memberDao) {
		this.memberDao = memberDao;
		
		return this;
	}

	private static final long serialVersionUID = 1L;
	@Override
	public String execute(HashMap<String, Object> model) throws Exception {
		
		if(model.get("member") == null) {
			int no = (int)model.get("no");
			Member member = memberDao.selectOne(no);
			model.put("member",member);
			
			return "/member/MemberUpdateForm.jsp";
			
		} else {
			Member member = (Member)model.get("member");
			memberDao.update(member);
			return "redirect:list.do";  
		}
	}
}
