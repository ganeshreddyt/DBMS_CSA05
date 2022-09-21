show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| student            |
| test               |
+--------------------+
5 rows in set (0.02 sec)

mysql> create table student;
ERROR 1046 (3D000): No database selected
mysql> USE student
Database changed
mysql> use student;
Database changed
mysql> create table student;
ERROR 1113 (42000): A table must have at least 1 column
mysql> create table student(Id integer(5), Name VARCHAR(20), Marks FLOAT);
Query OK, 0 rows affected (0.11 sec)

mysql> describe student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| Id    | int(5)      | YES  |     | NULL    |       |
| Name  | varchar(20) | YES  |     | NULL    |       |
| Marks | float       | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)
