select * from emp;

select sum(sal) as total from emp;
select round(avg(sal),2) as total from emp;

select max(sal) from emp;
select min(sal) from emp;

select count(*) as cnt from emp;

select job,count(*) from emp
group by job
having job ='SALESMAN';

select * from �л�����;
select * from ��������;
select * from ��������;
--ex1) �л����� ��� ������ ���϶�.
select avg(����) as ��ս��� from �л�����;

--ex2) �ҼӺ��� �л����� ��� ������ ���Ͻÿ�.
select �Ҽ�, round(avg(����)) from �л����� group by �Ҽ�;

--ex3) �������̺��� �л��� ��ռ����� ������ ��ռ����� ���� ������� �����Ͻÿ�.
select �й�, avg(����) from ��������
group by �й�
order by avg(����) desc;

--ex4) ������ȣ 102�� ������ ������ ������ �����ϴ� �л��� ���� ����϶�.
--SQL> select count(distinct �й�) from ���� where ��ȣ = ��102�� ;
--�� dintinct : �ߺ��� Ʃ���� �����ϴ� Ű����.
select count(*) from �������� where ��ȣ=102;
select * from ��������
where ��ȣ=102;
select distinct(�й�) from ��������;

--ex5) ������ �̻� �����ϴ� �л��� �й��� ���Ͻÿ�.
--SQL> 
select �й� from �������� group by �й� having count(*) >= 3 ;
select �̸�, �й� from �л�����
where �й� = (select �й� from �������� group by �й�
having count(*) >=3);