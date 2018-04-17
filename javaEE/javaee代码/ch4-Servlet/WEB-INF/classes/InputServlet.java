//使用Servlet从请求中获取参数
//http://localhost:8080/ch4/input.htm
//http://localhost:8080/ch4/abc/inputServlet
package ch4.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class InputServlet extends HttpServlet{
	public void doGet(HttpServletRequest req,
					  HttpServletResponse resp)
              throws ServletException,IOException{
        resp.setCharacterEncoding("gb2312");
		String info = req.getParameter("info") ;	// 假设参数名称为info
		PrintWriter out = resp.getWriter() ;
		out.println("<html>") ;
		out.println("<head><title>Servlet Study11</title></head>") ;
		out.println("<body>") ;
		out.println("<h1>" + info + "</h1>") ;
		out.println("</body>") ;
		out.println("</html>") ;
		out.close() ;
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp)
              throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}