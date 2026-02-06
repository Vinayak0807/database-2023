INSERT INTO employees
(employee_id, name, email, salary, department, age, phone_number)
VALUES

(6, 'Rahul', 'rahul@gmail.com', 600, 'IT', 25, '9000000006'),
(7, 'Anita', 'anita@gmail.com', 650, 'HR', 26, '9000000007'),
(8, 'Rohit', 'rohit@gmail.com', 700, 'Finance', 27, '9000000008'),
(9, 'Neha', 'neha@gmail.com', 550, 'Sales', 24, '9000000009'),
(10, 'Karan', 'karan@gmail.com', 720, 'Marketing', 28, '9000000010'),
(11, 'Pooja', 'pooja@gmail.com', 580, 'Admin', 23, '9000000011'),
(12, 'Amit', 'amit@gmail.com', 750, 'IT', 29, '9000000012'),
(13, 'Ritu', 'ritu@gmail.com', 610, 'HR', 26, '9000000013'),
(14, 'Deepak', 'deepak@gmail.com', 800, 'Finance', 30, '9000000014'),
(15, 'Simran', 'simran@gmail.com', 540, 'Sales', 22, '9000000015'),
(16, 'Arjun', 'arjun@gmail.com', 770, 'Marketing', 28, '9000000016'),
(17, 'Vikas', 'vikas@gmail.com', 690, 'Admin', 27, '9000000017'),
(18, 'Meena', 'meena@gmail.com', 560, 'IT', 24, '9000000018'),
(19, 'Raj', 'raj@gmail.com', 820, 'HR', 31, '9000000019'),
(20, 'Kavita', 'kavita@gmail.com', 600, 'Finance', 25, '9000000020'),
(21, 'Nikhil', 'nikhil@gmail.com', 730, 'Sales', 29, '9000000021'),
(22, 'Sonia', 'sonia@gmail.com', 580, 'Marketing', 26, '9000000022'),
(23, 'Pankaj', 'pankaj@gmail.com', 710, 'Admin', 28, '9000000023'),
(24, 'Asha', 'asha@gmail.com', 640, 'IT', 27, '9000000024'),
(25, 'Manoj', 'manoj@gmail.com', 760, 'HR', 30, '9000000025');


select department, count(salary) as total_salary
from employees
where salary >500
group by department
order by total_salary;
select name ,salary from employees
where salary >700
select * from employees
where age >27
select * from employees
where department ='IT';
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    product_weight VARCHAR(50),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
insert into products(product_id,product_name,product_weight,employee_id)
VALUES
(1, 'Rice', '25kg', 1),
(2, 'Wheat', '10kg', 2),
(3, 'Sugar', '5kg', 3),
(4, 'Salt', '1kg', 1),
(5, 'Oil Can', '2L', 2),
(6, 'Milk Powder', '500g', 4),
(7, 'Tea', '250g', 5),
(8, 'Coffee', '200g', 3),
(9, 'Biscuits', '150g', 1),
(10, 'Soap Box', '5pcs', 2),
(11, 'Shampoo', '180ml', 4),
(12, 'Toothpaste', '120g', 5),
(13, 'Detergent', '1kg', 3),
(14, 'Butter', '500g', 2),
(15, 'Cheese', '200g', 1),
(16, 'Juice Pack', '1L', 4),
(17, 'Noodles', '300g', 5),
(18, 'Chips', '100g', 3),
(19, 'Chocolate', '90g', 2),
(20, 'Bread', '400g', 1);
select * from employees
INSERT INTO employees (employee_id, name)
VALUES 
(5,'sunny');
select * from employees as e
inner join products as p
on e.employee_id = p.employee_id;

