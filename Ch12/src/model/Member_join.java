package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Member_join implements CommandProcessor{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//회원가입
		request.setAttribute("join", "회원가입");
		return "/view/member_join.jsp";
	}

}
