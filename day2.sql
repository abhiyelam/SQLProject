create table Customer1(
cid int primary key,
name varchar(20) not null,
cemail varchar(20) unique,
age int check (age>21),
country varchar(20) default 'india',
)
select * from Customer1
insert into Customer1(cid,name,cemail,age)values(1,'Abhi','yelamabhi@gmail.com',23)
insert into Customer1(cid,name,cemail,age)values(2,'manish','manish@gmail.com',22)
insert into Customer1(cid,name,cemail,age)values(3,'Aarav','yelamarav@gmail.com',25)

select * from Employee1

create table Employee1(
id int,
ename varchar(20),
city varchar(20),
salary numeric(12,2)
)

Drop table Employee1


insert into Employee1(id,ename,city,salary)values(1,'Abhi','pune',25000),
(2,'manish','Latur',20000),
(3,'Aarav','Hyderabad',30000),
(4,'Vishal','pune',35000)

alter table Employee1 add constraint pk_Employee1 primary key(id)
alter table Employee1 add constraint uk_city Unique(city)

update Employee1 set salary=40000,city='Bangalor' where id=1
update Employee1 set salary=25000 where id=3
update Employee1 set salary=30000 where id=2
update Employee1 set city='Chennai' where id=4

select id,ename,city,salary from Employee1
select salary,ename from Employee1 where salary>30000