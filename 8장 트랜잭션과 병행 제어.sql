#날짜 : 2024/01/18
#이름 : 오아람
#내용 : 8장 트랜잭션과 병행 제어


use `bank`;
#실습 8-1

##--트랜잭션 시작
start transaction;

select * from `bank_account`;

update `bank_account` set `a_balance`=`a_balance`-10000
where `a_no`='101-11-1001';

update `bank_account`
set `a_balance`=`a_balance`+10000
where `a_no`='101-11-1003';




##--트랜잭션 작업 완료
commit;

#실습 8-2

##--트랜잭션 시작
start transaction;

select * from `bank_account`;

update `bank_account` set `a_balance`=`a_balance`-10000
where `a_no`='101-11-1001';

update `bank_account`
set `a_balance`=`a_balance`+10000
where `a_no`='101-11-1003';

##--트랜잭션 작업 실패 처리
rollback;


#실습 8-3
select @@autocommit;

set autocommit=0;#1은 켜진거,0은 꺼진거
#꺼져있으면 자동으로 commit되던게 안됨. 그래서 rollback하면 상태가 되돌아감


select * from `bank_account`;

update `bank_account` set `a_balance`=`a_balance`-10000
where `a_no`='101-11-1001';

rollback;

#실습 8-4 Lock & unlock 병행제어 실습 
use `bank`;
select * from `bank_account`;

start transaction;

update `bank_account` set `a_balance`=`a_balance`-10000
where `a_no`='101-11-1001';

commit;



