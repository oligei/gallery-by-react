//ȡ�ó�ʼ��������Ϣ
package ch4.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class InitParamServlet extends HttpServlet {
	private String initParam = null ;	// ���ڱ����ʼ������
	public void init() throws ServletException{
		System.out.println("*****************") ;
	}
	//�ɴ�config�л�ȡ��ʼ������
	public void init(ServletConfig config) throws ServletException{
		System.out.println("#######################") ;
		this.initParam = config.getInitParameter("ref") ;	// ���յĳ�ʼ����������Ϊref
	}

	public void doGet(HttpServletRequest req,
                     HttpServletResponse resp)
              throws ServletException,
                     IOException{
        //�����ʼ��������ֵ
		PrintWriter out = resp.getWriter() ;
		out.println("** ��ʼ��������" + this.initParam) ;
	}
	public void doPost(HttpServletRequest req,
                     HttpServletResponse resp)
              throws ServletException,
                     IOException{
		this.doGet(req,resp) ;
	
	}



}
/*
	<servlet>
		<servlet-name>initparam</servlet-name>
		<servlet-class>ch7.demo.InitParamServlet</servlet-class>
		<init-param>
			<param-name>ref</param-name>
			<param-value>welcome to servlet study</param-value>
		</init-param>
	</servlet>
	<servlet-mapping>
		<servlet-name>initparam</servlet-name>
		<url-pattern>/InitParamServlet</url-pattern>
	</servlet-mapping>
*/