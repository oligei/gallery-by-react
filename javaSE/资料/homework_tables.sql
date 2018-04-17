USE company;
#（1）根据内容中表格的要求，创建员工信息（Employees）

#（2）删除Employees表中Address字段 
ALTER TABLE employees DROP Adress;

#（3）修改Employees表增加字段Address 
ALTER TABLE employees ADD COLUMN Address VARCHAR(40);

#（4）修改Employees表中Gender字段的默认值以及备注，改为默认值为1 


#（5）修改Employees表中Gender字段名称，改为Sex
ALTER TABLE employees CHANGE Gender Sex BIT;

salaryemployees
#（6）显示Employees中字段的所有属性 

SELECT * FROM information_schema.COLUMNS WHERE TABLE_NAME="employees" AND table_schema="company";

SHOW CREATE TABLE employees;
#（7）创建部门信息（Departments）表


#（8）增加Employees表中DepartmentID的约束，外键指向Departments表中的DepartmentID
ALTER TABLE employees ADD FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID);

#（9）员工薪水情况（Salary）表，并建立外键指向Employees表中的EmployeeID
ALTER TABLE salary ADD FOREIGN KEY (EmployeeID) REFERENCES employee(EmployeeIDID);