CREATE TABLE ENGSTUDENT
    AS (SELECT Studentno, StudentName, Degree, GPA
        FROM CENTRALSTUDENT@LocalDB
        WHERE Faculty = 'eng'
    );

CREATE TABLE EngPROF AS
    (SELECT ProfName, EngOffice, EngPhone
   FROM CENTRALPROF@LocalDB);

CREATE TABLE EngCOURSE AS
    (SELECT *
    FROM COURSE@LocalDB
    WHERE courseno >= 500);

CREATE TABLE ENGCANTEACH AS
    (SELECT *
    FROM CANTEACH@LocalDB
    WHERE courseno >= 500);

CREATE TABLE EngTEACHES AS
    (SELECT *
    FROM TEACHES@LocalDB
    WHERE courseno >= 500);

    CREATE TABLE EngENROLLED AS
        (SELECT *
        FROM ENROLLED@LocalDB);
