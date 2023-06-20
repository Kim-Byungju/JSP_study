package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import java.sql.*;

public class MemberDAO {

		Connection conn = null;
		
		String url="jdbc:mysql://localhost:3306/memberDB";
		String user="root";
		String pw = "mysql";
		
		//연결메소드
		private Connection openConnection() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = (Connection)DriverManager.getConnection(url, user, pw);
			} catch(Exception e) {
				e.printStackTrace();
			}
			return conn;
		}
		//닫는 메소드
		private void closeConnection() {
			try {
				if(conn != null) {
					conn.close();
				}
			} catch(Exception e) {}
		}
		
		//회원가입여부 메소드  -- true/false
		public boolean isMember(String id, String pass) {
			PreparedStatement pstm = null;
			boolean res = false;
			String query = "select * from members where id= ? and pass=?";
			
			Connection conn = openConnection();
			try {
				pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, id);
				pstm.setString(2, pass);
				
				ResultSet rs = pstm.executeQuery();
				res = rs.next();
				
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return res;
		}
		
		//신규회원 등록 
		public int insertMember(MemberDTO member) {
			PreparedStatement pstm = null;
			String query = "insert into members values(?,?,?,?,?,?)";
			int res = 0;
			
			openConnection();
			try {
				pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, member.getId());
				pstm.setString(2, member.getPass());
				pstm.setString(3, member.getName());
				pstm.setString(4, member.getPhone());
				pstm.setString(5, member.getEmail());
				
				Timestamp ts = new Timestamp(System.currentTimeMillis());
				pstm.setTimestamp(6, ts);
				
				pstm.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return res;
		}
		
		// 전체조회  -- ArrayList
		public ArrayList<MemberDTO> getDBList(){
			
			ArrayList<MemberDTO> datas = new ArrayList<MemberDTO>();
			Statement stmt = null;
			ResultSet rs;
			String query = "select * from members order by id desc";
			
			openConnection();
			try {
				stmt = conn.createStatement();
				rs = stmt.executeQuery(query);
				
				while(rs.next()) {
					MemberDTO member = new MemberDTO();
					member.setId(rs.getString("id"));
					member.setPass(rs.getString("pass"));
					member.setName(rs.getString("name"));
					member.setPhone(rs.getString("phone"));
					member.setEmail(rs.getString("email"));
					member.setReg_date(rs.getTimestamp("reg_date"));
					
					datas.add(member);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return datas;
		}
		
		// 특정조회
		public MemberDTO getMember(String id) {
			MemberDTO member = new MemberDTO();
			PreparedStatement pstm = null;
			String query = "select * from members where id=?";
			
			openConnection();
			try {
				pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, id);
				
				ResultSet rs = pstm.executeQuery();
				if(rs.next()) {
					member.setId(rs.getString("id"));
					member.setPass(rs.getString("pass"));
					member.setName(rs.getString("name"));
					member.setPhone(rs.getString("phone"));
					member.setEmail(rs.getString("email"));
					member.setReg_date(rs.getTimestamp("reg_date"));
				}
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return member;
		}
		
		// 정보수정
		public int updateMember(MemberDTO member) {
			PreparedStatement pstm = null;
			String query = "update members set pass=?, name=?, phone=?, email=? where id=?";
			int res = 0;
			
			openConnection();
			try {
				
				pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, member.getPass());
				pstm.setString(2, member.getName());
				pstm.setString(3, member.getPhone());
				pstm.setString(4, member.getEmail());
				pstm.setString(5, member.getId());
				
				 res = pstm.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return res;
		}
		
		// 회원삭제
		public int removeMember(String id) {
			PreparedStatement pstm = null;
			String query = "delete from members where id=?";
			int res = 0;
			
			openConnection();
			
			try {
				pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, id);
				res = pstm.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return res;
		}
}
