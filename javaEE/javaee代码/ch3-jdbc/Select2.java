//jdbc�����������ӷ�ʽ������mysql���ݿ�
import java.sql.*;

public class Select2{
	public static void main(String args[]) throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection
			("jdbc:mysql://localhost:3306/jeedb","root","");
		
		Statement stat=conn.createStatement();
		
		String sql="SELECT * FROM T_TEACHER";
		ResultSet rs=stat.executeQuery(sql);
		while(rs.next()){
			String tcId=rs.getString("TCID");
			String tcName=rs.getString("TCNAME");
			String tcPwd=rs.getString("TCPWD");
			System.out.println("��ʦ��"+tcId+"-"+tcName+"-"+tcPwd);
		}
		stat.close();
		conn.close();
	}
}