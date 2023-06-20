package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dao.MemberDTO;

public class Member_login implements CommandProcessor {
	MemberDAO dao = new MemberDAO();
	
	String id, pw;
	
	public Member_login(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//로그인처리를 수행하고....
		HttpSession session = request.getSession();
		
		if(dao.isMember(id, pw)) {
			session.setAttribute("ID", id);
			MemberDTO member = dao.getMember(id);
			request.setAttribute("member", member);
		}
		//넘어갈 view 페이지주소 리턴
		return "/view/info.jsp";
	}
}
