//jdbc-odbc���ӷ�ʽ������access���ݿ�
import java.sql.*;
public class InsertStudent2{
	public static void main(String args[]) throws Exception{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection conn=DriverManager.getConnection("jdbc:odbc:DSSchool");
		
		String stuno="0036";
		String stuname="��÷";
		String stusex="Ů";
		
		String sql=
			"INSERT INTO T_STUDENT(STUNO,STUNAME,STUSEX) VALUES(?,?,?)";
				
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,stuno);
		ps.setString(2,stuname);
		ps.setString(3,stusex);
		int i=ps.executeUpdate();
		System.out.println("�ɹ����"+i+"��");
		ps.close();
		conn.close();
	}
}