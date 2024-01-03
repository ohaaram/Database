#날짜: 2024/01/03
#이름 : 오아람
#내용 : 3장 제약조건



#실습 3-1
CREATE TABLE `user2`(
`uid` varchar(10)primary key,
`name` varchar(10),
`birth` date,
`addr` varchar(50)
);

drop table `user2`;

#실습 3-2

alter table `user2` modify `birth` date;

insert into `user2` set `uid`='A101',`name`='김유신',`birth`='1968-05-09',`addr`='경남 김해시';
insert into `user2` set `uid`='A102',`name`='김춘추',`birth`='1972-11-23',`addr`='경남 경주시';
insert into `user2` set `uid`='A103',`name`='장보고',`birth`='1978-03-01',`addr`='전남 완도군';
insert into `user2` set `uid`='A105',`name`='강감찬',`birth`='1979-08-16',`addr`='서울시 관악구';
insert into `user2` set `uid`='A106',`name`='이순신',`birth`='1981-05-23',`addr`='부산 진구';

select * from `user2`;
#실습 3-3

create table `user3`(
`uid` varchar(10) primary key,
`name` varchar(10),
`birth` char(10),
`hp` char(13) unique,
`addr` varchar(50)
);

select * from `user3`;

drop table `user3`;

update `user3`set `hp`='010-1234-2222' where `uid`='A105';

insert into `user3` values('A101','김유신','1968-05-09','010-1234-1111','경남 김해시');
insert into `user3` values('A102','김춘추','1972-11-23','010-1234-2222','경남 경주시');
insert into `user3` values('A103','장보고','1978-03-01','010-1234-3333','전남 완도군');
insert into `user3` values('A104','강감찬','1979-08-16','010-1234-4444','서울시 관악구');
insert into `user3` values('A105','이순신','1981-05-23','010-1234-5555','부산 진구');
insert into `user3` values('A106','안중근','1981-05-21',null,'부산 진구');

#실습 3-4

create table `parent`(
`pid` varchar(10) primary key,
`name` varchar(10),
`birth` char(10),
`addr` varchar(100)
);


create table `child`(
`cid` varchar(10) primary key,
`name` varchar(10),
`hp` char(13) unique,
`parent` varchar(10),
foreign key (`parent`) references `parent`(`pid`)
);

#실습 3-5
drop table `parent`;
drop table `child`;

select * from `parent`;
select * from `child`;

alter table `parent` modify `birth` date;

update `child` set `parent`='p102' where `cid`='c102';

#실습 3-6
insert into `child` values ('c101','김철수','010-1234-1001','p101');
insert into `child` values ('c102','김영희','010-1234-1002','p102');
insert into `child` values ('c103','강철수','010-1234-1003','p103');
insert into `child` values ('c104','이철수','010-1234-1004','p107');

insert into `parent` values ('p101','김유신','1968-05-09','경남 김해시');
insert into `parent` values ('p102','김춘추','1968-05-09','경남 김해시');
insert into `parent` values ('p103','장보고','1968-05-09','경남 김해시');
insert into `parent` values ('p104','강감찬','1968-05-09','경남 김해시');
insert into `parent` values ('p105','이순신','1968-05-09','경남 김해시');



#실습 3-7

create table `user4`(
`uid` varchar(10) primary key,
`name` varchar(10) not null,
`gender` char(1),
`age` int default 1,
`hp` char(13) unique,
`addr` varchar(20)
);

select * from `user4`;

#실습 3-8

insert into `user4` values('A101','김유신','M',25,'010-1234-1111','경남 깅해시');
insert into `user4` values('A102','김춘추','M',23,'010-1234-2222','경남 경주시');
insert into `user4` values('A103','장보고','M',35,'010-1234-3333','전남 완도군');
insert into `user4` values('A104','강감찬','M',42,'010-1234-4444','서울시 관악구');
insert into `user4` (`uid`,`name`,`gender`,`hp`,`addr`)
values ('A105','이순신','M','010-1234-5555','부산시 진구');
insert into `user4` values('A106','신사임당','F',32,'null','강릉시');
insert into `user4` values('A107','허년설힌','F',27,'null','경기도 광주시');

#실습 3-9

create table `user5`(
`seq` INT PRIMARY KEY AUTO_INCREMENT,
`name`  VARCHAR(10) NOT NULL,
`gender` CHAR(1) CHECK (`gender` IN ('M', 'F')),
`age` INT DEFAULT 1 CHECK (`age` > 0 AND `age` < 100),
`addr` VARCHAR(20)
);


drop table `user5`;

select * from `user5`;

insert into `user5` (`name`, `gender`,`age`,`addr`) values('김유신','M',25,'경남 김해시');
insert into `user5` (`name`, `gender`,`age`,`addr`) values('김춘추','M',23,'경남 경주시');
insert into `user5` (`name`, `gender`,`age`,`addr`) values('장보고','M',35,'전남 완도군');
insert into `user5` (`name`, `gender`,`age`,`addr`) values('강감찬','M',42,'서울시 관악구');
insert into `user5` (`name`, `gender`,`age`,`addr`) values('이순신','M',51,'부산시');
insert into `user5` (`name`, `gender`,`age`,`addr`) values('신사임당','F',2,'강릉시');





