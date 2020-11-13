create table 학생영준(
    학번 VARCHAR2(100),
    이름 VARCHAR2(100),
    학년 NUMERIC(3),
    신장 NUMERIC(3),
    소속 VARCHAR2(100),
    CONSTRAINT 학생영준_pk PRIMARY KEY(학번)
);
select * from 학생영준;

insert into 학생영준
(학번,이름,학년,신장,소속)
values
('08001','홍길동',2,170,'CD');
insert into 학생영준
(학번,이름,학년,신장,소속)
values
('07002','김길동',4,168,'CD');
insert into 학생영준
(학번,이름,학년,신장,소속)
values
('07012','박길동',2,180,'CD');
insert into 학생영준
(학번,이름,학년,신장,소속)
values
('07033','이길동',3,175,'ID');
insert into 학생영준
(학번,이름,학년,신장,소속)
values
('05014','최길동',4,183,'ED');
insert into 학생영준
(학번,이름,학년,신장,소속)
values
('06032','정길동',3,165,'ED');
commit;

drop table 학생영준;