package ch6demo;

import java.util.Map;
import com.opensymphony.xwork2.ActionContext;

public class SessionAction {
	public String execute() throws Exception{	
		ActionContext act = ActionContext.getContext();
		Map<String,Object> session=
				act.getSession();
		session.put("name", "Tom");
		return "success";
	}
}
