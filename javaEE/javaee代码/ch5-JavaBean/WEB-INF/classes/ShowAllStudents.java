package ch5.demo2;
import java.util.ArrayList;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class ShowAllStudents extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		req.setCharacterEncoding("GBK") ;
		try{
			System.out.println("constructing StudentDao");
			StudentDao studentDao=new StudentDao();
			ArrayList students=null;
			students=studentDao.queryAllStudents();
			System.out.println("queryAllStudents ok");
			String url=null;
			if(students!=null){
				req.setAttribute("stus",students);
				url="/5dao/showstudents.jsp";		        
			}else{
				url="/5dao/failure.jsp";
			}
			System.out.println("url="+url);
			//Ìø×ª
			RequestDispatcher rd = 
				req.getRequestDispatcher(url) ;	
			rd.forward(req,resp) ;
			//resp.sendRedirect("/ch5"+url);
			
			System.out.println("after forward");
				
		}catch(Exception e){
		}
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}
