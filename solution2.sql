/*TASK2 1 */
SELECT PNumber, PTitle
FROM Project, Department
WHERE Department.DName = 'GAMES';

/*TASK2 2 */
SELECT DISTINCT WorksOn.ENumber, E.Name
FROM Employee, WorksOn
INNER JOIN Employee E on WorksOn.ENumber = E.ENumber
WHERE  PNumber = '1002' AND '1004';

/*TASK2 3 */
SELECT ENumber, UPPER(Name) AS Name
FROM Employee
WHERE DOB < STR_TO_DATE('01/01/1985', '%d/%m/%Y')
ORDER BY Name DESC;

/*TASK2 4 */
SELECT WorksOn.ENumber, UPPER(E.Name) AS Name
FROM (WorksOn INNER JOIN Employee E on WorksOn.ENumber = E.ENumber )
GROUP BY WorksOn.ENumber
HAVING count(WorksOn.PNumber) > 2;
