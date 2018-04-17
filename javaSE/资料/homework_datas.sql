USE company;
#1. 按照Departments表的内容插入数据（知识点：数据插入）


#2. 按照Employees表的内容插入数据（知识点：数据插入）
INSERT INTO employees VALUES("","","",,DATE_FORMAT("","%Y%m%d"),,,"","","");

INSERT INTO employees VALUES("000001","王林","大专",DATE_FORMAT("1996-01-23","%Y%m%d"),1,8,"83355668","2","中山路 32-1-508");
INSERT INTO employees VALUES("000220","张扬","硕士","","","","","","",);
INSERT INTO employees VALUES("010008","伍容华","本科","","","","","","",);

#3. 修改Employees中修改李丽的DepartmentID为’4’（知识点：数据修改）

UPDATE employees SET DepartmentID="4" WHERE NAME="李丽"
SELECT * FROM employees WHERE NAME="李丽"

#4. 创建一个与Employees结构和内容一致的表，名为Employees_Duplicated （知识点：数据表的复制）
CREATE TABLE Employees_Duplicated AS SELECT * FROM employees;
SELECT * FROM Employees_Duplicated;
#5. 对Employees_Duplicated表中的Address字段以空格为间隔符，分列为StreetName(街道名)和RoomName(房号)（知识点：字段分列）


#6. 删除Employees_Duplicated表中编号为’000001’的行内容（知识点：删除某行数据）
DELETE  FROM Employees_Duplicated WHERE EmployeeID="000001";
#7. 删除Employees_Duplicated表中Address字段中所有内容（知识点：删除某字段所有数据）
#DELETE Address  FROM Employees_Duplicated ;
UPDATE Employees_Duplicated SET Address="";

#8. 在Salary表中插入Employees表中所有的EmployeesID （知识点：选择性数据插入）