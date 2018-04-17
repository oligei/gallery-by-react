package ch4.filter ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class EncodingFilter implements Filter {
	public void init(FilterConfig config) 
		throws ServletException{
		System.out.println("������init��������");
	}
	public void destroy(){
		System.out.println("������destroy��������");
	}
	public void doFilter(ServletRequest req,
		ServletResponse resp,
		FilterChain chain)throws ServletException,IOException{
		System.out.println("������doFilter��������");
		req.setCharacterEncoding("GBK");
		chain.doFilter(req,resp);
	}
}
