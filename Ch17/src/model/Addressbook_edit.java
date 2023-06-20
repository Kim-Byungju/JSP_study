package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AddressBookDAO;
import dao.AddressBookDTO;

public class Addressbook_edit implements CommandProcessor {
	
	AddressBookDAO dao = new AddressBookDAO();
	AddressBookDTO address = new AddressBookDTO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		
		AddressBookDTO addressbook = dao.getAddress(address.getId());
		
		return "/addressbook_edit_form";
	}

}
