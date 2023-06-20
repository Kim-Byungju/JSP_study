package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Member_info implements CommandProcessor{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("info", "회원정보");
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url="jdbc:mysql://localhost:3306/myschool";
		String user="root";
		String pw = "mysql";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection(url, user, pw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from 학생;");
			while(rs.next()) {
				request.setAttribute("ID", "학생번호");
				request.setAttribute("DEPT", "소속학과");
				request.setAttribute("NAME", "학생이름");
				request.setAttribute("GRADE", "학년");
				request.setAttribute("GENDER", "성별");
				request.setAttribute("AGE", "나이");
				request.setAttribute("PHONE", "전화번호");
				request.setAttribute("ADDRESS", "주소");
				
			}
		} catch (Exception e) {
			e.getMessage();
		} finally {
			try{
				if(stmt != null){
					stmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch(Exception e){}
		}
		return "/view/member_info.jsp";
	}
	
	

}
