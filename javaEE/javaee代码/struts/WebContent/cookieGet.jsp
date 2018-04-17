<%@ page language="java" contentType="text/html"
    pageEncoding="GBK"%>
<html>
<body>
	
	<%
		Cookie c[]=request.getCookies();
		String str=null;
		if(c==null) {
			return;
		}
		for(int i=0;i<c.length;i++){
			if(c[i].getName().equals("username")){
				str=c[i].getValue();
				break;
			}
		}
	%>
	<h3>
		username:<%=str %>!
		<br>
		username:${cookie.username.value }!
	</h3>
</body>
</html>