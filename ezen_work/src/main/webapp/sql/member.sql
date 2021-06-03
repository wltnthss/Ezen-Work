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

-- 모든 데이터 검색
select * from member;

-- 데이터 추가
insert into member values ('이기자', 'h1', '1111', 'M', 'park@naver.com', 
'01012345678', '경기도 수원시');

--로그인
select * from member where id='66';

-- 데이터 수정
update member set name='TestId111', pwd='1111', email='wltnthss@gmail.com', tel='01011111111', addr='서울 송파 오금' where id ='66';

-- 데이터 삭제
delete member where id='son';

-- db 저장
commit;