/*TASK3 1 */

SELECT ENumber, Name FROM Employee
WHERE EXISTS (SELECT * FROM Dependent WHERE Dependent.ENumber = Employee.ENumber);

/*TASK3 2 */
SELECT DISTINCT ENumber, Name FROM Employee
WHERE NOT EXISTS (SELECT * FROM WorksOn WHERE WorksOn.ENumber = Employee.ENumber);

/*TASK3 3 */
SELECT DISTINCT ENumber, Name FROM Employee
WHERE NOT EXISTS (select * FROM WorksOn A WHERE (A.PNumber IN (SELECT PNumber from Project))
AND NOT EXISTS (SELECT * FROM WorksOn B WHERE Employee.ENumber = B.ENumber  and A.PNumber = B.PNumber));
