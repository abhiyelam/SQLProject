--identity && group by clause 
create table student(
sid int identity(1,1),
sname varchar(20)
)
insert into student values('Abhi')
insert into student values('manish')
insert into student values('Aarav')
select * from student
select * from Employee1
select *from dept

--count the employee which is in  developer deptartment
	select d.dname,count(e.id) as totalemp
	from Employee1 e
	inner join Dept d on e.did=d.did
	where d.dname='developer'
	group by d.dname

--count the employee in each dept
select did,count(id) as totalemp 
from Employee1
group by did

select ename,(avg(salary)) as avgsal
from Employee1
group by ename
having avg(salary) < salary

 select ename from Employee1 where salary < (select  (avg(salary)) as avgsal
from Employee1)
--select employee which is in city india or nasshik and sort this
select city, count(id) as counte 
from Employee1
where city in ('nashik','nagar')
group by city
order by counte

--view
--count the employee in each dept
create view empbydept
as
select did,count(id) as totalemp 
from Employee1
group by did

select * from empbydept
--create view
create view deptwise_empcount
as
select d.dname,count(e.id) as countemp
from Employee1 e
inner join dept d on d.did=e.did
group by d.dname
--call the view
select * from deptwise_empcount