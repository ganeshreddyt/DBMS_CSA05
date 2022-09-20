-- create
create table studentdb(
  id integer primary key,
  name text not null,
  marks float null,
  mbl_no bigint null
  );
  
-- insert into table..
insert into studentdb values(1920, 'sai', 58.45, 9847383222);
insert into studentdb values(1921, 'gopi', 89.56, 7898794909);
insert into studentdb values(1922, 'raju', 78.98, 8493392085);


-- altering table;
alter table studentdb add(address text);

insert into studentdb values(1923, 'janu', 87.45, 9876543210, 'chennai');


rename table studentdb to studentinfo;

-- update previous address values
update studentinfo set address = 'hyd' where marks is not null;
update studentinfo set address = 'chennai' where id = 1922;
update studentinfo set address = 'vizag' where id = 1921;


-- fetch;
select * from studentinfo;
select count(id) from studentinfo;
select avg(marks) from studentinfo;

-- alias
select mbl_no as ph_no from studentinfo;

update studentinfo set mbl_no = 9999988888 where  name = 'sai';
delete from studentinfo where id = 1922;

select * from studentinfo;

select id as identity_no from studentinfo;

insert into studentinfo values(1925, 'ramu', 77.90, 7584763456, 'tpt');

select * from studentinfo;

select name, mbl_no, address from studentinfo limit 3;

 -- max marks scored by students is..
 select max(marks) from studentinfo;
 
 -- min marks scored in class is..
 select min(marks) from studentinfo;

-- to delete a specific column
alter table studentinfo drop address, drop mbl_no;

select * from studentinfo;
