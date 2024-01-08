#날짜 : 2024/01/08
#이름 : 오아람
#내용 : 교재 Ch03 SQL기본문법


#손코딩 p111
use market_db;

#손코딩 p112
select *from `member`;

#손코딩 p114
select `mem_name` from `member`;

#손코딩 p115
select `addr`,`debut_date`,`mem_name` from `member`;

#손코딩 p116
select *from `member` where `mem_name`='블랙핑크';

#손코딩 p117
select * from `member` where `mem_number`=4;
select `mem_id`,`mem_name` from `member` where `height`<=162;
select `mem_name`,`height`,`mem_number` from `member` where `height`>=165 and mem_number>6;

#손코딩 p118
select `mem_name`,`height`,`mem_number` from `member` where `height`>=165 or `mem_number`>6;
select `mem_name`,`height` from `member` where `height`>=163 and `height`<=165;
select `mem_name`,`height` from `member` where `height` between 163 and 165;

#손코딩 p119
select `mem_name`,`addr` from `member`
where `addr`='경기' or `addr`='전남' or `addr`='경남';

select `mem_name`,`addr` from `member`
where `addr` in('경기', '전남','경남');

select * from `member` where `mem_name` like '우%';

#손코딩 p120
select * from `member` where `mem_name` like '__핑크';

#손코딩 p125
select `mem_id`,`mem_name`,`debut_date` from `member`
order by `debut_date`;

#손코딩 p126
select `mem_id`,`mem_name`,`debut_date`
from `member`
order by debut_date desc;

#손코딩 p127
select `mem_id`,`mem_name`,`debut_date`,`height`
from `member`
where `height`>=164
order by `height` desc;

select `mem_id`,`mem_name`,`debut_date`,`height`
from `member`
where `height`>=164
order by `height` desc, `debut_date` asc;

#손코딩 p128
select * from `member`
limit 3,5;

select `mem_name`,`debut_date` from `member`
order by `debut_date`
limit 3;

#손코딩 p129
select `mem_name`,`height`
from `member`
order by `height` desc
limit 3,2;

select `addr` from `member`;

#손코딩 p130
select `addr` from `member` order by `addr`;

select distinct `addr` from `member`;

#손코딩 p131

select `mem_id`,`amount` from  `buy`
order by `mem_id`;

#손코딩 p132
select `mem_id`,sum(`amount`)  as '합계' from `buy`
group by `mem_id`;

select `mem_id` '회원 아이디', sum(`amount`) '총 구매 개수'
from `buy` group by `mem_id`;

#손코딩 p133

select `mem_id`'회원아이디',sum(`price`*`amount`)'총 구매 금액'
from `buy` group by `mem_id`;

select avg(`amount`) '평균구매 개수'from `buy`;

#손코딩 p134

select count(*) from `member`;

select count(phone1) '연락처가 있는 회원'from `member`;

select `mem_id` '회원 아이디',sum(`price`*`amount`)'총 구매 금액'
from `buy`
group by `mem_id`;

#손코딩 p135
select `mem_id` '회원 아이디',sum(`price`*`amount`)'총 구매 금액'
from `buy`
group by `mem_id`
having sum(`price`*`amount`)>1000;

#손코딩 p136

select `mem_id` '회원 아이디', sum(`price`*`amount`)'총 구매 금액'
from `buy`
group by `mem_id`
having sum(`price`*`amount`)>1000
order by sum(`price`*`amount`) desc;


#손코딩 p141
use market_db;
create table `hongong1`(
`toy_id` int,
`toy_name` char(4),
`age` int
);

insert into `hongong1` (`toy_id`,`toy_name`) values (2,'버즈');

insert into `hongong1` (`toy_name`,`age`,`toy_id`) values('제시',20,3);

#손코딩 p142
create table `hongong2`(
`toy_id` int auto_increment primary key,
`toy_name` char(4),
`age` int
);

insert into `hongong2` values(null,'보핍',25);
insert into `hongong2` values(null,'슬링키',22);
insert into `hongong2` values(null,'렉스',21);
select *from `hongong2`;

select last_insert_id();

#손코딩 p143

alter table `hongong2` auto_increment=100;
insert into `hongong2` values (null,'재남',35);
select * from `hongong2`;

create table `hongong3`(
`toy_id` int auto_increment primary key,
`toy_name` char(4),
`age` int
);

alter table `hongong3` auto_increment=1000;
set @@auto_increment_increment=3;

show global variables;

#손코딩 p144

insert into `hongong3` values (null,'토마스',20);
insert into `hongong3` values(null,'제임스',23);
insert into `hongong3` values(null,'고든',25);

select * from `hongong3`;

#손코딩 p145
select count(*) from world.city;#db이름.테이블이름

desc world.city;#desc: describe의 약자로 테이블의 구조를 출력해주는 기능(create tableㄹ을 어떻게 했는지 보여줌)

select * from world.city limit 5;

#손코딩 p146

create table `city_popul`(
city_name char(35),
population int
);


insert into `city_popul`
select `name`,` population` from` world.city`;


#손코딩 p147
use `market_db`;
update `city_popul`
set `city_name`='서울'
where `city_name`='seoul';

select * from `city_popul` where `city_name`='서울';

#손코딩 p148
update `city_popul`
set `city_name`='뉴욕',`population`=0
where `city_name`='New York';

select * from `city_popul` where `city_name`='뉴욕';
update `city_popul` set `city_name`='서울';

#손코딩 p149
update `city_popul` set `population`=`population`/1000;
select *from `city_popul` limit 5;

delete from city_popul where city_name like 'New%';


#손코딩 p150
delete from city_popul where city_name like 'New%'
limit 5;

#손코팅 p151

create table big_table1(select * from world.city, sakila.country);
create table big_table2(select * from world.city, sakila.country);
create table big_table3(select * from world.city, sakila.country);
select count(*) from big_table1;

delete from big_table1;
drop table big_table2;
truncate table big_table3;