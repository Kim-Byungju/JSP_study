package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Member_update implements CommandProcessor{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//수정요청 처리 로직
		request.setAttribute("update", "회원수정정보");
		
		return "/view/member_update.jsp";
	}

}
