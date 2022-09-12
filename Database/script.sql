create database `find flat system`

use `find flat system`;

create table customer(customer_id int primary key,namefirst varchar(40),namelast varchar(40),dob date,occupation varchar(30),city varchar(40),age int ,gender varchar(10),state varchar(40),email varchar(50),isdeleted tinyint);

insert into Customer values(1,"Ajinkya","Bhosale","1999-05-14","mcs","Nashik",23,"male","maharashatra","ajinkya@gmail.com",0);

insert into Customer values(2,"Kishor","Janjal","1998-02-14","entc","Sambhajinagar",24,"male","maharashatra","kihsor@gmail.com",0);

