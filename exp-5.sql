-- create course table
create table course
  (
  s_no int auto_increment,
  student varchar(10),
  code varchar(4),
  score int,
  primary key(s_no)
  );

-- insert into course table..
insert into course(student, code, score)
   values
   (
   'bhanu', 'C001', 78
   ),
   (
    'abhi', 'C021', 89
   ),
   (
    'sai', 'C001', 67
   ),
   (
    'vamsi', 'C001', 68
   ),
   (
    'gopi', 'C002', 87 
   ),
   (
    'chandra', 'C021', 89
   ),
   (
    'vamsi', 'C002', 79
   );
 
select * from course;

select '';

-- range in 50 to 80..
select * from course where score
     between 50 and 80;
     
select '';

-- avg of c002..  
select avg(score) from course
    where code = 'C002';

select sum(score)/count(code) from course
    where code = 'C002';
  
select '';

-- max, min and of c021..
select max(score) as max ,min(score) as min 
      from course where code = 'c021';
  
select '';

-- min, max and avg for each subject
select code, min(score) as min,
       max(score) as max,avg(score) as avg
       from course 
       group by code
       order by min desc;
   
select '';

-- name and avg of each course..
select code as code, avg(score) as avg from course
    group by code;

select '';

-- sum of scores in each course..
select code, sum(score) as sum
   from course
   group by code;
   
select '';

-- no of registrations for each course..
select code, count(code) as no_of_reg
  from course
  group by code;

select '';

-- no of courses each one registered are..
select student, count(code) as registered
    from course
    group by student;
    

       
       