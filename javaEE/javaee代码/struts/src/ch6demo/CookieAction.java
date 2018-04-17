package ch6demo;

import javax.servlet.http.*;
import org.apache.struts2.ServletActionContext;

public class CookieAction {
	private String username;
	
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username=username;
	}
	
	public String execute() throws Exception{	
		
		Cookie c=new Cookie("username",username);
		c.setMaxAge(60);
		ServletActionContext.getResponse().
			addCookie(c);
		return "success";
	}
}
