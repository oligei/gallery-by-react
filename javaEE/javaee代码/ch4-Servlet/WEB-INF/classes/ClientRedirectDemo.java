package ch4.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class ClientRedirectDemo extends HttpServlet {
	public void doGet(HttpServletRequest req,
	HttpServletResponse resp) throws ServletException,IOException{
		
		req.getSession().setAttribute("name","王五") ;
		req.setAttribute("info","Welcome") ;
		resp.sendRedirect("/ch4/forward/get_info.jsp") ;//跳转到一个JSP
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}
