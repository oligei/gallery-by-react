//jdbc-odbc���ӷ�ʽ������access���ݿ�
import java.sql.*;
public class Insert1{
	public static void main(String args[]) throws Exception{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection conn=DriverManager.getConnection("jdbc:odbc:DSSchool");
		Statement stat=conn.createStatement();
		String sql="INSERT INTO T_STUDENT(STUNO,STUNAME,STUSEX) VALUES('0032','�뽭','��')";
		int i=stat.executeUpdate(sql);
		System.out.println("�ɹ����"+i+"��");
		stat.close();
		conn.close();
	}
}