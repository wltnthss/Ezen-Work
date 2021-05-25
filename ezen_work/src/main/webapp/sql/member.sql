------------------------회원 테이블--------------------------
create table member (
    name varchar2(30) not null,
    id varchar2(30) primary key,     
    pwd varchar2(30) not null,
    gender varchar2(10) not null,
    email1 varchar2(20) not null,
    email2 varchar2(20) not null,
    tel1 varchar2(10) not null,
    tel2 varchar2(10) not null,
    tel3 varchar2(10) not null,
    addr varchar2(100) not null
);

-- 테이블 구조 확인
desc member;
-- 테이블 삭제
drop table member purge;
-- 테이블 목록
select * from tab;

-- 데이터 추가
insert into member values ('이기자', 'member1', '1111', '0', 'park', 'naver.com', 
'010', '1234', '5678', '경기도 수원시');

--로그인
select * from member where id='member1' and pwd='1111';

-- 데이터 수정

-- 데이터 검색
select * from member;

-- 데이터 삭제

-- db 저장
commit;