<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="ch5.demo2.*" %>
<%@ page import="java.util.ArrayList,java.sql.*" %>
<html>
<head><title>studentsdao</title></head>
<body>
<%	
	Connection conn=null;
		ArrayList students=new ArrayList();
		try{
			String DBDRIVER = "org.gjt.mm.mysql.Driver" ;
			String DBURL = "jdbc:mysql://localhost:3306/userdata" ;
			String DBUSER = "root" ;
			String DBPASS = "" ;
			//��ȡ����
			Class.forName(DBDRIVER);
			conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
			//����sql���
			String sql = "SELECT stuno,stuname FROM students" ;
			PreparedStatement pstmt = conn.prepareStatement(sql) ;
			ResultSet rs = pstmt.executeQuery() ;	// ��ѯ
			//Statement stmt = conn.createStatement() ;
			//ResultSet rs = stmt.executeQuery(sql) ;	// ��ѯ
			while(rs.next()){	
				//ʵ����VO
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
	
%>
</body>
</html>