-- create course table
create table student
  (
  register_no int,
  name varchar(10),
  gender char,
  mbl_no bigint,
  primary key(register_no)
  );

-- insert into course table..
insert into student
   values
   (
   192011231, 'shafi', 'M', 9321087645
   ),
   (
    192011456, 'seenu', 'M', 7564790800
   ),
   (
    192011750, 'vasu', 'M', 6300343210
   ),
   (
    192011654, 'govind', 'M', 7890947876
   );
 
select * from student;

select '';

-- descending order of register_no..
select * from student
    order by register_no desc;
    
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
   
select '';
   
select * from faculty;

select '';

select * from faculty
   order by joined_date asc;
   
   
   


    


       
       