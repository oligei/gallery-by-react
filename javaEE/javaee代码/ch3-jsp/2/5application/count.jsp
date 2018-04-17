<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.math.*"%>
<html>
<head><title>application对象学习</title></head>
<body>
<%!
	//BigInteger在java.math包中定义
	BigInteger count = null ;
%>
<%!	//定义两个全局函数
	//load函数：从文件中读取访问计数
	public BigInteger load(File file){
		BigInteger count = null ;	// 接收数据
		try{
			if(file.exists()){
				//读取文件内容
				Scanner scan = new Scanner(new FileInputStream(file)) ;
				if(scan.hasNext()){
					count = new BigInteger(scan.next()) ;
				}
				scan.close() ;
			} else {	
				//文件不存在，该保存一个新的，从0开始
				count = new BigInteger("0") ;
				save(file,count) ;	// 保存一个新的文件
			}
		}catch(Exception e){
			e.printStackTrace() ;
		}
		return count ;
	}
	//save将计数保存在file文件中
	public void save(File file,BigInteger count){
		try{
			PrintStream ps = null ;//定义打印流对象
			ps = new PrintStream(new FileOutputStream(file)) ;
			ps.println(count) ;    //输出内容
			ps.close() ;
		}catch(Exception e){
			e.printStackTrace() ;
		}
	}
%>
<%
	String fileName = this.getServletContext().getRealPath("/") + "//2//count.txt";	// 这里面保存所有的计数的结果
	File file = new File(fileName) ;
	if(session.isNew()){//是第一次访问
		//同步代码块，当一个线程访问同步代码块时，其他线程对其的访问将被阻塞
		synchronized(this){
			count = load(file) ;	// 读取
			count = count.add(new BigInteger("1")) ;	// 再原本的基础上增加1
			save(file,count) ;
		}
	}
%>
<h2>您是第<%=count==null?0:count%>位访客！</h2>
</body>
</html>