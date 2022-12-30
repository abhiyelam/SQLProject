
create table Emp(
eid int,
name varchar(20),
eage int
)
sp_help Emp
alter table Emp drop column ename 
alter table Emp add ename varchar(40)
alter  table Emp alter column ename varchar(20)

create table Dept(
did int,
dname varchar(20)
)
sp_help Dept
alter table Dept add constraint 
sp_help Customer

select * from Customer
insert into Customer(cid,name,cemail,age)values(1,'Abhi','yelamabhi@gmail.com',23)
insert into Customer(cid,name,cemail,age)values(2,'manish','manish@gmail.com',22)
insert into Customer(cid,name,cemail,age)values(3,'Aarav','yelamarav@gmail.com',25)