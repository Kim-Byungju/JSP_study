package study.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

/*
	 - 커넥션으로 처리하지 않으면 ,, 예외발생시 롤백을 해야하는데 다은 요청작업까지 모두 롤백되어버리는 치명적인 오류가발생된다.
	 - 이러한 문제를 해결하기위해 connection을 준비하게 된다면 실행속도가 느려진다.
		해결방법으로..
		 >>각요청별로 별도의 커넥션을 사용하게하여 다른작업에 영향을 주지않도록 처리해야 한다.
		 >>동시다발적으로 접속하는 문제에 대한 효율적 대응을 구현 할수 있다.
*/

public class DBConnectionPool {
	
	final int POOL_SIZE = 10;
	String url;
	String username;
	String password;
	ArrayList<Connection> connList = new ArrayList<Connection>();
	
	public DBConnectionPool(String driver, String url, String username, String password) throws ClassNotFoundException, SQLException {
		this.url = url;
		this.username = username;
		this.password = password;
		
		Class.forName(driver);
		for(int i=0; i<POOL_SIZE; i++) {
			connList.add(
				DriverManager.getConnection(url,username,password)
			);
		}
	}
	//요청시 대여
	public Connection getConnection() throws SQLException {
		if(connList.size()>0) {
			Connection conn = connList.remove(0);    //get(0);
			
			if(conn.isValid(10)) { //10초이내 유효한 커넥션을 찾았다면
				return conn;
			} 
		}
		//없다면 생성해서 
		return DriverManager.getConnection(url, username, password);	
	}
	//반환 
	public void returnConnection(Connection conn) {
		connList.add(conn);
	}
	
	//커넥션 풀속에 모든 커넥션을 종료
	public void closeAll() {
		for(Connection conn: connList) {
			try {
				conn.close();
			} catch (Exception e) {}
		}
	}
}
