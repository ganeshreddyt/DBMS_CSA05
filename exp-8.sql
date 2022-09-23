
-- create table for employee..
CREATE TABLE employee (
  empid INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);

-- insert
INSERT INTO employee VALUES (1, 'Clark', 'Sales');
INSERT INTO employee VALUES (2, 'Dave', 'Accnts');
INSERT INTO employee VALUES (3, 'Ava', 'Sales');
 
-- table content..
select * from employee;

-- create table salary..
create table salary
   (
   id int,
   stifund tinytext,
   payment_id tinytext
   );

select '';

insert into salary values
   (
   2, '45k', 'upi182900' 
   ),
   (
   4, '87k', 'upi122320'
   ),
   (
   1, '89k', 'upi112987'
   ),
   (
   5, '67k', 'upi199088'
   );
   
  select * from salary ;
  
  select '';
  -- inner join..
  select employee.empid, employee.name, salary.stifund
     from 
     employee inner join salary on employee.empid = salary.id;
   
  select '';
  -- left join..
  select * from
     employee left outer join salary on
     employee.empid = salary.id;
  
  select '';
  -- right join..
  select * from
     employee right join salary on
     employee.empid = salary.id; 