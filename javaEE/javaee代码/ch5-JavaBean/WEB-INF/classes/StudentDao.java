package ch5.demo2 ;
import java.sql.*;
//import java.util.ArrayList;
public class StudentDao {
 	/*public static void main(String args[]){
		System.out.println("hah");
		try{
		StudentDao stuDao=new StudentDao();
		ArrayList students;
		students=stuDao.queryAllStudents();
		for(int i=0;i<students.size();i++){
			Student student=(Student)students.get(i);
			System.out.println(student.getStuno()+"-->"+student.getStuname());
		}
		}catch(Exception e){
		}
	}*/
	public ArrayList<Student> queryAllStudents(){
		Connection conn=null;
		ArrayList<Student> students=new ArrayList<Student>();
		System.out.println("queryAllStudents");
		try{
			String DBDRIVER = "org.gjt.mm.mysql.Driver" ;
			String DBURL = "jdbc:mysql://localhost:3306/jeedb" ;
			String DBUSER = "root" ;
			String DBPASS = "" ;
			//��ȡ����
			Class.forName(DBDRIVER);
			System.out.println("forName ok");
			conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
			//����sql���
			String sql = "SELECT stuno,stuname FROM students" ;
			PreparedStatement pstmt = conn.prepareStatement(sql) ;
			ResultSet rs = pstmt.executeQuery() ;
			System.out.println("executeQuery ok");
			//Statement stmt = conn.createStatement() ;
			//ResultSet rs = stmt.executeQuery(sql) ;	// ��ѯ
			while(rs.next()){	
				//ʵ����VO
				System.out.println("rs.next() ok");
				Student student=new Student();
				student.setStuno(rs.getString("stuno")) ;
				student.setStuname(rs.getString("stuname")) ;
				students.add(student) ;
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
		return students;
	}
}


/*
 public static void main(String args[]){
		System.out.println("hah");
		try{
		StudentDao stuDao=new StudentDao();
		ArrayList students;
		students=stuDao.queryAllStudents();
		for(int i=0;i<students.size();i++){
			Student student=(Student)students.get(i);
			System.out.println(student.getStuno()+"-->"+student.getStuname());
		}
		}catch(Exception e){
		}
	}
 */