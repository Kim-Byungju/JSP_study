package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class Member_logout implements CommandProcessor {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("ID");
		
		if(id != null) {
			session.invalidate();
		}
		return "/view/logout.jsp";
	} 
}
