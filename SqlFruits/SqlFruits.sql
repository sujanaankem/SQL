create table fruits(
id int,
name varchar(20),
price int,
quantity varchar(10)
);

insert into fruits(id,name,price,quantity)
values

(1,"Apple",200,"1kg"),
(2,"Mango",300,"14pices"),
(3,"Orange",150,"1kg"),
(4,"DragonFruit",300,"1kg"),
(5,"Banana",50,"6pices")

update fruits
set price=60
where name="Banana";


delete fruits where id=3;
select * from fruits


create table juices(
    juice_id int,
    juice_name varchar,
    juice_price varchar,
    Available_time varchar,
    location varchar(50)
);
select * from juices
insert into juices() 