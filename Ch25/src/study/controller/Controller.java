package study.controller;

import java.util.HashMap;

public interface Controller {
	
	public String execute(HashMap<String,Object> model) throws Exception;
}
