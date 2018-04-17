//jdbc厂商驱动连接方式，连接mysql数据库
import java.sql.*;
public class Transaction{
	public static void main(String args[]) throws Exception{
		Connection conn=null;
		Statement stat=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection
				("jdbc:mysql://localhost:3306/jeedb","root","");
			
			conn.setAutoCommit(false);
			
			stat=conn.createStatement();
			
			String sql1="UPDATE T_TEACHER SET TCPWD='999' WHERE TCID='8002'";
			String sql2="UPDATE T_TEACHER SET TCPWD='555' WHERE TCID='8003'";
			stat.executeUpdate(sql1);
			stat.executeUpdate(sql2);
			conn.commit();
			System.out.println("成功修改");
		}catch(Exception ex){
			conn.rollback();
		}finally{
			stat.close();
			conn.close();
		}
	}
}