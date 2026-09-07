--모든 사원을 가져오기
--오직 db 제품에서만 해석 및 실행될 수있는 언어를 가리켜
--SQL(Structured Query Languge) 이라 함
--구어체..(마치 회화같다)
--[SQL언어의 3가지 유형]
--1.DDL(database Definition Language) 데이터베이스 정의어
--탄생(Create),변경(Alter),소멸(drop)과 관련된 명령어
--2.DML(data Manipulation language) 데이터 조작어
--이미 존재하는 데이터를 넣거나(insert), 수정하거나 (update), 삭제하는것
--delete
--3.DCL(database Control Language) 권한을 부여, 뺏는 등 작업
--4.조회(select)

--모든 사원의 정보를 가져오기
select empno, ename,jab,hiredate,sal,comm,deptno
from emp;

--모든 사원의 정보 중 사원번호,이름,급여만 가져오기
select empno,ename,sal from emp;

-- 사원명이 SCOTT 인 사람의 사원명, 급여, 입사일 조회
select ename,sal,hiredate from emp if where ename='SCOTT';

-- 급여가 3000 미만인 사워느이 이름, 급여, 입사일을 조회
select ename, sal, hiredate from emp where sal < 3000;

-- 급여가 2500 이상인 사워느이 이름, 급여, 커미션을 조회
select ename, sal, comm from emp where sal =>= 2500;

-- 모든사원의 정보를 출력하되, 급여가 높은 순으로 정렬하여 출력 (내림차순)
select * from emp order by sal desc;

-- 오름차순..
select * from emp order by sal asc;

-- 이름이 S로 시작하는 사원의 이름, 급여 , 입사일을 출력하시오
select ename, sal, hiredate from emp where ename like 'S%';

-- 이름이 T로 끝나는 사원의 이름, 급여,입사일을 출력하시오

select ename, sal, hiredate from emp where ename like '%T';

-- 업무가 S로 시작하고, N으로 끝나는 업무명인 사원의 이름, 업무, 급여 출력
select ename, job, sal from emp where job like 'S%N';

--
