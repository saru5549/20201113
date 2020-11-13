SELECT ename, sal, job 
from emp where (sal, deptno) in (
select sal, deptno from emp where deptno = 30AND comm is not null);

select a.학번 from (select * from 학생영준) a;
select * from 학생영준;

select ename, job, a.deptno from emp a
union
select dname, loc, b.deptno from dept b;

create table 학생영준1
as
select * from 학생영준 where 1=1;
--1=1하면 데이터와 표 모두 복사 ... 1=0 하면 표만 복사
select * from 학생영준1;

select rownum, a.학번,a.이름,a.학년,a.신장,a.소속 from 학생영준1 a; -- 한개씩 적어야됨;

--Q1) emp 테이블로부터 부서별 최소연봉과 부서번호를 구한후 해당사원의 모든정보를 구하시오
--(다중열서브쿼리이용)
select * from emp where (sal, deptno)in (select min(sal), deptno from emp group by deptno);

--Q2) 학생 테이블에서 신장이 큰 순서대로 정렬하고 신장이 큰 상위 2명의 모든 정보를 구하시오.
--(rownum함수 이용)
--※ rownum 함수 : 상위의 n개를 출력할 때 사용하는 함수이며 사용방법은 where절에서 사용.
select rownum, rnum, 학번, 이름, 학년, 신장, 소속 from (
select rownum as rnum,학번,이름,학년,신장,소속 from 학생명회 order by 신장 desc) b where rownum <3;
select * from 학생영준;
select * from (select * from 학생영준 order by 신장 desc) ab where rownum < 3;

--Q3) 학생테이블중 소속이 CD인 학생만을 검색하여 학생10테이블로 복제하시오.
--(테이블복제이용)
create table 학생영준10
as
select * from 학생영준 where 소속='CD';
select * from 학생영준10;
select * from 학생영준;
DROP TABLE 학생영준10;
--Q4) 학생테이블과 학생10테이블을 병합(union all)하여 신장이 큰 순서대로 정렬하시오.
select * from 학생영준
union all
select * from 학생영준10;

select * from 학생영준
union
select '학생키','합',0,sum(신장),'-' from 학생영준;

--Q5) 성적이 80이상인 학생의 학번,이름,성적을 구하되 성적순으로 정렬하시오. (가상의 테이블 이용)
select a.학번, b.이름, a.성적 from (
select * from 수강영준
where 성적 >= 80) a, 학생영준 b
where a.학번=b.학번
order by 성적 desc;