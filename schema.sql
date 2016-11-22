/**
* Lb Admin
* @author evilnapsis
**/
create database lbadmin;
use lbadmin;



create table kind(
	id int not null auto_increment primary key,
	name varchar(50) not null
);

insert into kind (name) value ("Administrador");
insert into kind (name) value ("Usuario");


create table user(
	id int not null auto_increment primary key,
	bio text,
	image varchar(255),
	name varchar(50) not null,
	lastname varchar(50) not null,
	username varchar(50),
	email varchar(255) not null,
	password varchar(60) not null,
	phone varchar(255),
	address varchar(255),
	code varchar(20),
	status boolean not null default 0,
	kind boolean not null default 0,
	created_at datetime not null
);

insert into user(email,password,status,kind,created_at) value ("admin","90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad",1,1,NOW());
