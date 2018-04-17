package ch4.listen;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
public class HttpSessionListenerDemo implements HttpSessionListener{
	public void sessionCreated(HttpSessionEvent event){
		System.out.println("***session´´½¨£¬session id="
			+event.getSession().getId());
	}
	public void sessionDestroyed(HttpSessionEvent event){
		System.out.println("***sessionÏú»Ù£¬session id="
			+event.getSession().getId());
	}
}