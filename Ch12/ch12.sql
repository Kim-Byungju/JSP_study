
use myschool;
show tables;
select*from 학생;

create table members(
	id char(10) not null,
	pw varchar(10) not null,
	name varchar (15) not null,
	phone varchar(20),
	address varchar(50)

);

desc members;

insert into members values('2018001','1234','김진호','010-111-1111','영등포');
insert into members values('2018002','2345','김진호','010-222-2222','구로구');
insert into members values('2018003','3456','김진호','010-333-3333','강서구');
insert into members values('2018004','4567','김진호','010-444-4444','강동구');
insert into members values('2018005','5678','김진호','010-555-5555','마포구');
insert into members values('2018006','4561','김진호','010-666-6666','성북구');
insert into members values('2018007','4652','김진호','010-777-7777','은평구');
insert into members values('2018008','8901','김진호','010-888-8888','노원구');
insert into members values('2018009','1123','김진호','010-999-9999','도봉구');
insert into members values('2018010','1112','김진호','010-123-1234','중랑구');

select * from members;
select * from 학생;

create table goodsinfo(
	code char(10) not null primary key,
	thtle varchar(50) not null,
	writer varchar(20) not null,
	price int not null
);

desc goodsinfo;

insert into goodsinfo (code,thtle,writer,price)
	values('1001','자바프로그래밍','홍길동',28000);
insert into goodsinfo (code,thtle,writer,price)
	values('1002','HTML프로그래밍','김길동',20000);
insert into goodsinfo (code,thtle,writer,price)
	values('1003','CSS프로그래밍','강길동',23000);
insert into goodsinfo (code,thtle,writer,price)
	values('1004','JQUERY프로그래밍','권길동',38000);
insert into goodsinfo (code,thtle,writer,price)
	values('1005','JSP','이길동',18000);
	
select * from goodsinfo;

alter table goodsinfo change thtle title varchar(50);


desc 학생b;
drop table 학생b;
select * from 학생;