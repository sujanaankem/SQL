create table sujanadata(
 id int,
 name varchar(10),
 phone int
);

select * from sujanadata

insert into sujanadata(id,name,phone)
values
(1,'kavya',454545454),
(2,'sujana',545454545),
(3,"likitha",22422),
(4,"likitha",56454545);

select * from sujanadata

update sujanadata

set id=5

where phone=22422

select * from sujanadata

 delete sujanadata where id=4


 select * from sujanadata
