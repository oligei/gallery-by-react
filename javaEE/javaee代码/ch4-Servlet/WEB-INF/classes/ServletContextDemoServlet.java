//��servlet��ȡ��ServletContext����application��
package ch4.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class ServletContextDemoServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		//HttpServlet�ĸ����getServletContext�����ɻ��application����
		ServletContext app = 
			super.getServletContext() ;
		System.out.println("��ʵ·����" + 
			app.getRealPath("/")) ;
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}