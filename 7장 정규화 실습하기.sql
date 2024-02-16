#날짜 : 2024/01/18
#이름 : 오아람
#내용 : 7장 정규화 실습하기


#비정규형 테이블
drop table `bookorder`;

create table `BookOrder`(
`orderno`	int,
`orderdate`	date,
`userid`	varchar(10),
`username`	varchar(10),
`useraddr`	varchar(50),
`bookno`	int,
`bookname`	varchar(20),
`count`		int,
`price`		int
);

select* from `bookorder`;


insert into `bookorder`values(10001,now(),'a101','김유신','김해',101,'프로그래밍',1,28000);
insert into `bookorder`values(10002,now(),'a102','김춘추','경주',101,'프로그래밍',1,28000);
insert into `bookorder`values(10002,now(),'a102','김춘추','경주',102,'자료구조',2,160000);
insert into `bookorder`values(10003,now(),'a103','장보고','완도',102,'자료구조',2,32000);
insert into `bookorder`values(10004,now(),'a104','강감찬','서울',110,'데이터베이스',2,25000);
insert into `bookorder`values(10005,now(),'a105','이순신','서울',110,'데이터베이스',1,25000);
insert into `bookorder`values(10005,now(),'a105','이순신','서울',102,'자료구조',1,16000);

insert into `book` values(101,'프로그래밍');
insert into `book` values(102,'자료구조');
insert into `book` values(110,'데이버베이스');

insert into `user` values('10001','2024-01-12','a101');
insert into `user` values('10002','2024-01-12','a102');
insert into `user` values('10003','2024-01-12','a103');
insert into `user` values('10004','2024-01-12','a104');
insert into `user` values('10005','2024-01-12','a105');



