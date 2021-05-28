------------------------이력서 작성 테이블--------------------------
create table resume(
    title varchar2(50),                 -- 제목
    age varchar2(20),          -- 나이
    tall varchar2(10) not null,         -- 키
    weight varchar2(10) not null,       -- 몸무게
    career varchar2(20) not null,       -- 경력
    achieve varchar2(40) not null,      -- 학력
    loc varchar2(100) not null,         -- 위치
    logtime date default sysdate        -- 작성일    
);

--테이블 목록 확인
select *from tab;
--정보 검색
select * from resume;
--값 입력
insert into resume values
('지원합니다', '20', '180', '70', '신입', 'xx대학교', '서울시송파구', sysdate);
--테이블 삭제
drop table resume purge;
--저장
commit;