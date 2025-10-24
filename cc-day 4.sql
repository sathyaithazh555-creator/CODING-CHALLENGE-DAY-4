create database e_commerces;
use e_commerces;
create table products(
product_id int primary key,
product_name varchar(100),
price decimal(10,2),
quantity int );
insert into products(product_id,product_name,price,quantity) values
(1,"fan" , 8500,3),
(2,"fridge" , 23000,2),
(3,"washing_machine" , 28000,1),
(4,"table", 1800,5),
(5,"television" , 28000,3),
(6,"microwave_oven" , 42000,2);
select*from products;

create table employee(
employee_id int ,
employee_name varchar(200),
gender enum ("M" , "F"),
salary decimal(10,2));
insert into employee (employee_id,employee_name,gender,salary)values
(11,"pavi" , "F" , 34000),
(12,"depi" , "F" , 35000),
(13,"durga" , "F" , 25000),
(14,"barath", "M" , 48000),
(15,"raju" , "M" , 30000),
(16,"valar" , "F" , 29000),
(17,"kumar" , "M",32000),
(18,"babu" , "M" , 35500),
(19,"dinesh" , "M" , 40000),
(20,"gowtham" , "M" , 36000);
SELECT * from employee;
select product_id ,product_name,price from products  order by price  desc limit 3;


select count(*) as total_employee ,
sum(salary) as total_salary,
avg(salary) as avg_salary,
min(salary)  min_salary,
max(salary) max_salary from employee;


select product_name,count(price) total_products from products group by product_name having count(price) < 30000;
