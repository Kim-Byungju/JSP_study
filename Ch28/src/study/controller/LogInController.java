package study.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import study.annotation.Component;
import study.bind.DataBinding;
import study.dao.MySqlMemberDao;
import study.vo.Member;

@Component("/auth/login.do") //value 생략가능 
public class LogInController implements Controller, DataBinding {
	
	private static final long serialVersionUID = 1L;
	
	MySqlMemberDao memberDao;
	public LogInController setMemberDao(MySqlMemberDao memberDao) {
		this.memberDao = memberDao;
		
		return this;
	}
	@Override
	public Object[] getDataBinders() {
						//데이터이름,  데이터타입
		Object[] obj = {"loginInfo",study.vo.Member.class};
		
		return obj;
			// ["loginInfo", member]
	}
	@Override
	public String execute(HashMap<String, Object> model) throws Exception {
	
		//로그인할때 입력한 멤버
		Member loginInfo = (Member)model.get("loginInfo");
		
		//요청이 들어오면
		if(loginInfo.getEmail() == null) {
			return "/auth/LogInForm.jsp";
		} else {
			Member member = memberDao.exist(loginInfo.getEmail(), loginInfo.getPassword());
			if(member != null) {
				HttpSession session = (HttpSession)model.get("session");
				session.setAttribute("member", member);
				
				return "redirect:../member/list.do";
			} else {
				return "/auth/LogInFail.jsp";
			}
		}
	}
}
