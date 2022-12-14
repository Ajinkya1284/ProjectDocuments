DROP DATABASE if EXISTS roomies;

create database roomies;

use roomies;

create table owner(owner_id int auto_increment,namefirst varchar(40),namelast varchar(40), 
dob date, occupation varchar(40),city varchar(40),age int,gender varchar(10),state varchar(40),
email varchar(50), isdeleted tinyint, primary key(owner_id));

desc owner;

/*alter table owner change column namefirst namefirst varchar(40);*/

create table user (user_id int auto_increment,namefirst varchar(40),namelast varchar(40), 
dob date, occupation varchar(30),city varchar(40),age int,gender varchar(10),state varchar(40),
email varchar(50), isdeleted tinyint, primary key(user_id));

desc user;

create table owner_phoneno(id int auto_increment, owner_id int, phone varchar(15), 
isdeleted tinyint, primary key(id), foreign key(owner_id) references owner(owner_id));

describe owner_phoneno;

create table user_phoneno(id int auto_increment, user_id int, phone varchar(15), 
isdeleted tinyint, primary key(id), foreign key(user_id) references user(user_id));

describe user_phoneno;

create table owner_address(id int auto_increment,owner_id int, address varchar(100),isdeleted tinyint,
 primary key(id),foreign key(owner_id) references owner(owner_id));

describe owner_address;

create table hostel(hostel_id int auto_increment, owner_id int ,name varchar(60),
total_rooms int, available_rooms int, requirement varchar(30), no_of_singlebed int,
no_of_doublebed int, is_lift_available tinyint, is_canteen_available tinyint, is_tv_available tinyint, is_ac_available tinyint, is_wifi_available tinyint, is_washing_machine_available tinyint,
room_fee float, canteen_fee float, city varchar(30), state varchar(30), zipcode long,
isactive tinyint, isdeleted tinyint, primary key(hostel_id), foreign key(owner_id) references owner(owner_id));

desc hostel;  

create table documents( document_id int auto_increment, name varchar(40),isdeleted tinyint, primary key(document_id));
desc documents;

/*alter table documents change column document_id document_id int auto_increment;*/

create table hostel_documents(id int auto_increment,document_id int , hostel_id int ,
primary key(id),isdeleted tinyint, foreign key(document_id) references documents(document_id),
foreign key(hostel_id) references hostel(hostel_id));

desc hostel_documents;

create table hostel_address(id int auto_increment, hostel_id int , address varchar(100),
primary key(id),isdeleted tinyint, foreign key(hostel_id) references hostel(hostel_id));

desc hostel_address;

create table hostel_review( id int auto_increment, user_id int, hostel_id int,
review varchar(60), ratings decimal(2,1),isdeleted tinyint, primary key(id), foreign key(user_id)references user(user_id),
foreign key(hostel_id) references hostel(hostel_id));

desc hostel_review;


create table hostel_images( id int, hostel_id int, image varchar(200),isdeleted tinyint, primary key(id),
foreign key(hostel_id) references hostel(hostel_id));

desc hostel_images;

create table flat(flat_id int, owner_id int, flat_type varchar(10), requirement varchar(60),
no_of_members int, availability_months int, rent float, is_lift_available tinyint,
furnished_type varchar(40), city varchar(30), state varchar(40), zipcode long, isactive tinyint,
isdeleted tinyint, primary key(flat_id), foreign key(owner_id) references owner(owner_id));

desc flat;

create table flat_documents(id int auto_increment,document_id int , flat_id int ,isdeleted tinyint,
primary key(id), foreign key(document_id) references documents(document_id),
foreign key(flat_id) references flat(flat_id));

desc flat_documents;

create table flat_address(id int auto_increment, flat_id int , address varchar(100),isdeleted tinyint,
primary key(id), foreign key(flat_id) references flat(flat_id));

desc flat_address;

create table flat_review( id int auto_increment, user_id int, flat_id int,
review varchar(60), ratings decimal(2,1),isdeleted tinyint, primary key(id), foreign key(user_id)references user(user_id),
foreign key(flat_id) references flat(flat_id));

desc flat_review;


create table flat_images( id int, flat_id int, image varchar(200),isdeleted tinyint, primary key(id),
foreign key(flat_id) references flat(flat_id));

desc flat_images;

create table report( id int auto_increment, owner_id int, reason varchar(255),isdeleted tinyint,
primary key(id), foreign key(owner_id) references owner(owner_id));

desc report;
