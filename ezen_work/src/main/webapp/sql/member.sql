------------------------ 회원 회원가입 테이블--------------------------
create table member (
    member_seq number not null,
    name varchar2(30) not null,
    id varchar2(30) primary key,     
    pwd varchar2(30) not null,
    gender varchar2(10),
    email varchar2(40),
    tel varchar2(30),
    addr varchar2(100),
    member_date date default sysdate
);
--시퀀스 객체 생성
create sequence member_seq nocache nocycle;
--시퀀스 삭제
drop sequence member_seq;

-- 테이블 구조 확인
desc member;

-- 테이블 삭제
drop table member purge;

-- 테이블 목록
select * from tab;

-- 모든 데이터 검색
select * from member;
select count(*) as cnt from member;

-- 데이터 추가
insert into member values (member_seq.nextval, '이기자', 'h1', '1111', 'M', 'park@naver.com', 
'01012345678', '경기도 수원시', sysdate);

--로그인
select * from member where id='66';

-- 데이터 수정
update member set name='TestId111', pwd='1111', email='wltnthss@gmail.com', tel='01011111111', addr='서울 송파 오금' where id ='66';

-- 데이터 삭제
delete member where id='son';

-- db 저장
commit;