package ch4.listen;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
public class HttpSessionListenerDemo implements HttpSessionListener{
	public void sessionCreated(HttpSessionEvent event){
		System.out.println("***session������session id="
			+event.getSession().getId());
	}
	public void sessionDestroyed(HttpSessionEvent event){
		System.out.println("***session���٣�session id="
			+event.getSession().getId());
	}
}