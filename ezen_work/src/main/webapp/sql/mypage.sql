------------------------마이페이지 테이블--------------------------
create table mypage(
    profile varchar2(100),
    cnt number default 0        -- 이력서개수
);
--테이블 목록 확인
select *from tab;
--정보 검색
select * from mypage;
--값 입력
insert into mypage values
('이미지','0');
--테이블 삭제
drop table mypage purge;
--저장
commit;