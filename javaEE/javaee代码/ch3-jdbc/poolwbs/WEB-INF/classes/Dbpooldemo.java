package ch2.demo ;
import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;
import java.sql.*;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
public class Dbpooldemo extends HttpServlet {
	public void doGet(HttpServletRequest req,
	HttpServletResponse resp) throws ServletException,IOException{
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		//从容器中获取数据源
		try{
			Context c=new InitialContext();
			DataSource ds=(DataSource)
				c.lookup("java:comp/env/jdbcpool/teacher");
			
			conn=ds.getConnection();
			
			stat=conn.createStatement();
			
			String sql="SELECT * FROM T_TEACHER";
			rs=stat.executeQuery(sql);
			while(rs.next()){
				String tcId=rs.getString("TCID");
				String tcName=rs.getString("TCNAME");
				String tcPwd=rs.getString("TCPWD");
				System.out.println("教师："+tcId+"-"+tcName+"-"+tcPwd);
			}
		}catch(Exception e){
			e.printStackTrace() ;
		}finally{
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e){
			}
		}
	
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) 
		throws ServletException,IOException{
		this.doGet(req,resp) ;
	}
}
