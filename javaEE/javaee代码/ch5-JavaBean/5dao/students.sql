/*======================= 使用userdata 数据库 =======================*/
USE jeedb ;
/*======================= 删除user数据表 =======================*/
DROP TABLE IF EXISTS students;
/*======================= 创建user数据表 =======================*/
CREATE TABLE students(
	stuno			VARCHAR(30)		PRIMARY KEY ,
	stuname			VARCHAR(30)		NOT NULL
) ;
/*======================= 插入测试数据 =======================*/
INSERT INTO students(stuno,stuname) VALUES ('10001','rose') ;
INSERT INTO students(stuno,stuname) VALUES ('10002','tom') ;
INSERT INTO students(stuno,stuname) VALUES ('10003','Lee') ;
INSERT INTO students(stuno,stuname) VALUES ('10004','Linda') ;
INSERT INTO students(stuno,stuname) VALUES ('10005','Jack') ;
INSERT INTO students(stuno,stuname) VALUES ('10006','May') ;
