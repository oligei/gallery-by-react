/*======================= 使用userdata 数据库 =======================*/
USE jeedb ;
/*======================= 删除user数据表 =======================*/
DROP TABLE IF EXISTS T_TEACHER;
/*======================= 创建user数据表 =======================*/
CREATE TABLE T_TEACHER(
	TCID			VARCHAR(30)		PRIMARY KEY ,
	TCNAME			VARCHAR(30)		NOT NULL ,
	TCPWD			VARCHAR(32)		NOT NULL
) ;
/*======================= 插入测试数据 =======================*/
INSERT INTO T_TEACHER(TCID,TCNAME,TCPWD) VALUES ('8001','zhangli','123') ;
INSERT INTO T_TEACHER(TCID,TCNAME,TCPWD) VALUES ('8002','lee','456') ;
INSERT INTO T_TEACHER(TCID,TCNAME,TCPWD) VALUES ('8003','tom','456') ;
