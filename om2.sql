-- Alter table 
USE om;
alter table sales_order add column order_delay varchar(20);
update sales_order set order_delay= 60 where order_no =1;
update sales_order set order_delay= 65 where order_no =2;
update sales_order set order_delay= 70 where order_no =3;
update sales_order set order_delay= 75 where order_no =4;
update sales_order set order_delay= 80 where order_no =5;
update sales_order set order_display= 50 where order_display = 60;
select * from sales_order;
