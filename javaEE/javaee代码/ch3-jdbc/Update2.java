//jdbc�����������ӷ�ʽ������mysql���ݿ�
import java.sql.*;
public class Update2{
	public static void main(String args[]) throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection
			("jdbc:mysql://localhost:3306/jeedb","root","");
		
		
		Statement stat=conn.createStatement();
		
		String sql="UPDATE T_TEACHER SET TCPWD='789' WHERE TCID='8003'";
		int i=stat.executeUpdate(sql);
		System.out.println("�ɹ��޸�"+i+"��");
		stat.close();
		conn.close();
	}
}