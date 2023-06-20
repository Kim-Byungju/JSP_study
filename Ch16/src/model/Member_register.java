package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dao.MemberDTO;

public class Member_register implements CommandProcessor {

	MemberDAO dao = new MemberDAO();
	MemberDTO member = new MemberDTO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		member.setId(request.getParameter("id"));
		member.setPass(request.getParameter("pass"));
		member.setName(request.getParameter("name"));
		member.setPhone(request.getParameter("phone"));
		member.setEmail(request.getParameter("email"));
		
		dao.insertMember(member);
		
		if(session.getAttribute("ID") == null) {
			return "/view/index.jsp"; 
		} else {
			return "/view/memberList.jsp";
		}
	}
}