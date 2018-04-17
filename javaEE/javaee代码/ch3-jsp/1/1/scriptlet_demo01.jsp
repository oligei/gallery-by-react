<%!
	int x = 10 ;		// 定义
%>
<%
	
	String info = "JSP基础学习" ;	// 局部变量
	out.println("<h2>x = " + x++ + "</h2>") ;	// 语句
	out.println("<h2>info = " + info + "</h2>") ;	// 语句
%>

