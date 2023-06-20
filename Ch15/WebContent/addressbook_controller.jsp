<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, addressbook.AddressBookDTO, addressbook.AddressBookDAO"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="addressbook.AddressBookDAO" scope="page"/>
	<jsp:useBean id="address" class="addressbook.AddressBookDTO"/>
	<jsp:setProperty property="*" name="address"/> 
	
	<%
		//AddressBookDAO dao = new AddressBookDAO();
		//AddressBookDTO address = new AddressBookDTO(); 
	
		String action  =  request.getParameter("action");
		
		if(action.equals("list")){
			ArrayList<AddressBookDTO>datas = dao.getDBList();
			request.setAttribute("DATAS", datas);
			RequestDispatcher dispatcher =  request.getRequestDispatcher("addressbook_list.jsp");
			dispatcher.forward(request, response);
			
		} else if(action.equals("insert")){
			if(dao.insertAddress(address)>0){
				response.sendRedirect("addressbook_controller.jsp?action=list");
			} else {
				throw new Exception("DB내용수정 오류");
			}
			
		} else if(action.equals("edit")){
			AddressBookDTO addressbook = (dao.getAddress(address.getId()));
			String pw = request.getParameter("pw"); 
			
			if(!pw.equals("1234")){
				out.print("<script>alert('비밀번호가 틀렸습니다.');</script>");
			} else{
				request.setAttribute("ab", addressbook);
				pageContext.forward("addressbook_edit_form.jsp");
			}
			
		} else if(action.equals("update")){
			if(dao.updateAddress(address)>0){
				response.sendRedirect("addressbook_controller.jsp?action=list");
			} else {
				throw new Exception("DB내용수정 오류");
			}
			
		} else if(action.equals("delete")){
			if(dao.removeAddress(address.getId())>0){
				response.sendRedirect("addressbook_controller.jsp?action=list");
			} else {
				throw new Exception("DB내용수정 오류");
			}
		} 
	%>
</body>
</html>