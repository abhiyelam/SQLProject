select * from Employee1
--upper function
select UPPER(ename) as tempname from Employee1

--lower function
select LOWER(ename) as temoname from Employee1

-- substing function
select SUBSTRING(ename,2,5) as tempname from Employee1

--length function
select len(ename) as temp from Employee1

-- trim function
select rTRIM(ename) as tempname from Employee1

--round function
select round(salary,2) from Employee1

--reverse function
select REVERSE(ename) as tempname from Employee1

--cast 
select CAST(current_timestamp as time) as 'time'
select CAST(getdate() as date) as 'todays date' 

--isnull
select ename,ISNULL(city,'not associated') as 'city1' from Employee1

--stored procedure
 select * from Employee1
 create procedure SP_InsertEmployee(
 @id int,
 @ename varchar(20),
 @city varchar(20),
 @salary numeric,
 @did int
 )
 as begin
 insert into Employee1 values (@id,@ename,@city,@salary,@did) 
 return
 end

 exec SP_InsertEmployee
 @id=10,
 @ename='Test',
 @city='Latur',
 @salary=50000,
 @did=2

 --update employee by sp
 create procedure SP_UpdateEmployee(
 @id int,
 @ename varchar(20),
 @city varchar(20),
 @salary numeric,
 @did int
 )
 as begin
 update Employee1 set ename=@ename,city=@city,salary=@salary,did=@did where id=@id
 return
 end

 exec SP_UpdateEmployee
 @id=4,
 @ename='Test',
 @city='Latur',
 @salary=50000,
 @did=2

 --delete
  Alter procedure SP_DeleteEmployee(
 @id int
 )
 as begin
 delete from Employee1  where id=@id
 return
 end

 exec SP_DeleteEmployee
 @id=4

 
 
