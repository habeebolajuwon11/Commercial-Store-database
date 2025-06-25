create database Commercial_store;
use Commercial_store;
create table products (
product_id int primary key,
product_name varchar(100),
category varchar(50),
unit_Price int(10)
);
create table customers (
customer_id int primary key,
customer_type varchar(20)
);
create table payments (
payment_id int primary key,
method varchar(30)
);

create table sales (
sale_id int primary key,
sale_date date,
product_id int,
customer_id int,
payment_id int,
quantity int,
total_price int(20),
foreign key (product_id) references products(product_id),
foreign key (customer_id) references customers(customer_id),
foreign key (payment_id) references payments(payment_id)
);
insert into products(
product_id ,
product_name ,
category ,
unit_price ) values
(1001,"CocaCola","Drinks",20),
(1002,"Kelloggs Cornflakes","Cereal",10),
(1003,"Books","Stationery",10),
(1004,"Maggi Cubes","Seasoning",5),
(1005,"Honeywell Semovita","Flour",20),
(1006,"Peak Milk","Diary Product",22),
(1007,"Lipton","Tea",14);
select * from products;
delete from products where product_id =1;
insert into customers(
customer_id,
customer_type ) values
(001,"Regular"),
(002,"Premium"),
(003,"Regular"),
(004,"Wholesale"),
(005,"Regular"),
(006,"Premium"),
(007,"Regular");
select * from customers;

insert into payments (
payment_id,
method ) values
(1,"Cash"),
(2,"Debit Card"),
(3,"Online");
select * from payments;

insert into sales (
sale_id,
sale_date,
product_id,
customer_id,
payment_id,
quantity,
total_price) values
-- (202500,"2025-5-1",1001,001,2,1,300),
(202501,"2025-5-2",1002,002,1,3,30),
(202502,"2025-5-2",1003,003,3,3,30),
(202503,"2025-5-3",1004,004,3,3,15),
(202504,"2025-5-4",1005,005,2,5,100),
(202505,"2025-5-5",1006,006,1,4,88),
(202506,"2025-5-5",1007,007,2,3,42);
select * from sales;

select * from sales left join products on sales.product_id = products.product_id left join payments on sales.product_id=payments.payment_id left join customers on sales.customer_id=customers.customer_id;
