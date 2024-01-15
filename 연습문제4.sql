#실습 4-1
create database `BookStore`;
CREATE USER 'bookstore'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'bookstore'@'%';
grant all privileges on `bookstore`.* to 'oor92'@'%';
flush privileges;

use `bookstore`;

#실습 4-2

create table `Customer`(
`custId` int primary key auto_increment,
`name` varchar(10) not null,
`address` varchar(20) default null,
`phone` varchar(13) default null
);

create table `book`(
`bookid` int primary key,
`bookname` varchar(20) not null,
`pulisher` varchar(20) not null,
`price` int default null
);

create table `order`(
`orderid` int primary key auto_increment,
`custid` int not null,
`bookid` int not null,
`saleprice` int not null,
`orderdate` date not null
);

#실습 4-3

insert into `customer` values(null,'박지성','영국 맨체스타','000-5000-0001');
insert into `customer` values(null,'김연아','대한민국 서울','000-6000-0001');
insert into `customer` values(null,'장미란','대한민국 강원도','000-7000-0001');
insert into `customer` values(null,'추신수','미국 클리블랜드','000-8000-0001');
insert into `customer` values(null,'박세리','대한민국 대전',null);

insert into `book` values(1,'축구의 역사','굿스포츠',7000);
insert into `book` values(2,'축구아는 여자','나무수',13000);
insert into `book` values(3,'축구의 이해','대한미디어',22000);
insert into `book` values(4,'골프 바이블','대한미디어',35000);
insert into `book` values(5,'피겨 교본','굿스포츠',8000);
insert into `book` values(6,'역도 단계별기술','굿스포츠',6000);
insert into `book` values(7,'야구의 추억','이상미디어',20000);
insert into `book` values(8,'야구를 부탁해','이상미디어',13000);
insert into `book` values(9,'올림픽 이야기','삼성당',7500);
insert into `book` values(10,'olympic Champoins','pearson',13000);


insert into `order` values(null,1,1,6000,'2014-07-01');
insert into `order` values(null,1,3,21000,'2014-07-03');
insert into `order` values(null,2,5,8000,'2014-07-03');
insert into `order` values(null,3,6,6000,'2014-07-04');
insert into `order` values(null,4,7,20000,'2014-07-05');
insert into `order` values(null,1,2,12000,'2014-07-07');
insert into `order` values(null,4,8,13000,'2014-07-07');
insert into `order` values(null,3,10,12000,'2014-07-08');
insert into `order` values(null,2,10,7000,'2014-07-09');
insert into `order` values(null,3,8,13000,'2014-07-10');

#실습 4-4

select * from `customer`;

#실습 4-5
select * from `book`;

#실습 4-6
select `price`,`bookname` from `book`;

#실습 4-7
select * from `book`;

#실습 4-8
select `pulisher` from `book`;


#실습 4-9
select distinct `pulisher` from `book`;


#실습 4-10
select * from `book` where `price`>=20000;

#실습 4-11
select * from `book` where `price`<20000;

#실습 4-12
select * from `book` where `price` between 10000 and 20000;  

#실습 4-13
select `bookid`,`bookname`,`price` from `book` where `price` between 15000 and 30000;

#실습 4-14
select * from `book` where `bookid` in(2,3,5);

#실습 4-15
select * from `book` where `bookid`%2=0;

#실습 4-16
select * from `customer` where `name`like'박%';

#실습 4-17
select * from `customer` where `address` like'대한민국%'; 

#실습 4-18
select * from `customer` where `phone`is not null;

#실습 4-19
select * from `book` where `pulisher`in('굿스포츠','대한미디어');

#실습 4-20
select `pulisher` from `book` where `bookname`='축구의 역사';

#실습 4-21
select `pulisher` from `book` where `bookname`like'축구%';

#실습 4-22
select * from `book`where substring(`bookname`,2,1)='구';

#실습 4-23
select * from `book` where `bookname`like'축구%' and `price`>=20000;

#실습 4-24
select * from `book` order by `bookname`;

#실습 4-25
select * from `book` order by `price`,`bookname`;

#실습 4-26
select * from `book` order by `price` desc,`pulisher`;

#실습 4-27
select * from `book` order by `price` desc limit 3;

#실습 4-28
select * from `book` order by `price` limit 3;

#실습 4-29
select sum(`saleprice`)'총 판매액' from `order`;

#실습 4-30
select sum(`saleprice`) '총 판매액',avg(`saleprice`)'평균값',min(`saleprice`)'최저가',max(`saleprice`)'최고가' from `order`;

#실습 4-31
select count(`orderid`)'판매건수' from `order`;

#실습 4-32
select `bookid`,replace(`bookname`,'야구','농구') 'bookname',`pulisher`,`price`from `book`;

#실습 4-33
select custid, count(orderid)'수량' from `order` where `saleprice`>=8000 group by `custid` having `수량`>1;

#실습 4-34

select * from `customer`as a join `order` as b on a.custid=b.custid;

#실습 4-35

select * from `customer`as a join `order` as b on a.custid=b.custid
order by b.custid;

#실습 4-36
select `name`,`saleprice` from `customer`as a join `order` as b on a.custid=b.custid;

#실습 4-37
select name, sum(saleprice) from `customer`as a join `order` as b on a.custid=b.custid
group by `name`
order by name;

#실습 4-38
select `name`,`bookname` from `book` as a join `order` as b on a.bookid=b.bookid join `customer` as c on b.custid=c.custid;

#실습 4-39
select `name`,`bookname` from `book` as a join `customer`as b on a.bookid=b.custId where `price`=20000;

#실습 4-40
select `name`,`saleprice` from `customer`as a left join `order`as b on a.custid=b.custid;

#실습 4-41
select sum(`saleprice`)'총매출' from `book` as a join `order` as  b on a.bookid=b.bookid join `customer` as c on b.custid=c.custid
where `name`='김연아';


#실습 4-42
select `bookname` from `book` order by `price`desc limit 1;

#실습 4-43
select `name` from `customer` as a left join `order` as b on a.custId=b.custid where `orderdate` is null;

#실습 4-44
insert into `book` values(11,'스포츠 의학','한솔의학서적',null);
select * from `book`;

#실습 4-45
update `customer`set `address`='대한민국 부산' where `custid`=5;
select * from `customer`;

#실습 4-46
delete from `customer` where `custid`=5;
select * from `customer`;
