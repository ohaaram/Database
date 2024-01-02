#날짜 : 2024/01/02
#이름 : 오아람
#내용 : 1장 데이터베이스 생성과 사용자 관리

#실습 1-1 실행 단축키 해당라인에 커서 두고 ctl+enter
Create database `StudyDB2`;
drop database `StudyDB2`;

#실습 1-2
CREATE USER 'oor92'@'%' IDENTIFIED BY '1234';
grant all privileges on StudyDB.* to 'oor92'@'%';
flush privileges;


#실습 1-3
alter user `oor92`@`%` identified by 'abc1234';
drop user `oor92`@`%`;
flush privileges;