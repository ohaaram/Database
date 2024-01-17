use shopping;

insert into `users` values('user1','김유신','1976-01-21','M','010-1101-1976','kimys@naver.com',0,1,'서울','2022-01-10 10:50:12');
insert into `users` values('user2','계백','1975-06-11','M','010-1102-1975',null,1000,1,'서울','2022-01-10 10:50:12');
insert into `users` values('user3','김춘추','1989-05-30','M','010-1103-1989',null,1200,2,'서울','2022-01-10 10:50:12');
insert into `users` values('user4','이사부','1979-04-13','M','010-2101-1979','leesabu@gmail.com',2600,1,'서울','2022-01-10 10:50:12');
insert into `users` values('user5','장보고','1966-09-12','M','010-2104-1966','jangbg@naver.com',9400,4,'대전','2022-01-10 10:50:12');
insert into `users` values('user6','선덕여왕','1979-07-28','F','010-3101-1979','gueen@naver.com',1600,2,'대전','2022-01-10 10:50:12');
insert into `users` values('user7','강감찬','1984-06-15','M','010-4101-1984','kang@daum.net',800,0,'대구','2022-01-10 10:50:12');
insert into `users` values('user8','신사임당','1965-10-21','M','010-5101-1965','sinsa@gmail.com',1500,1,'대구','2022-01-10 10:50:12');
insert into `users` values('user9','이이','1972-11-28','F','010-6101-1972','leelee@nate.com',3400,3,'부산','2022-01-10 10:50:12');
insert into `users` values('user10','허난설헌','1992-09-07','F','010-7103-1992',null,4100,3,'광주','2022-01-10 10:50:12');

insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user1',1000,'회원가입 1000적립',now());
insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user1',6000,'상품구매 5% 적립',now());
insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user3',2835,'상품구매 5% 적립',now());
insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user7',3610,'상품구매 5% 적립',now());
insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user5',3000,'이벤트 응모 3000 적립',now());
insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user2',1000,'회원가입 1000적립',now());
insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user2',2000,'이벤트 응모 3000 적립',now());
insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user2',2615,'상품구매 5% 적립',now());
insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user3',1500,'이벤트 응모 1500 적립',now());
insert into `points`(`useid`,`point`,`pointdesc`,`pointdate`)values('user6',15840,'상품구매 2% 적립',now());


insert into `orders`values('22010210001','user2',52300,'서울시 마포구 121',1,now()); 
insert into `orders`values('22010210002','user3',56700,'서울시 강남구 21-1',1,now()); 
insert into `orders`values('22010210010','user4',72200,'서울시 강서구 큰대로 38',2,now()); 
insert into `orders`values('22010310001','user5',127000,'경기도 광주시 초월로 21',1,now()); 
insert into `orders`values('22010310100','user1',120000,'경기도 수원시 120번지',0,now()); 
insert into `orders`values('22010410101','user6',792000,'부산시 남구 21-1',2,now()); 
insert into `orders`values('22010510021','user7',92200,'부산시 부산진구 56 10층',4,now()); 
insert into `orders`values('22010510027','user8',112000,'대구시 팔달로 19',3,now()); 
insert into `orders`values('22010510031','user10',792000,'대전시 한밭로 24-1',2,now()); 
insert into `orders`values('22010710110','user9',94500,'광주시 충열로 11',1,now()); 


insert into `categories` values(10,'여성의류패션');
insert into `categories` values(11,'남성의류패션');
insert into `categories` values(12,'식품.생필품');
insert into `categories` values(13,'취미.반려견');
insert into `categories` values(14,'홈.문구');
insert into `categories` values(15,'자동차.공구');
insert into `categories` values(16,'스포츠.건강');
insert into `categories` values(17,'컴퓨터.가전.디지털');
insert into `categories` values(18,'여행');
insert into `categories` values(19,'도서');


insert into `Sellers` values('10001','(주)다팔아','02-201-1976','정우성','서울');
insert into `Sellers` values('10002','판매의 민족','02-102-1975','이정재','서울');
insert into `Sellers` values('10003','멋남','031-103-1989','원빈','경기');
insert into `Sellers` values('10004','스타일살아','032-201-1979','이나영','경기');
insert into `Sellers` values('10005','(주)삼성전자','02-214-1966','장동건','서울');
insert into `Sellers` values('10006','복실이옷짱','051-301-1979','고소영','부산');
insert into `Sellers` values('10007','컴퓨존(주)','055-401-1984','유재석','대구');
insert into `Sellers` values('10008','(주)LG전자','02-511-1965','강호동','서울');
insert into `Sellers` values('10009','굿바디스포츠','070-6101-1972','조인성','부산');
insert into `Sellers` values('10010','누리푸드','051-710-1992','강동원','부산');


insert into `products` values('100101',11,'반팔티 L~2XL',869,25000,132,20,'10003');
insert into `products` values('100110',10,'트레이닝 통바지',1602,38000,398,15,'10004');
insert into `products` values('110101',10,'신상 여성운동화',160,76000,40,5,'10003');
insert into `products` values('120101',12,'암소 1등급 구이셋트 1.2kg',null,150000,87,15,'10010');
insert into `products` values('120103',12,'바로구이 부채살 250g',null,21000,61,10,'10010');
insert into `products` values('130101',13,'[ANK]식스프리 강아지 사료',58,56000,142,0,'10006');
insert into `products` values('130112',13,'중대형 사계절 강아지옷',120,15000,80,0,'10006');
insert into `products` values('141001',14,'라떼 2인 소파/방수 패브릭',null,320000,42,0,'10001');
insert into `products` values('170115',17,'지포스 3080 그래픽카드',28,900000,12,12,'10007');
insert into `products` values('160103',16,'치닝디필 33BR 철봉',32,120000,28,0,'10009');


#주문상품상세,장바구니

insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user1','100101',1,now());
insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user1','100110',2,now());
insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user3','120103',1,now());
insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user4','130112',1,now());
insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user5','130101',1,now());
insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user2','110101',3,now());
insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user2','160103',1,now());
insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user2','170115',1,now());
insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user3','110101',1,now());
insert into `carts` (`useid`,`prodno`,`cartprodcount`,`cartproddate`)values('user6','130101',1,now());



insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010210001,'100110',38000,15,1);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010210001,'100101',25000,20,1);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010210002,'120103',21000,10,3);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010310001,'130112',15000,0,1);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010310001,'130101',56000,0,2);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010210010,'110101',76000,5,1);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010310100,'160103',120000,0,1);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010410101,'170115',900000,12,1);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010510021,'110101',76000,5,1);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010510027,'130101',56000,0,2);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010510021,'100101',25000,20,1);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010510031,'170115',900000,12,1);
insert into `orderitems`(`orderno`,`prodno`,`itemprice`,`itemdiscount`,`itemcount`)values(22010710110,'120103',21000,10,5);


#문제1 장바구니 내역- 고객명, 상품명, 상품수량 조회(단, 상품수량 2건이상만 조회)
select `username`, `prodname`,`cartprodcount` from `users`join`carts`using(useid)
join `products`using(prodno)
where `cartprodcount`>=2;

#문제2 상품번호,상품카테고리명,상품명,상품가격,판매자이름,판매자 연락처
select `prodno`,`catename`,`prodname`,`sellermanager`,`sellerphone`from `products`as a join`categories`using(`cateno`)join `sellers`as b on a.sellerno=b.sellerno;

#문제3 고객의 아이디,이름,휴대폰,현재포인트,적립포인트 총합을 조회(단, 적립포인트 내역이 없으면 0으로 출력)
select`useid`,`username`,`userhp`,`userpoint`,if(sum(`point`)is null,0,sum(`point`)) '포인트 총합'
from `users` left join `points` using (`useid`)
group by `useid`;

#문제4 주문번호,주문자 아이디, 고객명, 주문가격, 주문일자 조회(단, 주문금액에 10만원 이상, 큰 금액순으로 조회,금액이 같으면 이름이 사전순으로 될것)
select `orderno`,`useid`,`username`,`ordertotalprice`,`orderdate`from `orders`join`users`using(`useid`)
where `ordertotalprice`>=100000
order by `ordertotalprice` desc,`username`;

#문제5 주문번호,주문자 아이디,고객명, 상품명, 주문일자 조회.(주문번호는 중복 없이 상품명은 구분자 ,로 나열할것)
select`orderno`,ANY_VALUE(`useid`),ANY_VALUE(`username`), group_concat(`prodname` separator ','),ANY_VALUE(`orderdate`)
from `orders`
join`users`as a using(`useid`)
join`carts` using(`useid`)
join `products` using(`prodno`)
group by `orderno`;

#문제6  상품번호,상품명,상품가격,할인률,할인된 가격을 조회
select`prodno`,`prodname`,`prodprice`,`proddiscount`,floor(`prodprice`*(1-`proddiscount`/100))as '할인가' from `products`;

#문제7
select `prodno`,`prodname`,`prodprice`,`prodstock`,`sellermanager` from `products` as a
join `sellers` using(sellerno)
where `sellermanager`='고소영';

#문제8
select `sellerno`,`sellerbizname`,`sellermanager`,`sellerphone` from `products`
right join `sellers` using(sellerno)
where `prodno`is null;

#문제9
select `orderno`,sum(`할인가`)as `최종총합` from(
	select *,`itemcount`*(floor(`itemprice`*(1-`itemdiscount`/100))) as `할인가` from `orderitems`) as a
    group by `orderno`
    having `최종총합`>=100000
    order by `최종총합` desc;
    
    select `orderno`,sum((floor(`itemprice`*(1-`itemdiscount`/100))*`itemcount`)) as `최종 총합`
    from `orderitems`
	group by `orderno`
    having `최종 총합`>=100000
    order by `최종 총합` desc;
    
    
#문제10
select `username`,group_concat(`prodname` separator ',')as `상품들`
from `orders`
join`users`as a using(`useid`)
join`carts` using(`useid`)
join `products` using(`prodno`) 
where `username`='장보고';



