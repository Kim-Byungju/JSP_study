package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CommandProcessor;

@WebServlet("/CommandProcessor2")
public class CommandProcessor2 extends HttpServlet {
	

	private static final long serialVersionUID = 1L;
	
	HashMap<String,Object> commandProcessorMap = new HashMap();


	@Override
	public void init() throws ServletException {
		FileInputStream fis = null;
		Properties prop = new Properties();  //설정된값 관리 클래스?
		try {
			fis = new FileInputStream("C:\\Users\\admin\\Desktop\\KBJ\\jsp\\Ch12\\WebContent\\WEB-INF\\command.prop");
			prop.load(fis);
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(fis != null) {
				try {
					fis.close();
				} catch(Exception e) {	}
		}
			Iterator iter =  prop.keySet().iterator();
			
			while(iter.hasNext()) {
				String cmd =  (String)iter.next();
				String processorClassName = prop.getProperty(cmd);
				
				try {
					Class prossorClass =  Class.forName(processorClassName);
					Object processorInstance =  prossorClass.newInstance();
					commandProcessorMap.put(cmd,processorInstance);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String cmd = req.getParameter("cmd");
		
		//업캐스팅
		CommandProcessor processor = (CommandProcessor)commandProcessorMap.get(cmd);
		String view = null;
		
		try {
			view = processor.process(req,resp); //호출 -동적바인딩
			
		} catch(ClassNotFoundException|SQLException e) {
			e.printStackTrace();
		} 
		
		RequestDispatcher rd = req.getRequestDispatcher(view);
		rd.forward(req, resp);
	}
}
