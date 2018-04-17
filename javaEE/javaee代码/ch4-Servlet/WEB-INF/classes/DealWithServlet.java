package ch4.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class DealWithServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		String stuname=req.getParameter("stuname");
		System.out.println("Ñ§ÉúÐÕÃû£º"+stuname);
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}
