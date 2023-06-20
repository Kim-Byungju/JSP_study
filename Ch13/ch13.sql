use memberDB;

create table members(
	id varchar(20) not null,
	pass varchar(20) not null,
	name varchar(20) not null,
	phone varchar(20) not null,
	email varchar(50) not null,
	reg_date datetime,
	primary key(id)
);

insert into members(id,pass,name,phone,email) values('admin','1234','관리자','02-3333-7777','admin@mycompany.com');
insert into members(id,pass,name,phone,email) values('kbj','1234','관리자','010-6665-3812','xbj3812@gmail.com');

select * from members;
update members set pass='1111' where id='kbj';
delete from members where id='kbj';