package study.controller;


import java.util.HashMap;
import study.dao.MySqlMemberDao;
import study.vo.Member;


public class MemberAddController implements Controller{
	
	MySqlMemberDao memberDao;
	public MemberAddController setMemberDao(MySqlMemberDao memberDao) {
		this.memberDao = memberDao;
		
		return this;
	}

	private static final long serialVersionUID = 1L;
	@Override
	public String execute(HashMap<String, Object> model) throws Exception {
		if(model.get("member") == null) {
			return "/member/MemberForm.jsp";
		
		} else {
			Member member = (Member)model.get("member");
			memberDao.insert(member);
			
			if(member != null) {
				return "redirect:../member/list.do";
			} else {
				return "/member/memberList.jsp";  
			}
		}
	}
}
