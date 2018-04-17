package ch6demo;

public class LoginAction {
	private String account;
	public LoginAction(){
		System.out.println("constructing action!");
	}
	public String getAccount(){
		return account;
	}
	public void setAccount(String account){
		System.out.println("setting account!");
		this.account=account;
	}
	private String password;
	public String getPassword(){
		
		return password;
	}
	public void setPassword(String password){
		System.out.println("setting password!");
		this.password=password;
	}
	public String execute() throws Exception{	
		
		if(account.equals(password)){
			return "success";
		}
		return "fail";
	}
}
