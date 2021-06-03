create table report(
    re_seq number,
    id varchar2(30) not null,
    re_name varchar2(30) not null, --회사이름
    re_report varchar2(30) not null, --신고
    re_check varchar2(30) not null, --신고선택
    re_content varchar2(3000) not null, --신고내용
    logtime date default sysdate      --신고일
);