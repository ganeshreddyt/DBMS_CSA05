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

-- fetch
select * from studentdb;

-- altering table;
alter table studentdb add(address text);

insert into studentdb values(1923, 'janu', 87.45, 9876543210, 'chennai');

select *from studentdb;

rename table studentdb to studentinfo;

-- update previous address values
update studentinfo set address = 'hyd' where marks is not null;
update studentinfo set address = 'chennai' where id = 1922;
update studentinfo set address = 'vizag' where id = 1921;

select * from studentinfo;
