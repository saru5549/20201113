SELECT ename, sal, job 
from emp where (sal, deptno) in (
select sal, deptno from emp where deptno = 30AND comm is not null);

select a.�й� from (select * from �л�����) a;
select * from �л�����;

select ename, job, a.deptno from emp a
union
select dname, loc, b.deptno from dept b;

create table �л�����1
as
select * from �л����� where 1=1;
--1=1�ϸ� �����Ϳ� ǥ ��� ���� ... 1=0 �ϸ� ǥ�� ����
select * from �л�����1;

select rownum, a.�й�,a.�̸�,a.�г�,a.����,a.�Ҽ� from �л�����1 a; -- �Ѱ��� ����ߵ�;

--Q1) emp ���̺�κ��� �μ��� �ּҿ����� �μ���ȣ�� ������ �ش����� ��������� ���Ͻÿ�
--(���߿����������̿�)
select * from emp where (sal, deptno)in (select min(sal), deptno from emp group by deptno);

--Q2) �л� ���̺��� ������ ū ������� �����ϰ� ������ ū ���� 2���� ��� ������ ���Ͻÿ�.
--(rownum�Լ� �̿�)
--�� rownum �Լ� : ������ n���� ����� �� ����ϴ� �Լ��̸� ������� where������ ���.
select rownum, rnum, �й�, �̸�, �г�, ����, �Ҽ� from (
select rownum as rnum,�й�,�̸�,�г�,����,�Ҽ� from �л���ȸ order by ���� desc) b where rownum <3;
select * from �л�����;
select * from (select * from �л����� order by ���� desc) ab where rownum < 3;

--Q3) �л����̺��� �Ҽ��� CD�� �л����� �˻��Ͽ� �л�10���̺�� �����Ͻÿ�.
--(���̺����̿�)
create table �л�����10
as
select * from �л����� where �Ҽ�='CD';
select * from �л�����10;
select * from �л�����;
DROP TABLE �л�����10;
--Q4) �л����̺�� �л�10���̺��� ����(union all)�Ͽ� ������ ū ������� �����Ͻÿ�.
select * from �л�����
union all
select * from �л�����10;

select * from �л�����
union
select '�л�Ű','��',0,sum(����),'-' from �л�����;

--Q5) ������ 80�̻��� �л��� �й�,�̸�,������ ���ϵ� ���������� �����Ͻÿ�. (������ ���̺� �̿�)
select a.�й�, b.�̸�, a.���� from (
select * from ��������
where ���� >= 80) a, �л����� b
where a.�й�=b.�й�
order by ���� desc;