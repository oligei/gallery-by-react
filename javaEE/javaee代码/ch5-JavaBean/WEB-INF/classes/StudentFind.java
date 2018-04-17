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
			//获取连接
			Class.forName(DBDRIVER);
			conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
			//运行sql语句
			String sql = "SELECT stuname FROM students WHERE stuno=? " ;
			PreparedStatement pstmt = conn.prepareStatement(sql) ;
			pstmt.setString(1,id) ;
			ResultSet rs = pstmt.executeQuery() ;	// 查询
			if(rs.next()){	
				//实例化VO
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
				//关闭连接
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