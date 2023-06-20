package dao;

import java.util.ArrayList;

import java.sql.*;

public class AddressBookDAO {

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
		
		//회원가입여부 메소드  -- true/false  -- 여기서는 안씀
		public boolean isAddress(String email, String tel) {
			PreparedStatement pstm = null;
			boolean res = false;
			String query = "select * from book where email= ? and tel=?";
			
			Connection conn = openConnection();
			try {
				pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, email);
				pstm.setString(2, tel);
				
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
		public int insertAddress(AddressBookDTO address) {
			PreparedStatement pstm = null;
			String query = "insert into book(name, email, birth, tel, comdept, memo) values(?,?,?,?,?,?)";
			int res = 0;
			
			openConnection();
			try {
				pstm = (PreparedStatement)conn.prepareStatement(query);
		
				pstm.setString(1, address.getName());
				pstm.setString(2, address.getEmail());
				pstm.setString(3, address.getBirth());
				pstm.setString(4, address.getTel());				
				pstm.setString(5, address.getComdept());
				pstm.setString(6, address.getMemo());
				
			/*
			 * Date ts = new Date(System.currentTimeMillis()); pstm.setDate(5, ts);
			 */
				res= pstm.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return res;
		}
		
		// 전체조회  -- ArrayList
		public ArrayList<AddressBookDTO> getDBList(){
			
			ArrayList<AddressBookDTO> datas = new ArrayList<AddressBookDTO>();
			Statement stmt = null;
			ResultSet rs;
			String query = "select * from book order by id desc";
			
			openConnection();
			try {
				stmt = conn.createStatement();
				rs = stmt.executeQuery(query);
				
				while(rs.next()) {
					AddressBookDTO address = new AddressBookDTO();
					address.setId(rs.getInt("id"));
					address.setName(rs.getString("name"));
					address.setEmail(rs.getString("email"));
					address.setTel(rs.getString("tel"));
					address.setBirth(rs.getString("birth"));
					address.setComdept(rs.getString("comdept"));
					address.setMemo(rs.getString("memo"));
					
					datas.add(address);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return datas;
		}
		
		// 특정조회
		public AddressBookDTO getAddress(int id) {
			AddressBookDTO address = new AddressBookDTO();
			PreparedStatement pstm = null;
			String query = "select * from book where id=?";
			
			openConnection();
			try {
				pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setInt(1, id);
				
				ResultSet rs = pstm.executeQuery();
				if(rs.next()) {
					address.setId(rs.getInt("id"));
					address.setName(rs.getString("name"));
					address.setEmail(rs.getString("email"));
					address.setTel(rs.getString("tel"));
					address.setBirth(rs.getString("birth"));
					address.setComdept(rs.getString("comdept"));
					address.setMemo(rs.getString("memo"));
				}
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return address;
		}
		
		// 정보수정
		public int updateAddress(AddressBookDTO address) {
			PreparedStatement pstm = null;
			String query = "update book set name=?, email=?, tel=?, birth=?, comdept=?, memo=? where id=?";
			int res = 0;
			
			openConnection();
			try {
				
				pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, address.getName());
				pstm.setString(2, address.getEmail());
				pstm.setString(3, address.getTel());				
				pstm.setString(4, address.getBirth());
				pstm.setString(5, address.getComdept());
				pstm.setString(6, address.getMemo());
				pstm.setInt(7, address.getId());
				
				 res = pstm.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return res;
		}
		
		// 주소삭제
		public int removeAddress(int id) {
			PreparedStatement pstm = null;
			String query = "delete from book where id=?";
			int res = 0;
			
			openConnection();
			
			try {
				pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setInt(1, id);
				res = pstm.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeConnection();
			}
			return res;
		}
}
