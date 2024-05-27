
-- creating database 
create database customer;

-- shoiwng db
show databases;

-- for inserting table or values in any db, first use command
use customer;
show databases;

-- droping the table
drop table customer_info;

-- creating new table in customer db
create table customer_info(
id integer auto_increment, 
first_name varchar(10), 
last_name varchar(10),
salary integer,
primary key (id));

show tables;

-- inserting values in customer_info table
insert into customer_info (
 first_name, 
 last_name, 
 salary)values
 ('adil', 'maqsood',50.000),
 ('ahsan', 'maqsood',60.000),
 ('ahsan', 'khan',60.000),
 ('rohaib', 'qasim',60.000),
 ('hamza', 'khan',null)
 ;
 
 -- updating cutomer_info values
update customer_info set salary=5 where id=5;

-- shoiwng whole table/values
select * from customer_info;

-- adding column
alter table customer_info add email varchar(25);
alter table customer_info add dob date;

## modify column
alter table customer_info modify dob year;

desc customer_info;

create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int);

select * from student;

desc student;

alter table student modify age int not null;

create table person2(
id int not null auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)
);

insert into person2(
first_name,
last_name,
age)values
('adil','maqsood',22),
('AA','maqsood',22),
('l','maqsood',22),
('aAA','maqsood',22),
('adil','maqsood',22)
;

alter table person2 ADD UNIQUE(first_name);
select * from person2;
desc person2;

alter table person add unique(first_name);
alter table person add unique(last_name);

alter table person
add constraint uc_person unique(age, first_name); 
alter table person
drop index last_name;
alter table person
drop index first_name;
desc person;


-- creating person1 table in customers db
create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
constraint pk_person primary key(id, last_name)
);

-- showing schema of person1 table
desc person1;

-- droping primary key 
ALTER TABLE person1
DROP PRIMARY KEY;

