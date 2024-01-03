#날짜 : 2024/01/03
#이름 : 오아람
#내용 : 4장 SQL 고급


#실습 4-1

CREATE TABLE `Member`(
`uid` varchar(10) primary key,
`name` varchar(10) not null,
`hp`  varchar(13) unique not null,
`pos` varchar(10) default '사원',
`dep` int,
`rdate` datetime not null
);

create table `Department`(
`depNo` int primary key,
`name` varchar(10) not null,
`tel` varchar(12) not null
);

create table `Sales`(
`seq` int primary key auto_increment,
`uid` varchar(10) not null,
`year` year not null,
`month` int not null,
`sale` int not null
);

select * from `Member`;
select * from `Department`;
select * from `Sales`;

#실습 4-2

insert into `Member` values('a101','박혁거세','010-1234-1001','부장','101','2020-11-19 11:39:48');
insert into `Member` values('a102','김유신','010-1234-1002','차장','101','2020-11-19 11:39:48');
insert into `Member` values('a103','김춘추','010-1234-1003','사원','101','2020-11-19 11:39:48');
insert into `Member` values('a104','장보고','010-1234-1004','대리','102','2020-11-19 11:39:48');
insert into `Member` values('a105','강감찬','010-1234-1005','과장','102','2020-11-19 11:39:48');
insert into `Member` values('a106','이성계','010-1234-1006','차장','103','2020-11-19 11:39:48');
insert into `Member` values('a107','정철','010-1234-1007','차장','103','2020-11-19 11:39:48');
insert into `Member` values('a108','이순신','010-1234-1008','부장','104','2020-11-19 11:39:48');
insert into `Member` values('a109','허균','010-1234-1009','부장','104','2020-11-19 11:39:48');
insert into `Member` values('a110','정약용','010-1234-1010','사원','105','2020-11-19 11:39:48');
insert into `Member` values('a111','박지원','010-1234-1011','사원','105','2020-11-19 11:39:48');

insert into `Sales` set `uid`='a101',`year`=2018,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a102',`year`=2018,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a103',`year`=2018,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a104',`year`=2018,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a105',`year`=2018,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a101',`year`=2018,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a102',`year`=2018,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a103',`year`=2018,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a104',`year`=2018,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a105',`year`=2019,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a106',`year`=2019,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a101',`year`=2019,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a102',`year`=2019,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a103',`year`=2019,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a104',`year`=2019,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a107',`year`=2019,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a102',`year`=2019,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a103',`year`=2019,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a104',`year`=2020,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a105',`year`=2020,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a106',`year`=2020,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a102',`year`=2020,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a104',`year`=2020,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a105',`year`=2020,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a106',`year`=2020,`month`=1,`sale`=98100;
insert into `Sales` set `uid`='a107',`year`=2020,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a102',`year`=2020,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a103',`year`=2020,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a104',`year`=2020,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a105',`year`=2020,`month`=2,`sale`=98100;
insert into `Sales` set `uid`='a108',`year`=2020,`month`=2,`sale`=98100;



insert into `Department`values('101','영업1부','051-512-1001');
insert into `Department`values('102','영업2부','051-512-1002');
insert into `Department`values('103','영업3부','051-512-1003');
insert into `Department`values('104','영업4부','051-512-1004');
insert into `Department`values('105','영업5부','051-512-1005');
insert into `Department`values('106','영업지원부','051-512-1006');
insert into `Department`values('107','인사부','051-512-1007');

drop table `Sales`;


#실습 4-3
#실습 4-4
#실습 4-5
#실습 4-6
#실습 4-7
#실습 4-8
#실습 4-9
#실습 4-10
#실습 4-11
#실습 4-12