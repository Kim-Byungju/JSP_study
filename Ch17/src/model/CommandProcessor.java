package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandProcessor {
	
	public String process(HttpServletRequest request, HttpServletResponse response);
}
