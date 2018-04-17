<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="ch5.demo2.*" %>
<%@ page import="java.util.ArrayList,java.sql.*" %>
<html>
<head><title>studentsdao</title></head>
<body>
<%	
	StudentDao studentDao=new StudentDao();
	ArrayList students=null;
	students=studentDao.queryAllStudents();
%>

<table border=2>
	<tr>
		<td>Ñ§ºÅ</td>
		<td>ĞÕÃû</td>
	</tr>
	<%  
	System.out.println("students.size():"+students.size());
		for(int i=0;i<students.size();i++){
			Student student=
				(Student)students.get(i);
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