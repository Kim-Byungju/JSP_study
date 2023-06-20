package study.bind;

import java.lang.reflect.Method;
import java.util.Date;
import java.util.Set;

import javax.servlet.ServletRequest;

public class ServletRequestDataBinder {
											//request, 	study.vo.member, loginInfo		
  public static Object bind(ServletRequest request, Class<?> dataType, String dataName) throws Exception {

    if (isPrimitiveType(dataType)) { 
      return createValueObject(dataType, request.getParameter(dataName));
    }
    // 기본데이터타입이 아니라면
    Set<String> paramNames = request.getParameterMap().keySet();  //폼의parameter name만 가져와서 
    Object dataObject = dataType.newInstance(); //클래스 객체를 만들어 놓고    
    Method m = null;
    				//name, email, password
    for (String paramName : paramNames) {  
    		//Member.class [name, email, password]
      m = findSetter(dataType, paramName); 
      if (m != null) {
    // setName    member , 							String              ,    홍긹동 
    	  
        m.invoke(dataObject, createValueObject( m.getParameterTypes()[0], request.getParameter(paramName)));
      }
    }
    return dataObject; 
  }
  
  //기본 데이터 타입인지 판별
  private static boolean isPrimitiveType(Class<?> type) {      
	  
    if (type.getName().equals("int") || type == Integer.class ||
        type.getName().equals("long") || type == Long.class ||
        type.getName().equals("float") || type == Float.class ||
        type.getName().equals("double") || type == Double.class ||
        type.getName().equals("boolean") || type == Boolean.class ||
        type == Date.class || type == String.class) {
      return true;
    }
    return false;
    
  }
 //기본 데이터타입을 객체화 시킨다.
private static Object createValueObject(Class<?> type, String value) {
  
	  
    if (type.getName().equals("int") || type == Integer.class) {    
      return new Integer(value);
      
    } else if (type.getName().equals("float") || type == Float.class) {
      return new Float(value);
      
    } else if (type.getName().equals("double") || type == Double.class) {
      return new Double(value);
      
    } else if (type.getName().equals("long") || type == Long.class) {
      return new Long(value);
      
    } else if (type.getName().equals("boolean") || type == Boolean.class) {
      return new Boolean(value);
      
    } else if (type == Date.class) {
      return java.sql.Date.valueOf(value);
      
    } else {
      return value;
    }
  }
 // setter 메소드를 찾아서 반환
  private static Method findSetter(Class<?> type, String name) {
	 
    Method[] methods = type.getMethods(); //클래스 속에  메소드들을 가져온다.
    
    String propName = null; 
    
    for (Method m : methods) {
      if (!m.getName().startsWith("set")) continue; 
      														
      										// <Member 클래스>			파라미터폼
      propName = m.getName().substring(3); //Name, Email, Password	  name, email, password
      if (propName.toLowerCase().equals(name.toLowerCase())) { 
        return m; 
      }
    }
    return null;
  }
}
