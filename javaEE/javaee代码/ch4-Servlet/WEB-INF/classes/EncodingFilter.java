package ch4.filter ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class EncodingFilter implements Filter {
	public void init(FilterConfig config) 
		throws ServletException{
		System.out.println("过滤器init函数调用");
	}
	public void destroy(){
		System.out.println("过滤器destroy函数调用");
	}
	public void doFilter(ServletRequest req,
		ServletResponse resp,
		FilterChain chain)throws ServletException,IOException{
		System.out.println("过滤器doFilter函数调用");
		req.setCharacterEncoding("GBK");
		chain.doFilter(req,resp);
	}
}
