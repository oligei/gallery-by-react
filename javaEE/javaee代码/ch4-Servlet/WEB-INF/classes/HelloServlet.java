//第一个Servlet程序
package ch4.demo;//必须放在包中
//包导入顺序：基本包（java包）在扩展包（javax包）之前，父包在子包之前
import java.io.* ;			//PrintWriter类所属包
import javax.servlet.* ;	//ServletException类所属包
import javax.servlet.http.* ;//HttpServlet所属包

public class HelloServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp)
              throws ServletException,IOException{
		//servlet中没有out对象，可使用PrintWriter对象输出
		PrintWriter out = resp.getWriter() ;
		out.println("<html>") ;
		out.println("<head><title>Servlet Study</title></head>") ;
		out.println("<body>") ;
		out.println("<h1>HELLO WORLD</h1>") ;
		out.println("</body>") ;
		out.println("</html>") ;
		out.close() ;
	}
}