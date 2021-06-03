---------------------- 관리자 테이블 -----------------------
--관리자 테이블
create table admin(
name varchar2(40) not null,
id varchar2(50) primary key,
pwd varchar2(50) not null
);
--테이블 목록 확인
select *from tab;
--정보 검색
select * from admin;
--값 입력
insert into admin values
('홍길동','admin1', 'm1234');
--테이블 삭제
drop table admin purge;
--저장
commit;

---알바경험담 테이블
create table exp(
exp_seq number primary key,
id varchar(40) not null,
exp_subject varchar(200) not null,
exp_content varchar(3000) not null,
exp_image varchar(100),
exp_readcount number default 0,
exp_date date,
exp_reply_count number default 0
);
--시퀀스 생성
create sequence exp_seq nocycle nocache;
--시퀀스 삭제
drop sequence exp_seq;
--정보 검색
select * from exp;
--값 입력
insert into exp values
(exp_seq.nextval,'user','건설사들중 롯데건설사가 좋은듯','상주하시는분들이 착함', '1',0,sysdate,0);
--인덱스 뷰
select exp_seq, id, exp_subject, exp_content, exp_image, exp_readcount,
 		to_char(exp_date, 'YYYY.MM.DD') as exp_date from 
		(select rownum rn, tt.* from (select * from exp order by exp_seq desc) tt) 
		where id='admin1';
--총 글갯수

--검색
select exp_seq, id, exp_subject, exp_content, exp_image, exp_readcount,
 		to_char(exp_date, 'YYYY.MM.DD') as exp_date from 
		(select rownum rn, tt.* from  (select * from exp order by exp_seq desc) tt) 
		where exp_subject like '%젠%' or exp_content like '%젠%';
--검색(20개이상일때)
select exp_seq, id, exp_subject, exp_content, exp_image, exp_readcount,
 		to_char(exp_date, 'YYYY.MM.DD') as exp_date from 
		(select rownum rn, tt.* from  (select * from exp order by exp_seq desc) tt) 
		where (rn>=1 and rn<=20) and (exp_subject like '%젠%' or exp_content like '%젠%');    
--검색시 총글갯수
select count(*) as cnt from exp where exp_subject like '%젠%' or exp_content like '%젠%';
--exp_seq로 검색
select * from exp where exp_seq=190;
--조회수증가
update exp set exp_readcount = exp_readcount+1
where exp_seq=1;
--수정하기
update exp set exp_subject='hoho', exp_content='hohoho',exp_image='kkk.jpg'
where exp_seq=189;
--삭제하기
delete from exp where exp_seq=198;
--테이블 삭제
drop table exp purge;
--저장
commit;
rollback;


--알바경험담 댓글 테이블
create table exp_reply(
    id varchar(40) not null,
    exp_reply_seq number primary key,
    exp_seq number not null,
    exp_reply_content varchar2(1500),
    exp_reply_date date    
);
--시퀀스 생성
create sequence exp_reply_seq nocycle nocache;
--시퀀스 삭제
drop sequence exp_reply_seq;
--입력
insert into exp_reply values(
    'admin1', exp_reply_seq.nextval,199,'고생하셨어요~',sysdate
);
--검색
select * from exp_reply;
--댓글갯수검색
select count(*) exp_reply_seq from exp_reply where exp_seq=199;
select count (*) as cnt from exp_reply;

--댓글숫자증가
update exp set exp_reply_count = exp_reply_count+1
where exp_seq=2;
--답글 전체 검색
select id, exp_reply_seq, exp_seq, exp_reply_content,
 		to_char(exp_reply_date, 'YYYY.MM.DD') as exp_reply_date from 
		(select rownum rn, tt.* from (select * from exp_reply order by exp_reply_seq desc) tt) 
		where exp_seq=199;
--댓글삭제
delete from exp_reply where exp_reply_seq=198;        

--테이블 삭제
drop table exp_reply purge;
--저장
commit;

--한줄 talk 테이블
create table talkTable(
    talk_seq number primary key,        
    id varchar2(40),
    talk_subject varchar2(1500),   
    talk_date date,   
    talk_reply_count number
);
--시퀀스 생성
create sequence talk_seq nocycle nocache;
--시퀀스 삭제
drop sequence talk_seq;
--입력
insert into talkTable values(
   talk_seq.nextval,'ad','심봤다.',sysdate,0
);
--검색
select * from talkTable;
--테이블 삭제
drop table talkTable purge;

--한줄 talk 답글 테이블



-------------------------------------------------------------
--회원가입,관리 테이블
create table member (
    cname varchar2(30) not null,
    id varchar2(30) primary key,
    pw varchar2(30) not null,
    bnumber1 number not null, --사업번호
    bnumber2 number not null,
    bnumber3 number not null,
    email varchar2(30) not null,
    email2 varchar2(30) not null,
    tel varchar2(30) not null,
    tel2 varchar2(30) not null,
    tel3 varchar2(30) not null
);

--테이블 총 갯수
select count (*) as cnt from member;
--테이블 구조 확인
desc member;
--테이블 삭제
drop table member purge;
--테이블 목록
select*from tab;
--데이터 추가
insert into member values('이젠회사','ezen5','1234',111,11111,11,'brown123','naver.com','010','1234','5555');
insert into member values('이젠회사','ezen3','1234',111,11111,13,'brown123','naver.com','010','1234','5555');
insert into member values('이젠회사','ezen4','1234',111,11111,12,'brown123','naver.com','010','1234','5555');
--데이터 검색
select*from member;
select * from member where id='brown';
--로그인
select * from member where id='ezen1' and pw='1234';
--데이터 수정
update member set email='brownlove',pw='2345', email2='daum.net', tel='010', tel2='3333', tel3='4444' where id='ezen3';
--데이터 삭제
delete member where id='ezen4';
 --db저장
 commit;
 
 --공고등록,관리 테이블
 create table advertise (
    num number not null,
    cname varchar2(30) not null,
    image varchar2(30) not null,
    ad_subject varchar2(30) not null,  --공고제목
    ad_num varchar2(5) not null, --모집인원
    gender varchar2(5) not null, --성별
    age varchar2(5) not null, --나이
    salary number not null, --일당
    ad_content varchar2(2000) not null, --모집내용
    ad_job varchar2(30) not null, --직종
    ad_area varchar2(30) not null, --지역
    ad_time varchar2(5) not null, --시간
    ad_period varchar2(30) not null, --기간
    content varchar2(2000) 
);
--시퀀스 객체 생성
create sequence num nocache nocycle;
--시퀀스 삭제
drop sequence num;
--테이블 총 갯수
select count (*) as cnt from advertise where cname='11';

--테이블 구조 확인
desc advertise;
--테이블 삭제
drop table advertise purge;
--테이블 목록
select*from tab;
--데이터 추가
insert into advertise values(num.nextval,'이젠회사','1.jpg','사람 구해요','10','남','25',10000,'일 잘하는 사람 구해요',
                            '보조출연','서울 강남','6','3일','담당자 번호 : 홍길동');
--데이터 검색
select*from advertise;
select * from member where id='brownlove';
--직종별 검색
select * from advertise where ad_job='보조출연';
--지역별 검색
select * from advertise where ad_area like '%강남%';
--데이터 수정
update advertise set ad_num=15 where ad_subject='사람 구해요';
update advertise set tel3='0000' where ad_subject='일일구직자';
--데이터 삭제
delete advertise where ad_subject='일일구직자';
 --db저장
commit;
 

