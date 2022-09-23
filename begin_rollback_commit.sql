
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);
 
set autocommit = 0;
begin;
-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');

commit;

select * from EMPLOYEE;

savepoint sp1;

delete from EMPLOYEE where empId = 2;
 
select '';

rollback to sp1;

select * from EMPLOYEE;
