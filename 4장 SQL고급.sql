#실습 4-1
CREATE TABLE `Member` (
	`uid`	VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`hp`	CHAR(13) UNIQUE NOT NULL,
	`pos`	VARCHAR(10) default '사원',
	`dep`	TINYINT,
	`rdate`	DATETIME  NOT NULL
);


drop table `Member`;
drop table `Department`;
drop table  `Sales`;


CREATE TABLE `Department` (
	`depNo`	TINYINT PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`tel`	CHAR(12) NOT NULL
);

CREATE TABLE `Sales` (
	`seq`	INT AUTO_INCREMENT PRIMARY KEY,
	`uid`	VARCHAR(10) NOT NULL,
	`year`	YEAR NOT NULL,
	`month`	TINYINT NOT NULL,
	`sale`	INT NOT NULL
);

#실습 4-2
INSERT INTO `Member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, NOW());
INSERT INTO `Member` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, NOW());
INSERT INTO `Member` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, NOW());
INSERT INTO `Member` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, NOW());
INSERT INTO `Member` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, NOW());
INSERT INTO `Member` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a110', '정약용',   '010-1234-1010', '사원', 105, NOW());
INSERT INTO `Member` VALUES ('a111', '박지원',   '010-1234-1011', '사원', 105, NOW());

INSERT INTO `Department` VALUES (101, '영업1부', '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부', '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부', '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부', '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부', '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부', '051-512-1007');

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);


#실습 4-3
select * from `Member` where `name`='김유신';
select * from `Member` where `pos`='차장' and `dep`='101';
select * from `Member` where `name`<>'김춘추';
select * from `Member` where `pos` in ('사원','대리');
select * from `Member` where `name` like '%신';
select * from `Member` where `name` like '정_';#정으로 시작하고 한글자만 더 가진 사람 출력
select * from `Member` where `pos`='차장' or `dep`='101';
select * from `Member` where `name`!='김춘추';
select * from `Member` where `name`<>'김춘추';
select * from `Member` where `pos`='사원' or `pos`='대리';
select * from `Member` where `pos` in ('사원','대리');
select * from `Member` where `dep` in(101,102,103);
select * from `Member` where `name` like '%신';
select * from `Member` where `name` like '김%';
select * from `Member` where `name` like '김__';
select * from `Member` where `name` like '_성_';
select * from `Member` where `name` like '정_';
select * from `sales` where `sale`>50000;
select * from `sales` where `sale`>=50000 and `sale` <100000 and `month`=1; 

#실습 4-4

select * from `Sales` order by `sale` ASC;
select * from `Sales` order by `sale` desc;
select * from `Member` order by `name` desc;
select * from `Sales` 
where `sale`>50000
order by `year`,`month`,`sale` desc;#차례대로 정렬을 해준다. 먼저 year정렬을 하고 그 상태에서(year 정렬을 깨지않고) month를 정렬 그리고 sale를 정렬(year->month->sale)
select * from `Member` order by `name` desc;
select * from `sales`
where `sale`>50000 order by `sale` desc;
select * from `sales`
where `sale` >50000
order by `year`,`month`,`sale` desc;




#실습 4-5

select * from `sales` limit 3;
select * from `sales` limit 0,3;#limit start,size(갯수);
select * from `sales` limit 5,3;
select * from `sales` order by `sale` desc limit 3,5;
select * from `sales` where `sale`<50000 order by `sale` desc limit 3;
select * from `sales`
where `sale`>50000
order by `year` desc, `month`, `sale` desc
limit 5;

#실습 4-6
#튜플(레코드)==행
select SUM(`sale`) as '합계' from `Sales`;
select ceiling(1.2);#소수점 무조건 올려주기
select ceiling(1.8);
select floor(1.2);
select floor(1.8);
select rand();
select ceiling(rand()*10);
select count(*)as '갯수'from `sales`;#기본키의 갯수를 세어 counting해줌.
select count(`sale`)as '갯수'from `sales`;

select left('HelloWorld',5);
select right('HelloWorld',5);
select substring('HelloWorld',6,5);
select concat('Hello','World') as 'result';
select concat(`uid`,`name`,`hp`) as 'result'from `member` where `uid`='a108';
select curdate();
select curtime();
select now();
insert into `member` values ('a112','유관순','010-1234-1012','대리',107,now());

select * from `member`;

#실습 4-7
select sum(`sale`) as 'result' from `sales` where `year`='2018' and `month`=1;
#실습 4-8
#실습 4-9


#실습 4-10
select * from `Sales` group by `uid`;
SELECT `uid`,count(*) FROM `Sales` GROUP BY `uid`;
select `uid`,sum(`sale`) as '합계' from `sales` group by `uid`;
select `uid`,`year`,sum(`sale`) as '합계' from `sales` group by `uid`,`year`;
select `uid`,`year`,sum(`sale`)As '합계'
from `sales`
where`sale`>=100000
group by `uid`,`year`
having `합계`>=200000
order by `합계`desc;

#실습 4-11

create table `sales2` like `sales`;
insert into `sales2` select * from `sales`;
update `sales2` set `year` =`year`+3;

select * from `sales` union select *from `sales2`;

select * from `sales` where `sale`>=100000
union
select * from `sales2` where `sale`>=100000;

select `uid`,`year`,`sale` from `sales`
union
select `uid`,`year`,`sale` from `sales2`;

select `uid`,`year`,sum(`sale`) as '합계'
from `sales`
group by `uid`,`year`
union

select `uid`,`year`,sum(`sale`) as '합계'
from `sales2`
group by `uid`,`year`
order by `year` asc,'합계'desc;

#정규화: 테이블을 쪼갤 수 있을 때 까지 쪼갠다.

#실습 4-12

#on 뒤에서 부터 어떤 조건으로 조인 할 지 적는 것.
# 세일즈 테이블의 uid와 멤버 테이블의 uid를 이용해서 조인
select * from `sales` inner join `member` on `sales`.`uid`=`member`.`uid`;

select *from `sales` as a
join `member` as b on a.uid=b.uid;#위와 같은 출력 결과물

select *from `sales` as a, `member` as b where a.uid=b.uid;#요것도 같은 결과물

select *from `sales` as a 
join `member` as b using (`uid`);#세일즈와 멤버의 컬럼 이름이 같기때문에 using사용(on 대신에)

select a.`uid`, a.`year`, a.`sale`,b.`name`,b.`hp`,c.`name` from `sales` as a
join `member` as b  on a.uid=b.uid
join `department` as c on b.dep=c.depno;

select * from `sales` as a left join `member` as b on a.uid=b.uid;
select * from `sales` as a inner join `member` as b on a.uid=b.uid;#오른쪽 왼쪽 서로 매칭이 되도록 하는것.
select * from `sales` as a right join `member` as b on a.uid=b.uid;#오른쪽 테이블이 기준. 오른쪽 테이블의 모든 데이터는 꼭 출력이 됨.



#/////////////

select *from `member` where `name`='김유신';
select *from `member` where `pos`='차장'and `dep`=101;
select *from `member` where `pos`='차장' or `dep` =101;
select * from `member` where `name`!='김춘추';
select * from `member` where `name`<>'김춘추';
select * from `member` where `pos`='사원'or `pos`='대리';
select * from `member` where `pos` in('사원','대리');#사원과 대시만 출력
select * from `member` where `pos` not in ('사원','대리');#t사원과 대리빼고 다 출력
select * from `member` where `dep` in (101,102,103);
select * from `member` where `name` like '%신';#이름끝에 신이 붙은 사람은 모두 출력
select * from `member` where `name` like '김%';#김으로 시작하는 이름 모두 출력
select * from `member` where `name` like '김__';#김으로 시작하는 세글자 이름 출력
select * from `member` where `name` like '_성_';
select * from `member` where `name` like '정_';//#정으로 시작하는 두글자 이름 출력
select * from `sales` where `sale` >50000;
select * from `sales` where `sale`>=50000 and `sale`<100000 and `month`=1;
select * from `sales` where `sale` between 50000 and 100000;
select * from `sales` where `sale` not between 50000 and 100000;
select * from `sales` where `year` in (2020);
select * from `sales` where `month` in(1,2);

select * from `sales` order by `sale`;
select * from `sales` order by `sale` asc;
select * from `sales` order by `sale` desc;
select * from `member` order by `name`;
select * from `member` order by  `name` desc;
select * from `member` order by `rdate` asc;
select * from `sales` where `sale` >50000 order by `sale` desc;
select * from `sales`
where `sale` >50000
order by `year`, `month`, `sale` desc;





