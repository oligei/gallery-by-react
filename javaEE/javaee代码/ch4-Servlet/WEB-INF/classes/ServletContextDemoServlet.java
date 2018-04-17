//从servlet中取得ServletContext对象（application）
package ch4.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class ServletContextDemoServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		//HttpServlet的父类的getServletContext方法可获得application对象
		ServletContext app = 
			super.getServletContext() ;
		System.out.println("真实路径：" + 
			app.getRealPath("/")) ;
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}