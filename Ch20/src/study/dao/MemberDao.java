package study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import study.vo.Member;

public class MemberDao {

  Member member = new Member();

  Connection connection;
  public void setConnection(Connection connection) {  
    this.connection = connection;
  }

  //전체 리스트
  public List<Member> selectList() throws Exception {
    Statement stmt = null;
    ResultSet rs = null;

    try {
      stmt = connection.createStatement();
      rs = stmt.executeQuery("SELECT MNO,MNAME,EMAIL,CRE_DATE FROM MEMBERS ORDER BY MNO DESC");

      ArrayList<Member> members = new ArrayList<Member>();

      while(rs.next()) {
    	Member m = new Member(); 

    	 m.setNo(rs.getInt("MNO"));
    	 m.setName(rs.getString("MNAME"));
    	 m.setEmail(rs.getString("EMAIL"));
    	 m.setCreatedDate(rs.getDate("CRE_DATE"));
    	  
    	 members.add(m);
      }

      return members;

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (rs != null) rs.close();} catch(Exception e) {}
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
    }
  }

  //등록
  public int insert(Member member) throws Exception  {
    PreparedStatement stmt = null;

    try {
      stmt = connection.prepareStatement("INSERT INTO MEMBERS(EMAIL,PWD,MNAME,CRE_DATE,MOD_DATE) VALUES (?,?,?,NOW(),NOW())");
      stmt.setString(1, member.getEmail());
      stmt.setString(2, member.getPassword());
      stmt.setString(3, member.getName());
      return stmt.executeUpdate();

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
    }
  }

  //삭제
  public int delete(int no) throws Exception {  
    Statement stmt = null;

    try {
      stmt = connection.createStatement();
      return stmt.executeUpdate("DELETE FROM MEMBERS WHERE MNO=" + no);

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
    }
  }

  //검색
  public Member selectOne(int no) throws Exception { 
    Statement stmt = null;
    ResultSet rs = null;
    try {
      stmt = connection.createStatement();
      rs = stmt.executeQuery("SELECT MNO,EMAIL,MNAME,CRE_DATE FROM MEMBERS WHERE MNO=" + no);    
      
      
      if (rs.next()) {
    	  member = new Member();
          member.setNo(rs.getInt("MNO"));
          member.setEmail(rs.getString("EMAIL"));
          member.setName(rs.getString("MNAME"));
          member.setCreatedDate(rs.getDate("CRE_DATE"));
          
        return member ;

      } else {
        throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
      }

    } catch (Exception e) {
      throw e;
    } finally {
      try {if (rs != null) rs.close();} catch(Exception e) {}
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
    }
  }

  //수정
  public int update(Member member) throws Exception { 
    PreparedStatement stmt = null;
    try {
      stmt = connection.prepareStatement("UPDATE MEMBERS SET EMAIL=?,MNAME=?,MOD_DATE=now() WHERE MNO=?");
      stmt.setString(1, member.getEmail());
      stmt.setString(2, member.getName());
      stmt.setInt(3, member.getNo());
      
      return stmt.executeUpdate();

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
    }
  }
  
  
  //회원확인
  public Member exist(String email, String password) throws Exception {
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
      stmt = connection.prepareStatement("SELECT MNAME,EMAIL FROM MEMBERS WHERE EMAIL=? AND PWD=?");
      stmt.setString(1, email);
      stmt.setString(2, password);
      rs = stmt.executeQuery();
      if (rs.next()) {
    	  
    	  member = new Member();
    	  member.setName(rs.getString("MNAME"));
          member.setEmail(rs.getString("EMAIL"));
        
      } else {
        return null;
      }
    } catch (Exception e) {
       e.printStackTrace();

    } finally {
      try {if (rs != null) rs.close();} catch (Exception e) {}
      try {if (stmt != null) stmt.close();} catch (Exception e) {}
    }
	return member;
  }

}
