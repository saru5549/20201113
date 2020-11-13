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

--ex1) 학생 table에서 학생의 이름, 신장을 출력하시오.
SELECT 이름, 신장 FROM 학생영준;

--ex2) 학생 table에서 학번이 08001인 학생의 학번,이름,소속을 출력하시오.
SELECT 학번,이름,소속 FROM 학생영준 WHERE 학번='08001';

--ex3) 학생 table에서 학년이 3학년이면서 소속이 ID인 학생의 모든정보를 구하시오.
SELECT * FROM 학생영준 WHERE 학년='3' AND 소속='ID';

--ex4) 학생 table에서 신장이 170이상인 학생의 이름,신장,소속을 구하시오.
SELECT 이름,신장,소속 FROM 학생영준 WHERE 신장>=170;

--ex5) 수강테이블에서 성적이 80이상 90이하인 학생의 학번과 성적을 구하시오.
--1)
SELECT 학번,성적 FROM 수강영준 WHERE 성적>=80 AND 성적<=90;
--2)
SELECT 학번,성적 FROM 수강영준 WHERE 성적 BETWEEN 80 AND 90;

--ex6) 학생테이블에서 소속이 CD가 아닌 학생의 모든정보를 구하시오.
SELECT * FROM 학생영준 WHERE 소속!='CD';

--ex7) 설강테이블에서 교수명이 김으로 시작하는 정보의 교수명,과목명을 구하시오.
SELECT 교수명,과목명 FROM 설강영준 WHERE 교수명 LIKE('김%');

--ex8) 설강테이블에서 교수명이 이로 시작하면서 두자리인 교수명과 과목명을 구하시오.
SELECT 교수명,과목명 FROM 설강영준 WHERE 교수명 LIKE('이_');

--ex9) 설강테이블에서 교수명이 김씨가 아닌 모든 정보를 검색하시오.
SELECT * FROM 설강영준 WHERE 교수명 NOT LIKE('김%');

--ex10) 소속이 CD인 학생중 신장이 170이상 되는 학생의 학년과 신장을 구하시오.
SELECT 학년,신장 FROM 학생영준 WHERE 소속='CD' AND 신장>=170;

--ex11) 학생테이블을 신장이 큰순에서 작은순서 대로 정렬하시오.
SELECT * FROM 학생영준 ORDER BY 신장 DESC;

--ex12) 소속이 CD인 학생을 신장 크기 순으로 구하시오.
SELECT * FROM 학생영준 WHERE 소속='CD' ORDER BY 신장 DESC;

--ex13) 학생테이블에서 소속이 ID또는 ED가 아닌 학생의 모든 정보를 구하시오.
SELECT * FROM 학생영준 WHERE 소속 NOT IN('ID','ED');