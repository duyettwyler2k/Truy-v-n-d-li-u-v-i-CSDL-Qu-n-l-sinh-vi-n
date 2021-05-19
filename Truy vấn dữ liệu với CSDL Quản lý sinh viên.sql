create database quanlisinhvien1;
use quanlisinhvien1;
create table class(
ClassID   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
ClassName VARCHAR(60) NOT NULL,
StartDate DATETIME    NOT NULL,
Status    BIT
);
insert into class
values(1,'A1', '2008-12-20', 1);
insert into class 
values(2,'A2','2008-12-22',1);
insert into class
values(3,'B3',current_date,0);
create table students(
subID int not null auto_increment primary key,
studentName varchar(30) not null,
adress varchar(30),
phone varchar(30),
status bit,
ClassId     INT         NOT NULL,
FOREIGN KEY (ClassId) REFERENCES Class (ClassID)
);
insert into students (studentName,adress,phone,status,ClassId)
values('Hung','Ha Noi','0912113113', 1, 1);
insert into students (studentName,adress,status,ClassId)
values('Hoa', 'Hai phong', 1, 1);
insert into students (studentName,adress,phone,status,ClassId)
values('Manh', 'HCM', '0123123123', 0, 2);
CREATE TABLE Subject
(
    SubId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubName VARCHAR(30) NOT NULL,
    Credit  TINYINT     NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
    Status  BIT                  DEFAULT 1
);
INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
 CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId)
);
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
       
use quanlisinhvien1;       
select *
from students;
select *
from students
where status=true;
select *
from subject
where Credit <10; 
  
