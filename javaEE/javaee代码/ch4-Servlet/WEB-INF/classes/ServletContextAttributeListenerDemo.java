package ch4.listen;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
public class ServletContextAttributeListenerDemo 
	implements ServletContextAttributeListener{
	public void attributeAdded(
		ServletContextAttributeEvent event){
		System.out.println("***�������ԣ����ƣ�"
			+event.getName()
			+"���������ݣ�"+event.getValue());
	}
	public void attributeRemoved(
		ServletContextAttributeEvent event){
		System.out.println("***ɾ�����ԣ����ƣ�"+event.getName()
			+"���������ݣ�"+event.getValue());
	}
	public void attributeReplaced(
		ServletContextAttributeEvent event){
		System.out.println("***�滻���ԣ����ƣ�"+event.getName()
			+"���������ݣ�"+event.getValue());
	}
}