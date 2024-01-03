#날짜 : 2024/01/02
#이름 : 오아람
#내용 : 2장 SQL 기초

#실습 2-1 한줄 복사 CTL+D
CREATE TABLE `User1` (
`uid` VARCHAR(10),
`name` VARCHAR(10),
`hp` CHAR(13),
`age` INT
);

DROP TABLE `User1`;


#실습 2-2
insert into `User1` value ('A101','김유신','010-1234-1111',25);
insert into `User1` value ('A102','김춘추','010-1234-2222',23);
insert into `User1` value ('A103','장보고','010-1234-3333',32);
insert into `User1` (`uid`,`name`,`age`)values ('A104','강감찬',45);
insert into `User1` set `uid`='A105',`name`='이순신',`hp`='010-1234-5555';



#실습 2-3
select *from `User1`;
select *from `User1` where `name`='김춘추';
select * from `User1` where `age`<30;
select *from `User1` where `age`>=30;
select `uid`,`name`,`age` from `User1`;

#실습 2-4
update `user1` set `hp`='010-1234-4444' where `uid`='A104';
update `user1` set `age`=51 where `uid`='A105';
update `user1` set `hp`='010-1234-1001',`age`=27 where `uid`='A101';


#실습 2-5
delete from `user1` where `uid` ='A101';
delete from `user1` where `uid`='A102' and `age`=25;
delete from `user1` where `age`>=30;

#실습 2-6

alter table `user1` add `gender` tinyint;
alter table `user1` add `birth` char(10) after `name`;
alter table `user1` modify `gender` char(1);
alter table `user1` modify `age` tinyint;
alter table `user1` drop `gender`;

#실습 2-7
create table `user1copy` like `user1`;
insert into `user1copy` select * from `user1`;

#실습 2-8
CREATE TABLE `TblUser` (
`user_id` VARCHAR(10),
`user_name` VARCHAR(10),
`user_hp` CHAR(13),
`user_age` INT,tblproduct
`user_addr` VARCHAR(13)
);
insert into `TblUser` set `user_id`='p101',`user_name`='김유신',`user_hp`='010-1234-1001',`user_age`=25,`user_addr`='경남 김해시';
insert into `TblUser` set `user_id`='p102',`user_name`='김춘추',`user_hp`='010-1234-1002',`user_age`=23,`user_addr`='경남 경주시';
insert into `TblUser` set `user_id`='p103',`user_name`='장보고',`user_age`=31,`user_addr`='전남 완도군';
insert into `TblUser` set `user_id`='p104',`user_name`='강감찬',`user_addr`='서울시 중구';
insert into `TblUser` set `user_id`='p105',`user_name`='이순신',`user_hp`='010-1234-1005',`user_age`=50;



CREATE TABLE `TblProduct` (
`prod_no` INT,
`prod_name` VARCHAR(10),
`prod_price` INT,
`prod_stock` INT,
`prod_company` VARCHAR(13),
`prod_date` date
);

insert into `TblProduct` set `prod_no`='1001',`prod_name`='냉장고',`prod_price`='800000',`prod_stock`=25,`prod_company`='LG전자',`prod_date`='2022-01-06';
insert into `TblProduct` set `prod_no`='1002',`prod_name`='노트북',`prod_price`='1,200000',`prod_stock`=120,`prod_company`='삼성전자',`prod_date`='2022-01-07';
insert into `TblProduct` set `prod_no`='1003',`prod_name`='모니터',`prod_price`='350000',`prod_stock`=35,`prod_company`='LG전자',`prod_date`='2023-01-13';
insert into `TblProduct` set `prod_no`='1004',`prod_name`='세탁기',`prod_price`='1000000',`prod_stock`=80,`prod_company`='삼성전자',`prod_date`='2021-01-01';
insert into `TblProduct` set `prod_no`='1005',`prod_name`='컴퓨터',`prod_price`='1500000',`prod_stock`=20,`prod_company`='삼성전자',`prod_date`='2023-10-01';
insert into `TblProduct` set `prod_no`='1006',`prod_name`='휴대폰',`prod_price`='950000',`prod_stock`=102;




#실습 2-9

select * from `TblUser`;
select `user_namne` from `TblUser`;
select `user_name`,`user_hp` from `TblUser`;
select *from `TblUser` where `user_id`='p102';
select *from `TblUser` where `user_addr`='부산시 금정구';
select *from `TblUser` where `user_age`>30;
select *from `TblUser` where `user_hp` Is null;
update `TblUser` set `user_age`=42 where `user_id`='p104';
update `TblUser` set `user_addr`='부산시 진구' where `user_id`='p105';
delete from `TblUser` where `user_id`='p103';

select *from `TblProduct`;
select `prod_name` from `TblProduct`;
select `prod_name` `prod_company`,`prod_price` from `TblProduct`;
select * from `TblProduct` where `prod_company`='LG전자';
select *from `TblProduct` where `prod_company`='삼성전자';
update `TblProduct` set `prod_company`='삼성전자',
`prod_date`='2024-01-01' where `prod_no`=1006;


SELECT `PROD_NAME`from`tblproduct` where`PROD_STOCK`='102';

SELECT *FROM `TBLPRODUCT`;

DELETE FROM `tblproduct` WHERE `PROD_NAME`='휴대폰';

update `TBLPRODUCT` SET `PROD_STOCK`='120' WHERE `PROD_NO`='1001'; 

ALTER TABLE `TBLPRODUCT` modify `PROD_DATE` date;





