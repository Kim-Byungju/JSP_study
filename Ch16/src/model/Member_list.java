package model;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dao.MemberDTO;

public class Member_list implements CommandProcessor {
	
	MemberDAO dao = new MemberDAO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<MemberDTO> members =  dao.getDBList();
		request.setAttribute("list", members);
		
		return "/view/memberList.jsp";
	}
	
}
