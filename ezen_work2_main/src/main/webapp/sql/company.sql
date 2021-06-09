------------------- 회사 회원가입,관리 테이블 -----------------------
create table company (
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
select count (*) as cnt from company;
--테이블 구조 확인
desc company;
--테이블 삭제
drop table company purge;
--테이블 목록
select*from tab;
--데이터 추가
insert into company values('이젠회사','ezen5','1234',111,11111,11,'brown123','naver.com','010','1234','5555');
insert into company values('이젠회사','ezen3','1234',111,11111,13,'brown123','naver.com','010','1234','5555');
insert into company values('이젠회사','ezen4','1234',111,11111,12,'brown123','naver.com','010','1234','5555');
--데이터 검색
select*from company;
select * from company where id='brown';
--로그인
select * from company where id='ezen1' and pw='1234';
--데이터 수정
update company set pw='2345', email='brownlove', email2='daum.net', tel='010', tel2='3333', tel3='4444' where id='ezen3';
--데이터 삭제
delete company where id='ezen4';
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
select count (*) as cnt from advertise;

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