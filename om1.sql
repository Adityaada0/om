
CREATE DATABASE  OM  ;
USE om;
create table sales_order(
order_no varchar(10),
name varchar(20),
order_qty varchar(20),
order_display varchar(20),
price varchar(30)
);
insert into sales_order(order_no ,name ,order_qty,order_display,price) values (001,'hp_laptop', 150,200,500),
(002,'redmi_mobile', 200,300,400),
(011,'redmi_phones', 250,560,25000),
(012,'Micromax_tablet', 200,150,40000),
(021,'microbulk',500,1000,100000),
(022,'iphone', 500,15000,16000);
select * from sales_order;