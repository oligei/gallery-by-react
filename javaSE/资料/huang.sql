
CREATE DATABASE bigData;
USE bigData;


CREATE TABLE teacher(
id INT,
NAME VARCHAR(20),
birthday DATETIME
);

SHOW CREATE TABLE teacher # 看表信息1

#管理：表、字段
#变成纵向--便于观察;
#分析数据库压力
USE information_schema;
SELECT * FROM TABLES WHERE TABLE_NAME="teacher"


USE bigData
CREATE TABLE schema1(
schemaName VARCHAR(30)
); #自定义管理器

INSERT INTO schema1 VALUES("id");
INSERT INTO schema1 VALUES("NAME");
INSERT INTO schema1 VALUES("birthday");

SELECT * FROM schema1;

#表结构更改
ALTER TABLE teacher MODIFY id VARCHAR(10)#改字段类型

SELECT * FROM information_schema.columns WHERE table_schema="bigData" AND table_name="teacher" # 看表信息2

ALTER TABLE teacher RENAME TO teacher2#表名重换

SHOW CREATE TABLE teacher2;

ALTER TABLE teacher2  CHANGE id   tid  INT;#改字段名

ALTER TABLE teacher2 ADD COLUMN sex VARCHAR(10);

ALTER TABLE teacher2 DROP COLUMN sex;

ALTER TABLE teacher ADD CONSTRAINT pk id  PRIMARY KEY;#创建表后添加主键

ALTER TABLE teacher2 MODIFY tid INT PRIMARY KEY #更改字段来设置主键

DROP TABLE teacher2

#编码问题
利用