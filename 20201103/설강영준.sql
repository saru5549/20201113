create table 설강영준(
    번호 NUMERIC(3),
    교수명 VARCHAR2(10),
    과목명 VARCHAR2(5),
    소속 VARCHAR2(10),
    CONSTRAINT 설강영준_pk PRIMARY KEY(번호)
    );

select * from 설강영준;

insert into 설강영준
(번호,교수명,과목명,소속)
values
(101,'김일삼','SE','CD');
insert into 설강영준
(번호,교수명,과목명,소속)
values
(102,'권오영','DB','CD');
insert into 설강영준
(번호,교수명,과목명,소속)
values
(103,'김소월','DG','MD');
insert into 설강영준
(번호,교수명,과목명,소속)
values
(104,'이상','FP','CD');
insert into 설강영준
(번호,교수명,과목명,소속)
values
(105,'이석영','CS','ED');
creat;

drop table 설강영준;