package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dao.MemberDTO;

public class Member_update implements CommandProcessor {
	
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
		
		int res = dao.updateMember(member);
		
		if(res>0) {
			request.setAttribute("UPDATE_RESULT", res);
			request.setAttribute("ID", member.getId());
			request.setAttribute("pass", member.getPass());
			
			return"/view/update.jsp";
			
		} else { 
			request.setAttribute("member", member); 
			return "/view/info.jsp"; 
		}
	}
}
