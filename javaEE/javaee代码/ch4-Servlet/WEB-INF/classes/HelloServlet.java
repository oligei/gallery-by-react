//��һ��Servlet����
package ch4.demo;//������ڰ���
//������˳�򣺻�������java��������չ����javax����֮ǰ���������Ӱ�֮ǰ
import java.io.* ;			//PrintWriter��������
import javax.servlet.* ;	//ServletException��������
import javax.servlet.http.* ;//HttpServlet������

public class HelloServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp)
              throws ServletException,IOException{
		//servlet��û��out���󣬿�ʹ��PrintWriter�������
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