select * from Dept
select * from Employee1
alter table Employee1 drop column did
delete Employee1 where salary is null
alter table Employee1 add did int

update Employee1 set city='pune' where id=3
update Employee1 set city='Nashik' where id is null
update Employee1 set id=5 where salary is null
update Employee1 set did=1 where ename='Abhi'
update Employee1 set did=3 where id=2
update Employee1 set id=3 where ename='Aarav'
update Employee1 set did=4 where id=4

insert into Employee1 values(5,'Akash','Nashik',40000,2)
insert into Employee1 values(6,'Akshay','Nagar',20000,1)
insert into Employee1 values(7,'Amol','Nashik',45000,3)
insert into Employee1 values(8,'sanket','jalana',22000,4)
insert into Employee1(id) values(9)
insert into Employee1(id) values(10)
select e.*,d.dname
from Employee1 e
inner join Dept d on e.did=d.did

select e.*,d.dname
from Employee1 e
left join Dept d on e.did=d.did

select e.*,d.dname
from Employee1 e
right join Dept d on e.did=d.did

select e.*,d.dname
from Employee1 e
full join Dept d on e.did=d.did

create table Product(
id int,
name varchar(20)
)
create table size(
id int,
size varchar(10)
)
insert into size values(1,'m')
insert into size values(1,'xl')
insert into size values(1,'xxl')
insert into size values(1,'m')
select * from product

insert into product values(1,'T-shirt')
insert into product values(2,'shirt')
insert into product values(3,'pant')
insert into product values(4,'jeans-pant')

select * from product cross join size

select sum(salary) as 'sal' from Employee1
select avg(salary) as 'avg' from Employee1
select max(salary) as 'max' from Employee1
select min(salary) as 'min' from Employee1
select count(salary) as 'count' from Employee1

