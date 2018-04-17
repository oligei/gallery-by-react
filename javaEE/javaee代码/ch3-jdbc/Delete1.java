//jdbc-odbc连接方式，连接access数据库
import java.sql.*;
public class Delete1{
	public static void main(String args[]) throws Exception{
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection conn=DriverManager.getConnection("jdbc:odbc:DSSchool");
		
		Statement stat=conn.createStatement();
		
		String sql="DELETE FROM T_STUDENT WHERE STUNO='0032'";
		int i=stat.executeUpdate(sql);
		System.out.println("成功删除"+i+"行");
		stat.close();
		conn.close();
	}
}