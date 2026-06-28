insert into students(name,age,grade)
values('Deb',20,'A'),
      ('Barna',25,'B')

select * from students #this is for selecting all in table
select name from students; #this is for selecting name form table
select name from students where age = 25; this is how you get conditions
update students
set age = 25;
     this is how you can do update
select * from students;
update students
set age= 25
where name= 'Barna';

select * from students;

update students
set age=20
where name='Deb';

select * from students;

delete from students
where name='Deb';



create table numbers(
id serial,
price numeric(4,2),
rating real
);

alter table numbers
add column age smallint;

insert into numbers(price,rating,age)
values (23.23,3.456,18)
select * from numbers;

--creating a new table

create table about(
code char(5),
email varchar(100),
about text
);
insert into about(code,email,about)
values (23456,'db0668191@gmail.com','Hello, i am learning sql');

select * from about;