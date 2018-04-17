package ch4.listen;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
public class ServletContextAttributeListenerDemo 
	implements ServletContextAttributeListener{
	public void attributeAdded(
		ServletContextAttributeEvent event){
		System.out.println("***增加属性，名称："
			+event.getName()
			+"，属性内容："+event.getValue());
	}
	public void attributeRemoved(
		ServletContextAttributeEvent event){
		System.out.println("***删除属性，名称："+event.getName()
			+"，属性内容："+event.getValue());
	}
	public void attributeReplaced(
		ServletContextAttributeEvent event){
		System.out.println("***替换属性，名称："+event.getName()
			+"，属性内容："+event.getValue());
	}
}