 --5������ �����ϴ� �л��� �̸��� ���ϴ� ���.
 select �̸� from �л����� 
 where �й� = (select �й� from �������� group by �й� having count(�й�)=5);
 
 --���࿡ �÷����� from ���� �Ǿ����ִٸ� "from" �ֵ���ǥ�� �־������
 select �й�,count("��ȣ") from ��������
 group by �й�
 having count(��ȣ)=5;
 
 --������ȣ 102�� �����ϴ� �л����� ��ռ������� ���� �л��� �й��� ���ϴ� ���
select * from ��������;
select avg(����) from ��������;
 select * from �������� where ��ȣ=102 and ���� > (select avg(����) from ��������);
 select * from ��������;
 
 --�����ȣ 102�� �����ϴ� �л��� �̸��� ���϶�.
 select �̸� from �л�����
 where �й� in (select �й� from �������� where ��ȣ=102);
 select �й� from �������� where ��ȣ=102;
 select * from �л����� where �й�='07033';
 
 --�μ���ȣ�� 30���� ������� ������������ ���� �޴� ����� �̸�,������ ���϶�.
 select ename,sal from emp
 where sal > any(select sal from emp where deptno=30);
 
 --�����ȣ 101�� �����ϴ� �л��� �̸��� ���϶�.
 select �̸� from �л�����
 where exists(select �й� from �������� where ��ȣ='101' and �л�����.�й�=��������.�й�);

select * from tab;

--Q1) ��ȣ�� 102�� �����κ��� ��� �����̻��� ���� �л��� �й��� ���϶�.
select * from �������� where ��ȣ='102' and ���� >=(select avg(����) from ��������);

--Q2) �Ѱ��� �������� �ʴ� �л��� �й��� �̸�, �Ҽ��� ���϶�.(exists ���)
select * from �л����� a where not exists (select �й� from �������� b where a.�й�=b.�й�);
select * from �л�����;

--Q3) �Ҽ��� ���� �� �л��� �̸��� ��� ���϶�.(sub query, group by�� hanving���� �̿��Ͽ�)
select * from �л����� where �Ҽ� =
(select �Ҽ� from �л����� group by �Ҽ� having count(*)=2); 

--Q4) ������ ���ϻ� ������ ���� �Ҽ��� �л����� �й��� �̸��� ���Ͻÿ�.
select �й�,�̸� from �л����� where �Ҽ� =
(select �Ҽ� from �������� where ������ = '���ϻ�');

--Q5) �й��� 07002�� ���� �������� �� ���� ������ ���� �л��� �й��� ������ ���Ͻÿ�.(any Ȥ�� all �̿�)
select �й�,���� from �������� where ���� > any (select ���� from �������� where �й�='07002');