create database inventory;
use inventory;
create table customer(
customer_id varchar(30) primary key,
first_name varchar(30),
last_name varchar(30),
address varchar(40),
contact_number varchar(30)
);
create table employee(
employee_id varchar(30) primary key,
first_name varchar(30),
last_name varchar(30),
address varchar(40),
contact_number varchar(10),
position varchar(30)
);

create table supplier(
supplier_id varchar(30) primary key,
supplier_name varchar(30),
supplier_address varchar(40),
contact_number varchar(10),
brand_id varchar(20) references orders(brand_id)
);

create table orders(
order_id varchar(30) primary key,
invoice_number varchar(30),
or_number int,
total_price float,
order_date date,
quantity int,
brand_id varchar(20),
customer_id varchar(30) references customer(customer_id),
employee_id varchar(30) references employee(employee_id)
);

create table cashorder(
cashorder_id varchar(30) primary key,
invoice_number varchar(30),
model varchar(30),
price float,
brand_name varchar(20),
serial_number int,
unit_type varchar(30) 
);

create table product(
product_id varchar(30) primary key,
date_received date,
brand_id varchar(30),
model varchar(30),
price float,
brand_name varchar(20),
serial_number int,
availability varchar(20),
date_sold date,
customer_id varchar(30) references customer(customer_id),
unit_type varchar(30)
);

create table chargeorder(
chargeorder_id varchar(30) primary key,
invoice_number int,
model varchar(30),
price float,
brand_name varchar(20),
serial_number int,
down_payment float,
month_term int,
monthly_payment float,
unit_type varchar(30)
);

INSERT INTO customer (customer_id, first_name, last_name, address, contact_number)
VALUES
    ('1', 'John', 'Doe', '123 Main St', '5551234998'),
    ('2', 'Jane', 'Smith', '456 Oak Ave', '5555678984'),
    ('3', 'Bob', 'Johnson', '789 Elm St', '555901265876'),
    ('4', 'Mary', 'Williams', '321 Pine Ave', '5551233456'),
    ('5', 'Tom', 'Brown', '654 Maple St', '5555647890'),
    ('6', 'Samantha', 'Davis', '987 Cedar Rd', '5558692345'),
    ('7', 'David', 'Wilson', '246 Birch Ln', '5557656789'),
    ('8', 'Emily', 'Taylor', '369 Spruce Dr', '5559870123'),
    ('9', 'Michael', 'Martin', '582 Laurel Ave', '5551234567'),
    ('10', 'Sarah', 'Anderson', '815 Oakwood Blvd', '5556658901');

INSERT INTO employee (employee_id, first_name, last_name, address, contact_number, position)
VALUES
    ('1', 'John', 'Doe', '123 Main St', '5553451234', 'Manager'),
    ('2', 'Jane', 'Smith', '456 Oak Ave', '5558765678', 'Sales Associate'),
    ('3', 'Bob', 'Johnson', '789 Elm St', '5558999012', 'Accountant'),
    ('4', 'Mary', 'Williams', '321 Pine Ave', '5551233456', 'Marketing Specialist'),
    ('5', 'Tom', 'Brown', '654 Maple St', '5559997890', 'IT Support'),
    ('6', 'Samantha', 'Davis', '987 Cedar Rd', '5551232345', 'Human Resources'),
    ('7', 'David', 'Wilson', '246 Birch Ln', '5559876789', 'Sales Manager'),
    ('8', 'Emily', 'Taylor', '369 Spruce Dr', '5551230123', 'Customer Service Rep'),
    ('9', 'Michael', 'Martin', '582 Laurel Ave', '5559574567', 'Software Developer'),
    ('10', 'Sarah', 'Anderson', '815 Oakwood Blvd', '5552568901', 'Project Manager');
    
INSERT INTO supplier (supplier_id, supplier_name, supplier_address, contact_number, brand_id)
VALUES
    ('1', 'ABC Supplies', '123 Main St', '555-1234', 'BR001'),
    ('2', 'XYZ Distributors', '456 Oak Ave', '555-5678', 'BR002'),
    ('3', 'Acme Products', '789 Elm St', '555-9012', 'BR003'),
    ('4', 'Global Enterprises', '321 Pine Ave', '555-3456', 'BR001'),
    ('5', 'Innovative Solutions', '654 Maple St', '555-7890', 'BR004'),
    ('6', 'Quality Manufacturing', '987 Cedar Rd', '555-2345', 'BR002'),
    ('7', 'Superior Supplies', '246 Birch Ln', '555-6789', 'BR003'),
    ('8', 'Top Notch Distributors', '369 Spruce Dr', '555-0123', 'BR004'),
    ('9', 'Value Products', '582 Laurel Ave', '555-4567', 'BR001'),
    ('10', 'Worldwide Imports', '815 Oakwood Blvd', '555-8901', 'BR002');
 
 INSERT INTO orders (order_id, invoice_number, or_number, total_price, order_date, quantity, brand_id, customer_id, employee_id)
VALUES
    ('1', 'INV001', 12345, 100.00, '2021-01-01', 1, 'BR001', 'C001', 'E001'),
    ('2', 'INV002', 23456, 200.00, '2021-01-02', 2, 'BR002', 'C002', 'E002'),
    ('3', 'INV003', 34567, 150.00, '2021-01-03', 3, 'BR003', 'C003', 'E003'),
    ('4', 'INV004', 45678, 300.00, '2021-01-04', 4, 'BR001', 'C004', 'E004'),
    ('5', 'INV005', 56789, 250.00, '2021-01-05', 5, 'BR004', 'C005', 'E005'),
    ('6', 'INV006', 67890, 180.00, '2021-01-06', 6, 'BR002', 'C006', 'E006'),
    ('7', 'INV007', 78901, 400.00, '2021-01-07', 7, 'BR003', 'C007', 'E007'),
    ('8', 'INV008', 89012, 220.00, '2021-01-08', 8, 'BR004', 'C008', 'E008'),
    ('9', 'INV009', 90123, 120.00, '2021-01-09', 9, 'BR001', 'C009', 'E009'),
    ('10', 'INV010', 01234, 280.00, '2021-01-10', 10, 'BR002', 'C010', 'E010');

INSERT INTO cashorder (cashorder_id, invoice_number, model, price, brand_name, serial_number, unit_type)
VALUES
    ('1', 'INV001', 'Model A', 100.00, 'Brand X', 1234, 'Desktop'),
    ('2', 'INV002', 'Model B', 200.00, 'Brand Y', 2345, 'Laptop'),
    ('3', 'INV003', 'Model C', 150.00, 'Brand Z', 3456, 'Tablet'),
    ('4', 'INV004', 'Model D', 300.00, 'Brand X', 4567, 'Desktop'),
    ('5', 'INV005', 'Model E', 250.00, 'Brand W', 5678, 'Laptop'),
    ('6', 'INV006', 'Model F', 180.00, 'Brand Y', 6789, 'Desktop'),
    ('7', 'INV007', 'Model G', 400.00, 'Brand Z', 7890, 'Tablet'),
    ('8', 'INV008', 'Model H', 220.00, 'Brand W', 8901, 'Laptop'),
    ('9', 'INV009', 'Model I', 120.00, 'Brand X', 9012, 'Desktop'),
    ('10', 'INV010', 'Model J', 280.00, 'Brand Y', 0123, 'Laptop');
    
INSERT INTO product (product_id, date_received, brand_id, model, price, brand_name, serial_number, availability, date_sold, customer_id, unit_type)
VALUES
    ('1', '2021-01-01', 'BR001', 'Model A', 100.00, 'Brand X', 1234, 'In Stock', NULL, NULL, 'Desktop'),
    ('2', '2021-01-02', 'BR002', 'Model B', 200.00, 'Brand Y', 2345, 'In Stock', NULL, NULL, 'Laptop'),
    ('3', '2021-01-03', 'BR003', 'Model C', 150.00, 'Brand Z', 3456, 'In Stock', NULL, NULL, 'Tablet'),
    ('4', '2021-01-04', 'BR001', 'Model D', 300.00, 'Brand X', 4567, 'In Stock', NULL, NULL, 'Desktop'),
    ('5', '2021-01-05', 'BR004', 'Model E', 250.00, 'Brand W', 5678, 'In Stock', NULL, NULL, 'Laptop'),
    ('6', '2021-01-06', 'BR002', 'Model F', 180.00, 'Brand Y', 6789, 'In Stock', NULL, NULL, 'Desktop'),
    ('7', '2021-01-07', 'BR003', 'Model G', 400.00, 'Brand Z', 7890, 'In Stock', NULL, NULL, 'Tablet'),
    ('8', '2021-01-08', 'BR004', 'Model H', 220.00, 'Brand W', 8901, 'In Stock', NULL, NULL, 'Laptop'),
    ('9', '2021-01-09', 'BR001', 'Model I', 120.00, 'Brand X', 9012, 'In Stock', NULL, NULL, 'Desktop'),
    ('10', '2021-01-10', 'BR002', 'Model J', 280.00, 'Brand Y', 0123, 'In Stock', NULL, NULL, 'Laptop');
    
INSERT INTO chargeorder (chargeorder_id, invoice_number, model, price, brand_name, serial_number, down_payment, month_term, monthly_payment, unit_type)
VALUES
    ('1', 1001, 'Model A', 500.00, 'Brand X', 1234, 100.00, 12, 33.33, 'Desktop'),
    ('2', 1002, 'Model B', 700.00, 'Brand Y', 2345, 150.00, 18, 33.33, 'Laptop'),
    ('3', 1003, 'Model C', 800.00, 'Brand Z', 3456, 200.00, 24, 33.33, 'Tablet'),
    ('4', 1004, 'Model D', 900.00, 'Brand X', 4567, 250.00, 30, 33.33, 'Desktop'),
    ('5', 1005, 'Model E', 1000.00, 'Brand W', 5678, 300.00, 36, 33.33, 'Laptop'),
    ('6', 1006, 'Model F', 1200.00, 'Brand Y', 6789, 350.00, 12, 91.67, 'Desktop'),
    ('7', 1007, 'Model G', 1400.00, 'Brand Z', 7890, 400.00, 18, 91.67, 'Tablet'),
    ('8', 1008, 'Model H', 1600.00, 'Brand W', 8901, 450.00, 24, 91.67, 'Laptop'),
    ('9', 1009, 'Model I', 1800.00, 'Brand X', 9012, 500.00, 30, 91.67, 'Desktop'),
    ('10', 1010, 'Model J', 2000.00, 'Brand Y', 0123, 550.00, 36, 91.67, 'Laptop');
    
#1 Retrieve the first name, last name, and number of orders for each customer:

SELECT c.first_name, c.last_name, COUNT(o.order_id) AS num_orders
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

#2  Retrieve the first name, last name, and total amount spent by each customer:

SELECT c.first_name, c.last_name, SUM(o.total_price) AS total_spent
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

#3 Retrieve the position and the average total price of orders for each position:

SELECT e.position, AVG(o.total_price) AS avg_total_price
FROM employee e
LEFT JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.position;

#4 Retrieve the first name, last name, and the number of orders handled by each employee:

SELECT e.first_name, e.last_name, COUNT(o.order_id) AS num_orders
FROM employee e
LEFT JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id;

#5 Retrieve the supplier name and the number of orders for each supplier:

SELECT s.supplier_name, COUNT(o.order_id) AS num_orders
FROM supplier s
LEFT JOIN orders o ON s.brand_id = o.brand_id
GROUP BY s.supplier_id;

#6 Retrieve the supplier name and the total amount of orders for each supplier:

SELECT s.supplier_name, SUM(o.total_price) AS total_orders
FROM supplier s
LEFT JOIN orders o ON s.brand_id = o.brand_id
GROUP BY s.supplier_id;

#7 Retrieve the brand name and the total amount of orders for each brand:

SELECT p.brand_name, SUM(o.total_price) AS total_orders
FROM orders o
LEFT JOIN product p ON o.brand_id = p.brand_id
GROUP BY p.brand_name;

#8 Retrieve the brand name and the number of orders for each brand:

SELECT p.brand_name, COUNT(o.order_id) AS num_orders
FROM orders o
LEFT JOIN product p ON o.brand_id = p.brand_id
GROUP BY p.brand_name;

#9 Retrieve the model and the total price for all cash orders:

SELECT model, SUM(price) AS total_price FROM cashorder 
WHERE invoice_number LIKE 'C%' GROUP BY model;

#10 Retrieve the model and the monthly payment for all charge orders:

SELECT model, 0.00 AS monthly_payment
FROM chargeorder
WHERE down_payment = price;

#11 Retrieve the model, brand name, and availability of all products that have not been sold yet:

SELECT p.model, p.brand_name, p.availability
FROM product p
LEFT JOIN orders o ON p.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

#12 Retrieve the model, brand name, and customer name for all products that have been sold:

SELECT p.model, p.brand_name, c.first_name, c.last_name
FROM product p
JOIN orders o ON p.product_id = o.order_id
JOIN customer c ON o.customer_id = c.customer_id
WHERE p.date_sold IS NOT NULL;

#13 Retrieve the model, brand name, and total amount paid for all charge orders:

SELECT co.model, co.brand_name, (co.down_payment + (co.month_term * co.monthly_payment)) AS total_paid
FROM chargeorder co;

#14 Retrieve the first name, last name, and total amount spent by each customer, along with the number of orders they have placed:

SELECT c.first_name, c.last_name, COUNT(o.order_id) AS num_orders, SUM(o.total_price) AS total_spent
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;


#15 Retrieve the order ID, brand name, model, and supplier name for all orders:

SELECT o.order_id, b.brand_name, o.brand_id, s.supplier_name
FROM orders o
JOIN supplier s ON o.brand_id = s.brand_id
JOIN cashorder c ON o.order_id = c.invoice_number
JOIN product b ON o.brand_id = b.brand_id;

#16 Retrieve the order ID, brand name, model, and supplier name for all orders that were handled by an employee in the position 'Sales Associate':

SELECT o.order_id, s.supplier_name, p.model, p.brand_name
FROM orders o
JOIN product p ON o.order_id = p.product_id
JOIN supplier s ON p.brand_id = s.brand_id
JOIN employee e ON o.employee_id = e.employee_id
WHERE e.position = 'Sales Associate';

#17 Retrieve the charge order ID, model, brand name, and total amount paid for all charge orders, along with the model, brand name, and price for all cash orders:

SELECT co.chargeorder_id, co.model, co.brand_name, (co.down_payment + (co.month_term * co.monthly_payment)) AS total_paid, ca.model AS cash_model, ca.brand_name AS cash_brand, ca.price
FROM chargeorder co
LEFT JOIN cashorder ca ON co.model = ca.model AND co.brand_name = ca.brand_name;

#18 Retrieve the charge order ID, model, brand name, and total amount paid for all charge orders, along with the model, brand name, and price for all cash orders that have the same model:

SELECT co.chargeorder_id, co.model, co.brand_name, SUM(co.down_payment + (co.monthly_payment * co.month_term)) AS total_amount_paid, ca.model, ca.brand_name, ca.price
FROM chargeorder co
JOIN cashorder ca ON co.model = ca.model AND co.brand_name = ca.brand_name
GROUP BY co.chargeorder_id, co.model, co.brand_name, ca.model, ca.brand_name, ca.price;

    

select * from employee;
select * from customer;
select * from orders;
select * from supplier;
select * from product;
