package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AddressBookDAO;

public class Addressbook_login implements CommandProcessor {
	AddressBookDAO dao = new AddressBookDAO();
	
	String email, tel;
	
	public Addressbook_login(String email, String tel) {	
		this.email = email;
		this.tel = tel;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		if(dao.isAddress(email, tel)) {
			session.setAttribute("EMAIL", email);
		}
		
		return "/Addressbook_list.jsp";
	}
	
}
