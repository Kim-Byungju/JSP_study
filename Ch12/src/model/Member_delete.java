package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Member_delete implements CommandProcessor{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("delete", "회원삭제");
		return "/view/member_delete.jsp";
	}

}
