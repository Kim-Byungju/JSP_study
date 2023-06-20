use studyDB;
show tables;

create table members(
	mno		integer 	not null	comment '회원일련번호',
	email	varchar(40) not null	comment '이메일',
	pwd		varchar(15)	not null	comment '암호',
	mname	varchar(50) not null    comment	'이름',
	cre_date datetime   not null    comment '가입일',
	mod_date datetime   not null    comment '마지막 변경일'
)comment '회원정보';

alter table members
	add constraint pk_members
		primary key(mno);
		
alter table members
	modify column mno integer not null auto_increment;
	
-- 나중에 unique 제약조건 추가

-- 등록
INSERT INTO MEMBERS(EMAIL,PWD,MNAME,CRE_DATE,MOD_DATE)
	VALUES ('admin@test.com','1234','관리자',now(),now());
INSERT INTO MEMBERS(EMAIL,PWD,MNAME,CRE_DATE,MOD_DATE)
	VALUES ('psj@test.com','1234','홍길동',now(),now());
INSERT INTO MEMBERS(EMAIL,PWD,MNAME,CRE_DATE,MOD_DATE)
	VALUES ('ktg@test.com','1234','김태균',now(),now());	
		
-- 전체 검색
SELECT * FROM MEMBERS ORDER BY MNO DESC;	

-- 특정검색
SELECT MNO,EMAIL,MNAME,CRE_DATE FROM MEMBERS WHERE MNO=1;
--SELECT MNO,EMAIL,MNAME,CRE_DATE FROM MEMBERS WHERE EMAIL= ? AND PWD=?;

-- 수정
--UPDATE MEMBERS SET EMAIL=?,MNAME=?,MODE_DATE=NOW() WHERE MNO=?

-- 삭제
--DELETE FROM MEMBERS WHERE MNO=?;







