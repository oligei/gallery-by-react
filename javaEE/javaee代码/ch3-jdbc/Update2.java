//jdbc厂商驱动连接方式，连接mysql数据库
import java.sql.*;
public class Update2{
	public static void main(String args[]) throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection
			("jdbc:mysql://localhost:3306/jeedb","root","");
		
		
		Statement stat=conn.createStatement();
		
		String sql="UPDATE T_TEACHER SET TCPWD='789' WHERE TCID='8003'";
		int i=stat.executeUpdate(sql);
		System.out.println("成功修改"+i+"行");
		stat.close();
		conn.close();
	}
}