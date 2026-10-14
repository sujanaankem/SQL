create table studentdata(
  studId int,
  name varchar(20)
);

create table festdata(
  festId int,
  items varchar(20)
);

insert into studentdata(studId,name)
values
(1,'sujana'),
(2,'kavya');

insert into festdata(festId,items)
values
(1,'dance'),
(2,'games'),
(3,'singe');




select * from studentdata as s
left join festdata as f
on s.studId=f.festId;

select * from studentdata as s
right join festdata as f
on s.studId=f.festId;

select * from studentdata as s
inner join festdata as f
on s.studId=f.festId;

select * from studentdata as s
full join festdata as f
on s.studId=f.festId;

full (or) outer join [Now it is not working] (or) full outer join