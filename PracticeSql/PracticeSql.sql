create table data(
 id int,
 name varchar(10),
 phone int
);

select * from data;

insert into data(id,name,phone)
values
(1,'kavya',454545454),
(2,'sujana',545454545),
(3,"likitha",22422),
(4,"likitha",56454545);

select * from data;
update data
set id=5
where phone=22422;

select * from data;
 delete from data where id=4;

 select * from data;
select id,name
from data
order by phone;

select * from data;
select distinct id
from data ;
