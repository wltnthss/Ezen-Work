---------------------- 관리자 테이블 -----------------------
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