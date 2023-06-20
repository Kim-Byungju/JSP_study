package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AddressBookDAO;
import dao.AddressBookDTO;

public class Addressbook_update implements CommandProcessor {
	
	AddressBookDAO dao = new AddressBookDAO();
	AddressBookDTO address = new AddressBookDTO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		address.setName(request.getParameter("name"));
		address.setEmail(request.getParameter("email"));
		address.setTel(request.getParameter("tel"));
		address.setBirth(request.getParameter("birth"));
		address.setComdept(request.getParameter("comdept"));
		address.setMemo(request.getParameter("memo"));
		address.setId(Integer.parseInt(request.getParameter("1")));
		
		dao.updateAddress(address);
		
		
		return "/addressbook_list";
	}

}
