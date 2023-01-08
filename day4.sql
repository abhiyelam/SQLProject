
select * from Employee1 order by ename desc
select * from Employee1 order by salary

update Employee1 set city=null where id=3
select * from Employee1 

select * from Employee1 where city is null
select * from Employee1 where city is not null

select * from Employee1 order by salary desc offset 1 rows fetch next 3 rows only

select * from Customer1
alter table customer1 add city varchar(20)
update customer1 set city='Latur' where cid=1
update customer1 set city='Nashik' where cid=2
update customer1 set city='Nagar' where cid=3