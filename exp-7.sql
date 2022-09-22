mysql> use student;
Database changed
mysql> selecet * from student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selecet * from student' at line 1
mysql> select * from student;
+-----------+--------+--------+--------+-----------+------------+-----------+
| reg_no    | name   | branch | gender | mentor    | mbl_no     | mentor_id |
+-----------+--------+--------+--------+-----------+------------+-----------+
| 192011450 | ramesh | EEE    | male   | jagadeesh | 8785574321 |       100 |
| 192011461 | venu   | CSE    | male   | kalyan    | 7305883388 |       102 |
| 192011465 | sreenu | CSE    | male   | devi      | 9876604312 |       101 |
| 192011468 | abhi   | MEC    | male   | deepak    | 9876690980 |       104 |
| 192011480 | vamsi  | ECE    | male   | anitha    | 7890677665 |      NULL |
| 192011570 | sai    | ECE    | male   | mary      | 8990976543 |      NULL |
+-----------+--------+--------+--------+-----------+------------+-----------+
6 rows in set (0.00 sec)

mysql> select branch, count(reg_no) as no_of_stu from student
    -> group by branch;
+--------+-----------+
| branch | no_of_stu |
+--------+-----------+
| CSE    |         2 |
| ECE    |         2 |
| EEE    |         1 |
| MEC    |         1 |
+--------+-----------+
4 rows in set (0.00 sec)

mysql> select name, mentor from student having mentor_id = 100;
ERROR 1054 (42S22): Unknown column 'mentor_id' in 'having clause'
mysql> select branch, count(name) as no_of_stu from student
    -> group by branch having max(mentor_id) <104;
+--------+-----------+
| branch | no_of_stu |
+--------+-----------+
| CSE    |         2 |
| EEE    |         1 |
+--------+-----------+
2 rows in set (0.02 sec)

mysql> select * from student reg_no order by desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc' at line 1
mysql> select * from student order by reg_no desc;
+-----------+--------+--------+--------+-----------+------------+-----------+
| reg_no    | name   | branch | gender | mentor    | mbl_no     | mentor_id |
+-----------+--------+--------+--------+-----------+------------+-----------+
| 192011570 | sai    | ECE    | male   | mary      | 8990976543 |      NULL |
| 192011480 | vamsi  | ECE    | male   | anitha    | 7890677665 |      NULL |
| 192011468 | abhi   | MEC    | male   | deepak    | 9876690980 |       104 |
| 192011465 | sreenu | CSE    | male   | devi      | 9876604312 |       101 |
| 192011461 | venu   | CSE    | male   | kalyan    | 7305883388 |       102 |
| 192011450 | ramesh | EEE    | male   | jagadeesh | 8785574321 |       100 |
+-----------+--------+--------+--------+-----------+------------+-----------+
6 rows in set (0.00 sec)

mysql>