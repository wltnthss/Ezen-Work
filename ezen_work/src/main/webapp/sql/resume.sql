------------------------이력서 작성 테이블--------------------------
create table resume(
    seq number primary key,                -- 이력서 번호
    image varchar2(80),                 -- 이력서 프로필 이미지
    title varchar2(60),                 -- 이력서 제목
    age varchar2(20),                   -- 나이
    career varchar2(20),                -- 경력
    achieve varchar2(40),               -- 학력
    loc varchar2(100),                  -- 위치
    opencount number default 0,         -- 열람수
    logtime date default sysdate        -- 작성일    
);
-- 시퀀스 객체 생성
create sequence seq nocache nocycle;
-- 시퀀스 삭제
drop sequence seq;
-- 이력서 제목 확인
select * from resume where title='안녕';
-- 이력서 정보 수정
update resume set image='profile.jpg' title='지원', age='2', weight='222', career='중고신입', achieve='초대졸', loc='경기도' where seq='1';
--테이블 목록 확인
select *from tab;
--정보 검색
select * from resume;
--값 입력
insert into resume values
(seq.nextval, 'profile.jpg', '지원합니다', '20', '신입', 'xx대학교', '서울시송파구', 0, sysdate);
--테이블 삭제
drop table resume purge;
--저장
commit;