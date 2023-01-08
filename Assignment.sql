alter table customer1 add postalcode int
alter table customer1 add country1 varchar(20)
alter table customer1 drop column country1
insert into Customer1 values(4,'Akash','ak@gmail.com',26,'Norway','Banglore',12130)
update Customer1 set postalcode=121100 where cid=1
update Customer1 set postalcode=121110 where cid=2
update Customer1 set postalcode=121120 where cid=3
update Customer1 set country1='india' where cid=1
update Customer1 set country1='usa' where cid=2
update Customer1 set country1='AUS' where cid=3

select * from Customer1
--1 select  the city column from the customers table
select city from Customer1

--2select all the different values from the cities column in the customer table
select distinct city from customer1

--select all the records where the city column has the value latur
select * from Customer1 where city='Latur'

--4 use not keyword to select to select all records where city is not nashik
select * from Customer1 where city not in ('nashik')

--5 select all records where the id column has the value 3
select * from Customer1 where cid=3
--6 select all records where the city column has the value latur and the postalcode column value 121110
select * from Customer1 where city='nashik' and postalcode=121110

--7 select all records where the city column has the value latur or nashik
select * from Customer1 where city='latur' or city='nashik'

--8 select all from the customers table sort the result alphabetically by the column city
select  * from Customer1 order by city 

--9 select all from the customers table sort the result  reverse alphabetically by the column city
select * from Customer1 order by city desc

--10 select all from the customers table sort the result alphabetically by the column country,then by the column city
select * from Customer1 order by country

--11 select all records from the customers where the postalcode column is empty 
select * from Customer1 where postalcode is null

--12 select all records from the customers where the postalcode column is not empty
select * from Customer1 where postalcode is not null

--13 set the value of the city columns to oslo but only the ones where the country column has the value 'norway'
update Customer1 set city='oslo' where country ='norway'

--14 delete all the record from  the customers table where the country value norway
delete Customer1 where country='norway'

--15 use the min function to select the record  with the smallest value of the age column
select min(age)  as minage from Customer1

--16 use sql function to select record with the highest value of the age column 
select max(age) as maxage from Customer1

--17 use the correct function to return the number of records that have the age value set to 22
select count(age) as cage from Customer1 where age=22 

--18 use sql function to calculate the average age of all customers
select avg(age) as avgage from Customer1

--19 use sql function to calculate the sum of all age
select sum(age) as sumage from Customer1
--20 select all records where the value city column starts with letter 'a'
select * from Customer1 where city like 'a%'
--21 select all records where the value city column ends with letter 'a'
select * from Customer1 where city like '%a'
--22 select all records where the value city column contains the letter 'a'
select * from Customer1 where city like '%a%'
--23 select all records where the value city column starts with letter 'a' and ends with 'b'
select * from Customer1 where city like 'a%b'

--24 select all records where the value city column does not starts with letter 'a'
select * from Customer1 where city not like'a%'

--25 select all records where the second letter of city is an 'a'
select * from Customer1 where city like '_a%'

--26 select all  records where the firt letter of city is an 'a' 'c' or 's' 
select * from Customer1 where city like '[acs]%'

--27 select all records where the first letter of the city starts with anything from 'a' to 'f'
select * from Customer1 where city like '[a to f ]%' 

--28 select all records where the first letter of city is not an 'a' or 'c' or an 'f'
select * from Customer1 where city not like '[acf]%'

--29 use the in operator to select all the records where the country is either 'norway' or 'france'
select * from Customer1 where city in ('Norway','Latur')

--30 use the in operator to select all the records where the country is not 'norway' not 'france'
select * from Customer1 where city not in ('Norway','Latur')

--31 use the between operator to select all the records where the value of the price column is between 10 and 20
select * from Customer1 where age between 20 and 25

--32  use the between operator to select all the records where the value of the price column is not between 10 and 20
select * from Customer1 where age not between 20 and 25

--33 use the between operator to select all the records 
-- where the value of the city column is alphabetically between latur and nashik
select * from Customer1 where city between 'latur' and 'nashik' order by city

--34 when displaying the customers table make an alias of the postalcode column, 
--the column should be called pno instead
select postalcode as pno from Customer1

--35 when displaying the customers table ,refer to the table as consumers instead of customers
select consumers.* 
from Customer1 consumers

--36 list the number of customers in each country
select country,COUNT(cid) as noofcustomer
from Customer1
group by country

--37 list the number of customers in each country,
--order by country with the most customer first
select country,COUNT(cid) as noofcustomer
from Customer1
group by country
order by country desc

--38 write the correct sql statement to create a new database called testdb
create table testdb(
id int,
name varchar(20)
)
sp_help testdb
--39 write the correct sql statement to delete database table testdb
drop table testdb

--40 Add column of type DATE called Birthday in person table
alter table customer1 add Birthday DATE
update Customer1 set Birthday=DATEADD('0,0,20-08-1999') where cid==1

