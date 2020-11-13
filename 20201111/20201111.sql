 --5과목을 수강하는 학생의 이름을 구하는 경우.
 select 이름 from 학생영준 
 where 학번 = (select 학번 from 수강영준 group by 학번 having count(학번)=5);
 
 --만약에 컬럼명이 from 으로 되어져있다면 "from" 쌍따옴표를 넣어줘야함
 select 학번,count("번호") from 수강영준
 group by 학번
 having count(번호)=5;
 
 --교수번호 102를 수강하는 학생들중 평균성적보다 높은 학생의 학번을 구하는 경우
select * from 수강영준;
select avg(성적) from 수강영준;
 select * from 수강영준 where 번호=102 and 성적 > (select avg(성적) from 수강영준);
 select * from 설강영준;
 
 --과목번호 102를 수강하는 학생의 이름을 구하라.
 select 이름 from 학생영준
 where 학번 in (select 학번 from 수강영준 where 번호=102);
 select 학번 from 수강영준 where 번호=102;
 select * from 학생영준 where 학번='07033';
 
 --부서번호가 30번인 사원들의 최저연봉보다 많이 받는 사원의 이름,연봉을 구하라.
 select ename,sal from emp
 where sal > any(select sal from emp where deptno=30);
 
 --과목번호 101을 수강하는 학생의 이름을 구하라.
 select 이름 from 학생영준
 where exists(select 학번 from 수강영준 where 번호='101' and 학생영준.학번=수강영준.학번);

select * from tab;

--Q1) 번호가 102인 교수로부터 평균 성적이상을 받은 학생의 학번을 구하라.
select * from 수강영준 where 번호='102' and 성적 >=(select avg(성적) from 수강영준);

--Q2) 한과목도 수강하지 않는 학생의 학번과 이름, 소속을 구하라.(exists 사용)
select * from 학생영준 a where not exists (select 학번 from 수강영준 b where a.학번=b.학번);
select * from 학생영준;

--Q3) 소속이 같은 두 학생의 이름을 모두 구하라.(sub query, group by와 hanving절을 이용하여)
select * from 학생영준 where 소속 =
(select 소속 from 학생영준 group by 소속 having count(*)=2); 

--Q4) 교수명 김일삼 교수와 같은 소속의 학생들의 학번과 이름을 구하시오.
select 학번,이름 from 학생영준 where 소속 =
(select 소속 from 설강영준 where 교수명 = '김일삼');

--Q5) 학번이 07002가 받은 성적보다 더 많은 점수를 받은 학생의 학번과 성적을 구하시오.(any 혹은 all 이용)
select 학번,성적 from 수강영준 where 성적 > any (select 성적 from 수강영준 where 학번='07002');