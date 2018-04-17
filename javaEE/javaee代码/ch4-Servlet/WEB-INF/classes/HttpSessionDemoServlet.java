//��servlet��ȡ��session����
package ch4.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class HttpSessionDemoServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,
		HttpServletResponse resp) 
		throws ServletException,IOException{
		//��������ȡ��sessioon����
		HttpSession ses = req.getSession() ;		
		System.out.println("SESSION ID --> " 
			+ ses.getId()) ;
		ses.setAttribute("username","��÷") ;	 // ����session����
		System.out.println("username�������ݣ�" 
			+ ses.getAttribute("username"));
	}
	public void doPost(HttpServletRequest req,
		HttpServletResponse resp) 
		throws ServletException,IOException{
		
		this.doGet(req,resp) ;
	}
}
/*
	<servlet>
		<servlet-name>sessiondemo</servlet-name>
		<servlet-class>
			ch7.demo.HttpSessionDemoServlet
		</servlet-class>
	</servlet>
	<servlet-mapping>
		<servlet-name>sessiondemo</servlet-name>
		<url-pattern>/httpSessionDemoServlet</url-pattern>
	</servlet-mapping>
*/