package model;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AddressBookDAO;
import dao.AddressBookDTO;

public class Addressbook_list implements CommandProcessor {
	
	AddressBookDAO dao = new AddressBookDAO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<AddressBookDTO> address = dao.getDBList();
		
		request.setAttribute("list", address);
		
		return "/addressbook_list.jsp";
	}

}
