//jdbc-odbc连接方式，连接access数据库
import java.sql.*;
public class InsertStudent2{
	public static void main(String args[]) throws Exception{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection conn=DriverManager.getConnection("jdbc:odbc:DSSchool");
		
		String stuno="0036";
		String stuname="李梅";
		String stusex="女";
		
		String sql=
			"INSERT INTO T_STUDENT(STUNO,STUNAME,STUSEX) VALUES(?,?,?)";
				
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,stuno);
		ps.setString(2,stuname);
		ps.setString(3,stusex);
		int i=ps.executeUpdate();
		System.out.println("成功添加"+i+"行");
		ps.close();
		conn.close();
	}
}