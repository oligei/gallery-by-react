//jdbc-odbc���ӷ�ʽ������access���ݿ�
import java.sql.*;
public class InsertStudent1{
	public static void main(String args[]) throws Exception{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection conn=DriverManager.getConnection("jdbc:odbc:DSSchool");
		
		String stuno="0035";
		String stuname="lee";
		String stusex="Ů";
		
		Statement stat=conn.createStatement();
		String sql=
			"INSERT INTO T_STUDENT(STUNO,STUNAME,STUSEX) VALUES('"
				+stuno+"','"+stuname+"','"+stusex+"')";
		int i=stat.executeUpdate(sql);
		System.out.println("�ɹ����"+i+"��");
		stat.close();
		conn.close();
	}
}