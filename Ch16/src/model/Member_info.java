package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dao.MemberDTO;

public class Member_info implements CommandProcessor {
	
	MemberDAO dao = new MemberDAO();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("ID");
		String pw = request.getParameter("PASS");
		
		MemberDTO member = dao.getMember(id);
		String pass = member.getPass();
		
		if(pw.equals(pass)) {
			request.setAttribute("member", member);
		}
		
		return null;
	}

}
