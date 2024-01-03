create table `test1`(
`uid` varchar(10) primary key,
`user_name` varchar(10),
`user_hp` varchar(13) unique,
`user_age` int,
`user_addr` varchar(50)
);

select * from `test1`;

insert into `test1` values('p101','김유신','010-1234-1001',25,'경남 김해시');
insert into `test1` values('p102','김춘추','010-1234-1002',23,'경남 경주시');
insert into `test1` values('p103','장보고',null,31,'전남 완도군');
insert into `test1` values('p104','강감찬',null,null,'서울시 중구');
insert into `test1` values('p105','이순신','010-1234-1005',50,null);

update `test1` set `user_addr`='부산시 해운대구'where `uid`='p105';


create table `test2`(
`uid` int primary key auto_increment,
`prod_name` varchar(10) not null,
`name` varchar(20),
`num` int,
`contry` varchar(10)
);

insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','아이폰xs',100,'미국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','아이폰Max',100,'미국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','아이폰XR',200,'미국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','아이폰X',100,'미국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','갤럭시 노트9',100,'한국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','갤럭시S9 플러스',100,'중국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','갤럭시 J4 플러스',100,'중국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','갤럭시 A9 Pro',100,'일본') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','갤럭시 A9',200,'일본') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','갤럭시 A9 플러스',800,'한국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','갤럭시 A7',300,'베트남') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('sk','갤럭시 J4 플러스',200,'한국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('kt','갤럭시 8',420,'한국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('kt','갤럭시 On7Prime',110,'베트남') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('kt','갤럭시 노트 5',600,'중국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('LG U+','엘지 Q7 BTS 에디션',400,'베트남') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('LG U+','엘지 V40 ThinQ',600,'태국') ;
insert into `test2`(`prod_name`,`name`,`num`,`contry`)values ('LG U+','엘지 Q9',400,'한국') ;

SELECT * FROM `test2`;

select `name` from `test2` where `contry`='베트남';

update `test2` set `contry`='한국' where `num`=600;

alter table `test2` add `sum` int;

update `test2` set `sum`=4930 where `uid`=11;

drop table `salary`;


create table `salary`(
`uid` varchar(10) primary key,
`name` varchar(10) not null,
`tim` varchar(15) not null,
`dep` varchar(15) not null,
`pos` varchar(10) default '사원' not null,
`sal` int
);

select *from `salary`;

insert into `salary`VALUES ('K1501','노준호','영업3팀','영업본부','부장',7080000);
insert into `salary`VALUES ('K1513','김정인','품질경영팀','생산본부','차장',5940000);
insert into `salary`VALUES ('K1521','박해미','영업1팀','영업본부','대리',4330000);
insert into `salary`VALUES ('K1510','남주희','영업3팀','영업본부','차장',6250000);
insert into `salary`VALUES ('K1528','윤갑수','제조팀','생산본부','null',3580000);
insert into `salary`VALUES ('K1509','박소윤','영업2팀','영업본부','차장',6420000);
insert into `salary`(`uid`,`name`,`tim`,`dep`,`sal`)VALUES ('K1533','이상윤','회계팀','경영지원본부',3630000);

delete from `salary` where `uid`='K1501';












