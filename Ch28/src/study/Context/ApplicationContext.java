package study.Context;

import java.io.FileReader;
import java.util.Collection;
import java.util.HashMap;
import java.util.Properties;
import java.util.Set;
import javax.naming.InitialContext;
import org.reflections.Reflections;
import study.annotation.Component;
import java.lang.reflect.Method;

public class ApplicationContext {
	
	//객체를 생성한후 보관할 저장소  [(키,밸류),(키,밸류)..]
	HashMap<String, Object> objTable = new HashMap<String, Object>();
	
	public Object getBean(String key){
	
	//객체반환
	return objTable.get(key);
	}
	//생성자
	public ApplicationContext(String propertiesPath) throws Exception {
		
		Properties props = new Properties(); //이름과 값 형태의 파일을 다룰 떄 사용하는 클래스
		props.load(new FileReader(propertiesPath));
		
		prepareObjects(props);
		prepareAnnotationObjects();
		injectDependency();
	}
	private void prepareAnnotationObjects() throws Exception {
		Reflections reflector = new Reflections("");
		Set<Class<?>> list = reflector.getTypesAnnotatedWith(Component.class);
		
		String key = null;
		for(Class<?> clazz: list) {
			key = clazz.getAnnotation(Component.class).value();
			objTable.put(key, clazz.newInstance());
		}
	}
	
	private void prepareObjects(Properties props) throws Exception {
		String key = null;
		String value = null;
		InitialContext ctx = new InitialContext();
		
		 for(Object item : props.keySet()) {
			 
			 key = (String)item;
			 value = props.getProperty(key);
			 
			 //1)jndi~
			 if(key.startsWith("jndi.")) {
				 objTable.put(key, ctx.lookup(value));
			 }
			 //2)일반객체
			 else {
				objTable.put(key, Class.forName(value).newInstance()); 
			} 
		}
	}
	private void injectDependency() throws Exception {
		for(String key: objTable.keySet()) {
			if(!key.startsWith("jndi")) {
				
				callSetter(objTable.get(key));
			}
		}
	}
	private void callSetter(Object obj) throws Exception {
		
		Object dependency = null;
		Method[] ms = obj.getClass().getMethods();
		for(Method m :ms) {
			if(m.getName().startsWith("set")) {
			 dependency = findObjectByType(m.getParameterTypes()[0]);
			 
			 if(dependency != null) {
				 m.invoke(obj, dependency);
			 }
		   }
		}
	 }
	private Object findObjectByType(Class<?> type) {
		
		Collection<Object> objs = objTable.values();
		for(Object obj: objs) {
			if(type.isInstance(obj)) {
				return obj;
			}
		}
		return null;
	}
}
