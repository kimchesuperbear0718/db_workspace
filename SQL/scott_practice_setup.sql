-- SQL 조회 연습용 SCOTT 사원 데이터
-- 기존 javadb를 건드리지 않고 scott_practice 데이터베이스를 사용합니다.

CREATE DATABASE IF NOT EXISTS scott_practice
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;

USE scott_practice;

CREATE TABLE IF NOT EXISTS dept (
    deptno INT PRIMARY KEY,
    dname VARCHAR(20) NOT NULL,
    loc VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS emp (
    empno INT PRIMARY KEY,
    ename VARCHAR(20) NOT NULL,
    job VARCHAR(20) NOT NULL,
    mgr INT NULL,
    hiredate DATE NOT NULL,
    sal DECIMAL(10, 2) NOT NULL,
    comm DECIMAL(10, 2) NULL,
    deptno INT NOT NULL
);

INSERT IGNORE INTO dept (deptno, dname, loc) VALUES
    (10, 'ACCOUNTING', 'NEW YORK'),
    (20, 'RESEARCH', 'DALLAS'),
    (30, 'SALES', 'CHICAGO'),
    (40, 'OPERATIONS', 'BOSTON');

INSERT IGNORE INTO emp
    (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES
    (7369, 'SMITH',  'CLERK',     7902, '1980-12-17',  800, NULL, 20),
    (7499, 'ALLEN',  'SALESMAN',  7698, '1981-02-20', 1600,  300, 30),
    (7521, 'WARD',   'SALESMAN',  7698, '1981-02-22', 1250,  500, 30),
    (7566, 'JONES',  'MANAGER',   7839, '1981-04-02', 2975, NULL, 20),
    (7654, 'MARTIN', 'SALESMAN',  7698, '1981-09-28', 1250, 1400, 30),
    (7698, 'BLAKE',  'MANAGER',   7839, '1981-05-01', 2850, NULL, 30),
    (7782, 'CLARK',  'MANAGER',   7839, '1981-06-09', 2450, NULL, 10),
    (7788, 'SCOTT',  'ANALYST',   7566, '1987-04-19', 3000, NULL, 20),
    (7839, 'KING',   'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
    (7844, 'TURNER', 'SALESMAN',  7698, '1981-09-08', 1500,    0, 30),
    (7876, 'ADAMS',  'CLERK',     7788, '1987-05-23', 1100, NULL, 20),
    (7900, 'JAMES',  'CLERK',     7698, '1981-12-03',  950, NULL, 30),
    (7902, 'FORD',   'ANALYST',   7566, '1981-12-03', 3000, NULL, 20),
    (7934, 'MILLER', 'CLERK',     7782, '1982-01-23', 1300, NULL, 10);

SELECT COUNT(*) AS emp_count FROM emp;
