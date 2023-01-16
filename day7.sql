--subquery
select * from Employee1 where salary=
(select max(salary) from Employee1 where salary<
(
select max(salary) from Employee1
))


--disple emp who get the more salary than empid 11
select * from Employee1 where salary=
(
select max(salary) from Employee1 where id >8
)

select * from dept
--emp who get less than avg salary of hr dept
select * from Employee1 where salary <
(
select avg(salary) from Employee1 where did=
(
select did from Dept where dname='hr'
)
)

--select the emp whose country is same as emp id is 3
select * from Employee1 where city=
(
select city from Employee1 where id=3
)

--display avg salary of all department
select avg(salary) from Employee1 where did in
(
select did from Dept
)
select * from Employee1
-- update table using subquery
update Employee1 set salary=salary+(salary*0.20) where did in (
select did from Dept where dname='hr')

create table product1(
pid int,
name varchar(20),
price numeric
)
create table Order1(
id int,
name varchar(20),
sp numeric
)
select * from product1
insert into product1 values(1,'T-shirt',1000)
insert into product1 values(2,'watch',2000)
insert into product1 values(3,'bat',1500)
update product1 set pid=2 where name='watch'
update product1 set pid=3 where name='bat'
select * from order1
insert into order1 values(1,'T-shirt',5000)
insert into order1 values(2,'watch',1000)
insert into order1 values(3,'bat',700)

insert into Order1 select 
select pid from product1 where price >1000