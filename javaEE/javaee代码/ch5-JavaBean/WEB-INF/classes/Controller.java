package ch5.demo2;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
public class Controller extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		req.setCharacterEncoding("GBK") ;
		String id=req.getParameter("id");
		try{
			StudentFind stu=new StudentFind();
			Student student;
			student=stu.queryStudents(id);
			String url=null;
			if(student!=null){
				req.setAttribute("stu",student);
				url="/6mvc/success.jsp";
			}else{
				url="/6mvc/failure.jsp";
			}
			//Ìø×ª
			RequestDispatcher rd = 
				req.getRequestDispatcher(url) ;	
			rd.forward(req,resp) ;
				
		}catch(Exception e){
		}
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}
