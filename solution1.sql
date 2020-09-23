/* TASK1 A */

INSERT INTO Department
VALUES (7, 'SERVICES', '00105', STR_TO_DATE('31/08/2018', '%d/%m/%Y'));

INSERT INTO DeptLocation
VALUES (7, '10	Church	street, Wollongong, NSW 2500');

UPDATE Employee
SET Supervisor = '00100'
WHERE ENumber = '00105';

/* TASK1 B */
UPDATE Department
SET Manager = '00110', MSDate = STR_TO_DATE('01/09/2018', '%d/%m/%Y')
WHERE DNumber = 2;

UPDATE Employee
SET Supervisor = '00110'
WHERE DNumber = 2;

UPDATE Department
SET Manager = '00120', MSDate = STR_TO_DATE('01/09/2018', '%d/%m/%Y')
WHERE DNumber = 1;

UPDATE Employee
SET Supervisor = '00120'
WHERE DNumber = 1;

/* TASK1 C */
UPDATE Department
SET Manager = '00136'
WHERE Manager = '00200';

UPDATE Employee
SET Supervisor = '00136'
WHERE Supervisor = '00200';

DELETE FROM Employee where ENumber = '00200';
