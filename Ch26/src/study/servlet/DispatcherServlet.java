package study.servlet;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study.bind.DataBinding;
import study.bind.ServletRequestDataBinder;
import study.controller.Controller;
import study.vo.Member;

@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
	
  @Override
  protected void service( HttpServletRequest request, HttpServletResponse response)    throws ServletException, IOException {
   
	response.setContentType("text/html; charset=UTF-8");
	
    String servletPath = request.getServletPath();
    
    
    try {
    	
      ServletContext sc = this.getServletContext();
      HashMap<String, Object> model = new HashMap<String,Object>();
      model.put("session", request.getSession());
      
      	//  부모    Controller pageController = LogInController 객체;
      Controller pageController = (Controller)sc.getAttribute(servletPath);  
      
      if(pageController instanceof DataBinding) { 
    	  //DataBinding으로 업캐스팅
    	  prepareRequestData(request, model, (DataBinding)pageController);    	      	  
      }
      
      String viewUrl = pageController.execute(model);  
      
      for(String key:model.keySet()) {
    	  request.setAttribute(key,model.get(key));
      }
      
   
      if (viewUrl.startsWith("redirect:")) {
    	  
        response.sendRedirect(viewUrl.substring(9));
        return;
        
      } else {
        RequestDispatcher rd = request.getRequestDispatcher(viewUrl); //위에서 지웠으므로 RequestDispatcher 선언한다.
        rd.include(request, response);
      }
      
    } catch (Exception e) {
    	
      e.printStackTrace();
      request.setAttribute("error", e);
      RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
      rd.forward(request, response);
    }    
 }
 
  private void prepareRequestData(HttpServletRequest request, HashMap<String, Object> model, DataBinding dataBinding) throws Exception {
	
	    Object[] dataBinders = dataBinding.getDataBinders();   
	    		//"loginInfo", study.vo.Member.class
	    
	    String dataName = null; //"loginInfo"   
	    Class<?> dataType = null; //?이므로 모든 객체를 다 담을 수 있음, study.vo.Member.class 
	    Object dataObj = null;    
	    
	    for (int i = 0; i < dataBinders.length; i+=2) { 
	    	
	      dataName = (String)dataBinders[i];    
	      dataType = (Class<?>) dataBinders[i+1];    
	      
	      dataObj = ServletRequestDataBinder.bind(request, dataType, dataName);  
	      model.put(dataName, dataObj); 
	    }
  	}  
}
