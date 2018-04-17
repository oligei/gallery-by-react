<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<html>
<head><title>application对象学习</title></head>
<body>
<%	
	//将请求中的内容存储在用户指定文件中
	request.setCharacterEncoding("GBK") ;	// 解决乱码问题
	String name = request.getParameter("filename") ;
	String content = request.getParameter("filecontent") ;
	//要想操作文件必须有绝对路径，那么这个时候使用getRealPath()
	//拼凑文件名称
	String fileName = this.getServletContext().getRealPath("/") + "note" + File.separator + name ;	// 保存在note文件夹之中
	//G:\code\ch5-jsp\note\hhh.txt
	File file = new File(fileName) ;	// 实例化File类对象
	//若note文件夹不存在则创建该文件夹
	if(!file.getParentFile().exists()){ //判断父文件夹是否存在
		file.getParentFile().mkdir() ;	// 建立一个文件夹
	}

	PrintStream ps = null ;             //定义打印流对象
	ps = new PrintStream(new FileOutputStream(file)) ;//准备向文件中保存
	ps.println(content) ;               //输出内容
	ps.close() ;                        //关闭输出流
%>
<%	//将所写文件内容输出
	//使用java.util包中的Scanner读取文件
	Scanner scan = new Scanner(new FileInputStream(file)) ;
	scan.useDelimiter("\n") ;     //设置读取分隔符
	StringBuffer buf = new StringBuffer() ;//用于存储读取的文件内容
	while(scan.hasNext()){
		buf.append(scan.next()).append("<br>") ;//读取内容
	}
	scan.close() ;                //关闭输入流
%>
<%=buf%>       <!--输出表达式输出内容-->
</body>
</html>