create table member(
    name VARCHAR2(50),
    pwd VARCHAR2(50)
);

drop table member;

select * from member;

update member set name='bbb' where name='admin';
commit;

select * from tab;

desc member;

select * from aaa
where a BETWEEN 2 and 3;

select * from aaa where a not in (2,4);

select * from aaa where c like '%d%' ;

SELECT * FROM aaa where b is null;
SELECT * FROM aaa where b = '';

--ex1) �л� table���� �л��� �̸�, ������ ����Ͻÿ�.
SELECT �̸�, ���� FROM �л�����;

--ex2) �л� table���� �й��� 08001�� �л��� �й�,�̸�,�Ҽ��� ����Ͻÿ�.
SELECT �й�,�̸�,�Ҽ� FROM �л����� WHERE �й�='08001';

--ex3) �л� table���� �г��� 3�г��̸鼭 �Ҽ��� ID�� �л��� ��������� ���Ͻÿ�.
SELECT * FROM �л����� WHERE �г�='3' AND �Ҽ�='ID';

--ex4) �л� table���� ������ 170�̻��� �л��� �̸�,����,�Ҽ��� ���Ͻÿ�.
SELECT �̸�,����,�Ҽ� FROM �л����� WHERE ����>=170;

--ex5) �������̺��� ������ 80�̻� 90������ �л��� �й��� ������ ���Ͻÿ�.
--1)
SELECT �й�,���� FROM �������� WHERE ����>=80 AND ����<=90;
--2)
SELECT �й�,���� FROM �������� WHERE ���� BETWEEN 80 AND 90;

--ex6) �л����̺��� �Ҽ��� CD�� �ƴ� �л��� ��������� ���Ͻÿ�.
SELECT * FROM �л����� WHERE �Ҽ�!='CD';

--ex7) �������̺��� �������� ������ �����ϴ� ������ ������,������� ���Ͻÿ�.
SELECT ������,����� FROM �������� WHERE ������ LIKE('��%');

--ex8) �������̺��� �������� �̷� �����ϸ鼭 ���ڸ��� ������� ������� ���Ͻÿ�.
SELECT ������,����� FROM �������� WHERE ������ LIKE('��_');

--ex9) �������̺��� �������� �达�� �ƴ� ��� ������ �˻��Ͻÿ�.
SELECT * FROM �������� WHERE ������ NOT LIKE('��%');

--ex10) �Ҽ��� CD�� �л��� ������ 170�̻� �Ǵ� �л��� �г�� ������ ���Ͻÿ�.
SELECT �г�,���� FROM �л����� WHERE �Ҽ�='CD' AND ����>=170;

--ex11) �л����̺��� ������ ū������ �������� ��� �����Ͻÿ�.
SELECT * FROM �л����� ORDER BY ���� DESC;

--ex12) �Ҽ��� CD�� �л��� ���� ũ�� ������ ���Ͻÿ�.
SELECT * FROM �л����� WHERE �Ҽ�='CD' ORDER BY ���� DESC;

--ex13) �л����̺��� �Ҽ��� ID�Ǵ� ED�� �ƴ� �л��� ��� ������ ���Ͻÿ�.
SELECT * FROM �л����� WHERE �Ҽ� NOT IN('ID','ED');