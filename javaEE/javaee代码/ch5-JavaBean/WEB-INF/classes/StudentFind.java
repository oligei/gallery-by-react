package ch5.demo2 ;
import java.sql.*;
import java.util.ArrayList;
public class StudentFind {
	public Student queryStudents(String id){
		Connection conn=null;
		Student student=null;
		try{
			String DBDRIVER = "org.gjt.mm.mysql.Driver" ;
			String DBURL = "jdbc:mysql://localhost:3306/jeedb" ;
			String DBUSER = "root" ;
			String DBPASS = "" ;
			//��ȡ����
			Class.forName(DBDRIVER);
			conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
			//����sql���
			String sql = "SELECT stuname FROM students WHERE stuno=? " ;
			PreparedStatement pstmt = conn.prepareStatement(sql) ;
			pstmt.setString(1,id) ;
			ResultSet rs = pstmt.executeQuery() ;	// ��ѯ
			if(rs.next()){	
				//ʵ����VO
				student=new Student();
				student.setStuno(id) ;
				student.setStuname(rs.getString("stuname")) ;
			}
			rs.close();
			pstmt.close();
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException e){
			System.out.println(e.toString());
		}finally{
			try{
				//�ر�����
				if(conn!=null){
					conn.close();
					conn=null;
				}
			}catch(Exception ex){
			}
		}
		return student;
	}
}