select ENAME, SALARY from EMPLOYEE

select ENAME from EMPLOYEE

#I could not find a hired date, if there were than 
SELECT * FROM EMPLOYEE WHERE HIRED_DATE <16; like some thing.

SELECT * FROM EMPLOYEE WHERE SEX = 'F'

SELECT *FROM EMPLOYEE WHERE SALARY IN (SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT E.ENAME , E.ADDRESS , E.DNO , D.DNAME
FROM EMPLOYEE E 
JOIN DEPARTMENT D ON E.DNO = D.DNUMBER;


SELECT E.ENAME , E.ADDRESS , E.DNO , D.DNAME
FROM EMPLOYEE E 
JOIN DEPARTMENT D ON E.DNO = D.DNUMBER WHERE NOT DNAME = 'ACADEMIC'

SELECT E.ENAME , E.ADDRESS , E.DNO , P.PLOCATION
FROM EMPLOYEE E 
JOIN PROJECT P ON E.DNO = P.DNUM WHERE ENAME = 'SATYA'

SELECT E.ENAME, SUM(W.HOURS) AS TOTAL_HOURS
FROM EMPLOYEE E
JOIN WORKS_ON W ON E.ESRNO = W.ESRNO
WHERE E.SEX = 'F'
GROUP BY E.ENAME;

SELECT E.ENAME , E.ADDRESS , E.DNO , P.PLOCATION
FROM EMPLOYEE E 
JOIN PROJECT P ON E.DNO = P.DNUM 
WHERE PLOCATION = 'SOUTH AFRICA'



