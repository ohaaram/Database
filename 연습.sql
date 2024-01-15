insert into `Customer`values('c101','김유신','010-1234-1001','경남 김해시','2023-01-01');
insert into `Customer`values('c102','김춘추','010-1234-1002','경남 경주시','2023-01-02');
insert into `Customer`values('c103','장보고','010-1234-1003','전남 완도군','2023-01-03');
insert into `Customer`values('c104','강감찬','010-1234-1004','서울시 관악구','2023-01-04');
insert into `Customer`values('c105','이순신','010-1234-1005','부산시 금정구','2023-01-05');

insert into `product` values(1,'새우깡',5000,1500,'농심');
insert into `product` values(2,'초코파이',2500,2500,'오리온');
insert into `product` values(3,'포카칩',3600,1700,'오리온');
insert into `product` values(4,'양파링',1250,1800,'농심');
insert into `product` values(5,'죠리퐁',2200,null,'크라운');

insert into `order` set `orderid`='c102',`orderproduct`=3,`ordercount`=2,`orderdate`=now();
insert into `order` set `orderid`='c101',`orderproduct`=4,`ordercount`=1,`orderdate`=now();
insert into `order` set `orderid`='c102',`orderproduct`=1,`ordercount`=1,`orderdate`=now();
insert into `order` set `orderid`='c103',`orderproduct`=6,`ordercount`=5,`orderdate`=now();
insert into `order` set `orderid`='c105',`orderproduct`=2,`ordercount`=1,`orderdate`=now();

#실습 6-3
select `orderno`,`name`, `prodname`,`ordercount`,`orderdate` from `product` as a join `order` as b on a.prodno=b.orderno
join `customer` as c on b.orderid=c.custid;

select `orderno`,`prodno`, `prodname`,`price`,`orderCount`,`orderdate` from `product` as a join `order` as b on a.prodno=b.orderno
join `customer` as c on b.orderid=c.custid where `name`='김유신';

select sum(price*ordercount)'총 주문 금액'  from `product` as a join `order` as b on a.prodno=b.orderno
join `customer` as c on b.orderid=c.custid;






