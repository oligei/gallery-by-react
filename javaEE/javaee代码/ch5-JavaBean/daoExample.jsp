<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="ch5.demo2.*" %>
<%@ page import="java.util.ArrayList,java.sql.*" %>
<html>
<head><title>studentsdao</title></head>
<body>
<%	
	//StudentDao studentDao=new StudentDao();
	//ArrayList students=null;
	//students=studnetDao.queryAllStudents();
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
				Student student1=new Student();
				student1.setStuno(rs.getString("stuno")) ;
				student1.setStuname(rs.getString("stuname")) ;
				students.add(student1) ;
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

<table border=2>
	<tr>
		<td>ѧ��</td>
		<td>����</td>
	</tr>
	<%  
		if(students==null) return; 
		for(int i=0;i<students.size();i++){
			Student student=(Student)students.get(i);
		%>
	<tr>
		<td><%=student.getStuno()%></td>
		<td><%=student.getStuname()%></td>		
	</tr>
		<%
		}
		
	%>
</table>
</body>
</html>