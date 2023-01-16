create table book(
bid int,
bname varchar(20),
aid int,
price int,
publisheddate date
)
alter table book alter column aid int not null
--alter table book add constraint pk_book1 primary key (aid)
alter table book alter column bid int  not null 
alter table book add constraint pk_book primary key (bid)
insert into book values(1,'mahatma gandhi',101,400,'1-01-1960')
insert into book values(2,'java',102,500,'2-02-1990')
insert into book values(3,'C#',103,600,'1-01-2000')
insert into book values(4,'python',104,200,'05-02-1991')

select * from book 
select * from author

--author table
create table author(
aid int,
aname varchar(20),
phno varchar(20),
email varchar(20),
Adds varchar(20),
city varchar(20)
)
alter table author alter column aname varchar(100)
alter table author drop column email 
alter table author add email varchar(70)
alter table author drop column phno
insert into author values (101,'james gosling','AT-yelamwadi','nagar','jamesgosling@gmail.com')
insert into author values (102,'james gosling','AT-hadpsar','Pune','jamesgosling@gmail.com')
insert into author values (103,'manish','AT-begampet','Bangalore','manish@gmail.com')
insert into author values (104,'Akash','AT-ammerpet','Hyderabad','akash@gmail.com')

alter table author alter column aid int not null
alter table author add constraint pk_author primary key(aid)

update author set aname='mahatama gandhi',email='mg@gmail.com' where aid=101

--award table
select * from award

create table award(
awardid int not null,
awardtypeid int primary key,
aid int,
bid int,
award_year int
)
insert into award values(12101,10,101,1,1990)
insert into award values(12102,20,102,1,2000)
insert into award values(12103,30,103,1,1980)
insert into award values(12104,40,104,1,1970)
 
--awardmaster table
select * from awardmaster
create table awardmaster(
awardtypeid int,
awardname varchar(20), 
awardprice int
)
insert into awardmaster values(10,'arjun',100000)
insert into awardmaster values(20,'padmashri',200000)
insert into awardmaster values(30,'bharatratna',300000)
insert into awardmaster values(40,'arjun',100000)

alter table awardmaster add constraint fk_masteraward foreign key(awardtypeid) references award(awardtypeid)
select * from Employee1

--1 write query to show book name,author name and award name for all books which has receiv ed any award
select b1.bname,au.aname,am.awardname 
from book b1 inner join author au on b1.aid=au.aid inner join award aw on aw.aid=au.aid
inner join awardmaster am on am.awardtypeid=aw.awardtypeid

--2 write query to update author name of authors whose book price is > 500.prefix author name with "honourable"
update author set aname=concat('honourable',' ',aname) where aid in(select aid from book where price >300)

--3 write query to display authors and number of books written by that author.
--show author who has written maximum books at top
select aname from author where aid=(select aid,count(bname) from book group by aid) 

--4 write query to select book name 5 highest price
select bname from book order by price desc offset 3 rows

--5 select list of books which have same price as book 'diary of ann frank'.


--6 increase price of all  books written by 'chetan bhagat' by 5%
update book set price=price+(price*0.05) where aid=
(select aid from author where aname='mahatama gandhi')

--7 show award name and number of book which got these award
select am.awardname,count(b1.bname) as countbook
from awardmaster am inner join award aw on am.awardtypeid=aw.awardtypeid
inner join book b1 on aw.bid=b1.bid
group by awardname


--8 delete all books written by 'chetan bhagat'
delete from book where aid= (select aid from author where aname='chetan bhagat')

--9 show names of author and number of books written by that author
select count(bname) from book where aid=(select aid aname from author group by aname)

--10 show names of author whose books are published before year 2020
select aname from author where aid=(select aid from book where publisheddate='1960')

--11 create view to show name of book and year when it has received award
select b1.bname,aw.award_year
from book b1 inner join award aw on b1.bid=aw.bid

--12 delete all authors whose no book is published in year 2020
delete from author where aid in
(
select aid from book where year(cast(publisheddate as date))
not in (year(cast('1960' as date)))
)