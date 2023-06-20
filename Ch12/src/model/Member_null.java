package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Member_null implements CommandProcessor {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		//null로 입장시 로직처리
		request.setAttribute("null", "로직처리가 없습니다. 단순방문");
		
		return "/view/member_null.jsp";
	}
}
