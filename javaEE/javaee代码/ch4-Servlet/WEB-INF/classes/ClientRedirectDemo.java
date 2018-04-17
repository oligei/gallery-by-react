package ch4.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class ClientRedirectDemo extends HttpServlet {
	public void doGet(HttpServletRequest req,
	HttpServletResponse resp) throws ServletException,IOException{
		
		req.getSession().setAttribute("name","����") ;
		req.setAttribute("info","Welcome") ;
		resp.sendRedirect("/ch4/forward/get_info.jsp") ;//��ת��һ��JSP
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}
