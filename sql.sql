create schema wolken;
create table sailor(
sid int not null,
sname varchar(20),
rating double,
primary key(sid)

);
select * from sailor;
insert into sailor
values (101,'Ram',5),(102,'Asha',4.3),(103,'Ram',3),(104,'John',4),(105,'Asha',4);

select sid,sname
from sailor
where rating>3;

select distinct sname
from sailor;

update sailor
set rating=4.2
where sid=105;

select SUM(rating) as total
from sailor;
select Count(*) as total
from sailor;

select avg(rating) as average
from sailor;

select *
from sailor
order by sname;

alter table wolken.sailor
add column age int;

update sailor
set age=12
where sid=101;

update sailor
set age=34
where sid=102;

update sailor
set age=73
where sid=103;

update sailor
set age=45
where sid=104;

update sailor
set age=34
where sid=105;

select count(sname) as no_Of_sailors
from sailor
group by age>50
order by no_Of_sailors;

CREATE TABLE `wolken`.`boats` (
  `bid` INT NOT NULL,
  `bname` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`bid`));
  
  insert into boats
  values(201,"Destiny","black"),(202,"Escape","blue"),(203,"Destiny","blue"),(204,"Liberty","black"),(205,"Escape","black");
  
  select * from boats;
  
  create table reserves(
  sid int not null,
  bid int not null,
  `day` Date,
  foreign key(sid) references sailor(sid),
  foreign key(bid) references boats(bid));
  
  select * from reserves;
   insert into reserves
   values(101,201,'1998-10-10'),(101,202,'2000-12-12'),(102,203,'2020-10-25'),(102,205,'2010-05-13'),(103,201,'2017-07-03'),(104,202,'2017-07-03'),(104,202,'2017-07-03');
   select * from sailor left join reserves on sailor.sid=reserves.sid;
   select  * from sailor left outer join reserves on sailor.sid=reserves.sid;
   select * from sailor right join reserves on sailor.sid=reserves.sid;
    select * from reserves right join sailor on sailor.sid=reserves.sid;
     select * from sailor inner join reserves on sailor.sid=reserves.sid;
      select * from sailor join reserves on sailor.sid=reserves.sid;
      select s.sid,sname,bname,r.`day`
      from sailor s,boats b,reserves r
      where s.sid=r.sid;
   
   
  
  
  













