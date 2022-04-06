
MariaDB [db3]> create table customer(cid int,cname char(10),salary int);
Query OK, 0 rows affected (0.26 sec)

MariaDB [db3]> insert into customer values(1,'aiswarya',20000);
Query OK, 1 row affected (0.00 sec)

MariaDB [db3]> insert into customer values(2,'akshay',25000);
Query OK, 1 row affected (0.00 sec)

MariaDB [db3]> commit;
Query OK, 0 rows affected (0.03 sec)

MariaDB [db3]> set autocommit=0;
Query OK, 0 rows affected (0.00 sec)

MariaDB [db3]> insert into customer values(3,'anju',15000);
Query OK, 1 row affected (0.00 sec)

MariaDB [db3]> insert into customer values(4,'arun',17000);
Query OK, 1 row affected (0.00 sec)

MariaDB [db3]> commit;
Query OK, 0 rows affected (0.03 sec)

MariaDB [db3]> select * from customer;
+------+----------+--------+
| cid  | cname    | salary |
+------+----------+--------+
|    1 | aiswarya |  20000 |
|    2 | akshay   |  25000 |
|    3 | anju     |  15000 |
|    4 | arun     |  17000 |
+------+----------+--------+
4 rows in set (0.00 sec)

MariaDB [db3]> delete from customer where cid=4;
Query OK, 1 row affected (0.00 sec)

MariaDB [db3]> select * from customer;
+------+----------+--------+
| cid  | cname    | salary |
+------+----------+--------+
|    1 | aiswarya |  20000 |
|    2 | akshay   |  25000 |
|    3 | anju     |  15000 |
+------+----------+--------+
3 rows in set (0.00 sec)

MariaDB [db3]> rollback;
Query OK, 0 rows affected (0.04 sec)

MariaDB [db3]> select * from customer;
+------+----------+--------+
| cid  | cname    | salary |
+------+----------+--------+
|    1 | aiswarya |  20000 |
|    2 | akshay   |  25000 |
|    3 | anju     |  15000 |
|    4 | arun     |  17000 |
+------+----------+--------+
4 rows in set (0.00 sec)

MariaDB [db3]> savepoint sp1;
Query OK, 0 rows affected (0.00 sec)

MariaDB [db3]> delete from customer where cid=3;
Query OK, 1 row affected (0.00 sec)

MariaDB [db3]> select * from customer;
+------+----------+--------+
| cid  | cname    | salary |
+------+----------+--------+
|    1 | aiswarya |  20000 |
|    2 | akshay   |  25000 |
|    4 | arun     |  17000 |
+------+----------+--------+
3 rows in set (0.00 sec)

MariaDB [db3]> savepoint sp2;
Query OK, 0 rows affected (0.00 sec)

MariaDB [db3]> rollback to sp1;
Query OK, 0 rows affected (0.00 sec)

MariaDB [db3]> select * from customer;
+------+----------+--------+
| cid  | cname    | salary |
+------+----------+--------+
|    1 | aiswarya |  20000 |
|    2 | akshay   |  25000 |
|    3 | anju     |  15000 |
|    4 | arun     |  17000 |
+------+----------+--------+
4 rows in set (0.00 sec)

MariaDB [db3]> 

