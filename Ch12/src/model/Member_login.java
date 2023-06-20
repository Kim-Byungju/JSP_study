package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Member_login implements CommandProcessor{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//로그인 로직처리
		request.setAttribute("login", "회원로그인");
		return "/view/member_login.jsp";
	}

}
