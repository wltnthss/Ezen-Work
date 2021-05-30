------------------------회원가입 테이블--------------------------
create table member (
    name varchar2(30) not null,
    id varchar2(30) primary key,     
    pwd varchar2(30) not null,
    gender varchar2(10),
    email varchar2(40),
    tel varchar2(30),
    addr varchar2(100)
);

-- 테이블 구조 확인
desc member;
-- 테이블 삭제
drop table member purge;
-- 테이블 목록
select * from tab;

select * from member;


-- 데이터 추가
insert into member values ('이기자', 'h1', '1111', 'M', 'park@naver.com', 
'01012345678', '경기도 수원시');

--로그인
select * from user where id='h1' and pwd='1111';

-- 데이터 수정
update user set tel2='2345' where id='hong';
update user set tel1='010', tel2='2345', tel3='6789' where id ='hong';
update user set name='Kwak', pwd='2222', gender='남자', email1='kkk', email2='yahoo.co.kr', tel1='010', tel2='3333', tel3='4444', addr='서울 송파' where id ='hong';

-- 데이터 삭제
delete user where id='h1';

-- db 저장
commit;