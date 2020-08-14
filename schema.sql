DROP TABLE IF EXISTS Job_Titles, Employees, Departments, Dept_Emp, Dept_Manager, Salaries;
CREATE TABLE Job_Titles ("title_id" char(5) NOT NULL PRIMARY KEY,
    "title" varchar(30) NOT NULL);
CREATE TABLE Employees ("emp_num" int NOT NULL PRIMARY KEY,
    "emp_title" char(5) NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "sex" char(1) NOT NULL,
    "hire_date" date NOT NULL);
CREATE TABLE Departments ("dept_num" char(4) NOT NULL,
    "dept_name" varchar(30) NOT NULL,
     PRIMARY KEY ("dept_num"));
CREATE TABLE Dept_Manager ("dept_num" char(4) NOT NULL,
    "emp_num" int NOT NULL);
CREATE TABLE Dept_Emp ("emp_num" int NOT NULL ,
	"dept_num" char(5) NOT NULL);
CREATE TABLE Salaries ("emp_num" int NOT NULL PRIMARY KEY,
    "salary" int NOT NULL);
