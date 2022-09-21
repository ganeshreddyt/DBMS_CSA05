-- creating a tables name :- student
create table student
 (
  reg_no int,
  name tinytext,
  gender char,
  code tinytext,
  date_of_birth date,
  address tinytext
  );
  
  -- insert records into DB _ table..
insert into student values(
   1920,'rohith','m','C001','2003-5-12','chennai'
   ),
   (
   1921,'gopi','m','C002','2002-6-22','visalvana'
   ),
   (
   1919,'sis-ma','f','C001','2003-7-29','bansalpur'
   ),
   (
   1922,'manju','m','C001','2003-9-14','hyd'
   ),
   (
   1923,'maa-sis','f','C003','2002-4-30','thirupati'
   );

-- replacing all 'm' with 'M' and 'f' as 'F'
update student set gender = 'M' where gender = 'm';
update student set gender = 'F' where gender = 'f';
   
-- fetch data from student_table..
select * from student;

-- fetching all students specified cols..
select reg_no as Reg_No, name as Name,  date_of_birth as DOB from student;

-- displaying female students data only..
select * from student where gender = 'F';

-- boys registered for course c001 are..
select * from student where code = 'C001';

-- creating relational table for faculties..
create table faculty
   (
   id int,
   name text,
   joined_date date,
   mbl_no bigint
   );
  
-- insert into faculty_table..
insert into faculty values
   (
   1000, 'divya', '2011-4-23', 9339876543
   ),
   (
   1003, 'devi', '2014-4-30', 7899076545
   ),
   (
   1002, 'ashok', '2015-7-18', 6300287960
   ),
   (
   1005, 'deepak', '2010-8-7', 8939309876
   );
   
select * from faculty;

-- fcaculty who joined befor nov 2014..
select * from faculty where joined_date < '2014-11-01';

-- creating table for course details..
create table course
   (
   code tinytext,
   subject tinytext,
   faculty tinytext,
   room_no int null
   );

-- insert into course table..
insert into course values
   (
   'C001', 'analog', 'divya', 113 
   ),
   (
   'C002', 'maths', 'Sanjeev',null
   ),
   (
   'C003', 'software', 'ashok', 231
   ),
   (
   'C004',  'dbms', 'devi',null
   ),
   (
   'C005', 'networks', 'deepak', 432
   );

-- course details i.e., room allocation failed..
select * from course where room_no is null;

-- student name ends with 'ma'..
select * from student where name like '%ma';

-- whose name contain 'ma' substring..
select * from student where name like '%ma%';

-- having 'sal' in its address..
select * from student where address like '%sal%';

-- students with <6 letter count in their name..
select * from student where  length(name) != 6
   order by length(name) asc;
-- above order by length_size in descending upto 5 items only..

-- students having 'th' in their names..
select * from student where name like '%th%';

-- start with 'g' and atleast having 4 chars..
select * from student where name like '%m%'; 

select * from student order by reg_no asc;

select length('abcd'); -- string length..
