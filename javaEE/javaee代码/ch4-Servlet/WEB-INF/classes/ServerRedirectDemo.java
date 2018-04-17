package ch4.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class ServerRedirectDemo extends HttpServlet {
	public void doGet(HttpServletRequest req,
	HttpServletResponse resp) 
		throws ServletException,IOException{
			
		req.getSession().setAttribute("name","张三") ;
		req.setAttribute("info","Haha") ;
		// 设置跳转信息
		String url="/forward/get_info.jsp";
		System.out.println(url);
		RequestDispatcher rd = 
			req.getRequestDispatcher(url) ;	
		rd.forward(req,resp) ;	// 完成跳转
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}
