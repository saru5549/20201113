create table �л�����(
    �й� VARCHAR2(100),
    �̸� VARCHAR2(100),
    �г� NUMERIC(3),
    ���� NUMERIC(3),
    �Ҽ� VARCHAR2(100),
    CONSTRAINT �л�����_pk PRIMARY KEY(�й�)
);
select * from �л�����;

insert into �л�����
(�й�,�̸�,�г�,����,�Ҽ�)
values
('08001','ȫ�浿',2,170,'CD');
insert into �л�����
(�й�,�̸�,�г�,����,�Ҽ�)
values
('07002','��浿',4,168,'CD');
insert into �л�����
(�й�,�̸�,�г�,����,�Ҽ�)
values
('07012','�ڱ浿',2,180,'CD');
insert into �л�����
(�й�,�̸�,�г�,����,�Ҽ�)
values
('07033','�̱浿',3,175,'ID');
insert into �л�����
(�й�,�̸�,�г�,����,�Ҽ�)
values
('05014','�ֱ浿',4,183,'ED');
insert into �л�����
(�й�,�̸�,�г�,����,�Ҽ�)
values
('06032','���浿',3,165,'ED');
commit;

drop table �л�����;