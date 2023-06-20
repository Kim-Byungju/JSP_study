package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dao.MemberDTO;

public class Member_delete implements CommandProcessor {
	
	MemberDAO dao = new MemberDAO();
	MemberDTO member = new MemberDTO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String session_id = (String)session.getAttribute("ID");
		
		String target_id =  request.getParameter("ID");
		request.setAttribute("member", dao.getMember(target_id));
		
		if((session_id.equals(target_id))) {
			
			if(dao.removeMember(target_id) != 0) {
				session.invalidate();
				return "/view/delete.jsp";
			}
			else {
				return "view/info.jsp";	
			}
		}else {
			return "view/index.jsp";
		}
	}
}
