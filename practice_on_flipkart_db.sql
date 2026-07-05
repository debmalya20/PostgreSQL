create table customer(
customer_id Serial primary key,
name varchar(20) not null,
city varchar(20) not null,
signup_date date,
is_prime_member BOOLEAN default FALSE

);

SELECT * FROM CUSTOMER;

INSERT INTO customer (name, city, signup_date, is_prime_member) VALUES
('Rohit Sharma', 'Mumbai', '2021-03-15', TRUE),
('Priya Singh', 'Delhi', '2022-07-01', FALSE),
('Amit Das', 'Kolkata', '2020-11-20', TRUE),
('Sneha Roy', 'Bangalore', '2023-01-10', FALSE),
('Vikram Mehta', 'Pune', '2021-09-05', TRUE),
('Anjali Nair', 'Chennai', '2022-05-18', FALSE),
('Rahul Verma', 'Hyderabad', '2019-12-01', TRUE),
('Pooja Iyer', 'Mumbai', '2023-03-22', FALSE);


 SELECT CUSTOMER_ID,NAME,CITY,SIGNUP_DATE,IS_PRIME_MEMBER FROM CUSTOMER;

 SELECT NAME,CITY FROM CUSTOMER;

 SELECT NAME FROM CUSTOMER WHERE CITY='Mumbai';
 SELECT NAME FROM customer where is_prime_member=True;

 SELECT NAME FROM CUSTOMER WHERE SIGNUP_DATE  > '2022-01-01';
 SELECT NAME,SIGNUP_DATE FROM CUSTOMER ORDER BY SIGNUP_DATE ASC;

 SELECT NAME,IS_PRIME_MEMBER FROM CUSTOMER WHERE IS_PRIME_MEMBER != TRUE;
 
 SELECT NAME,CITY FROM CUSTOMER
 WHERE  CITY IN ('Mumbai','Delhi');

 select name from customer 
 where name like 'A%';


 select city, count(*) as total_customer
 from customer
 group by city;

 select is_prime_member,count(*) as prime_or_non
 from customer
 group by is_prime_member;

 select city , count(*) as total
 from customer
 group by city
 having count(*)>1;

 select city, count(*) as total_customer
 from customer
 group by city;

 select max(signup_date), count (*) as recent_user
 from customer
 where is_prime_member='False';