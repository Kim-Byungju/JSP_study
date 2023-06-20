package study.controller;

import java.util.HashMap;

import study.dao.MySqlMemberDao;
import study.vo.Member;

public class MemberDeleteController implements Controller {
	
	MySqlMemberDao memberDao;
	public MemberDeleteController setMemberDao(MySqlMemberDao memberDao) {
		this.memberDao = memberDao;
		
		return this;
	}
	
	@Override
	public String execute(HashMap<String, Object> model) throws Exception {
		if(model.get("no") == null) {
			int no = (int)model.get("no");
			Member member = memberDao.selectOne(no);
			model.put("member",member);
			
			return "/member/MemberUpdateForm.jsp";
		} else {
			int del = (int)model.get("no");
			memberDao.delete(del);
			return "redirect:list.do"; 	
		}
	}
}
