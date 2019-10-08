Insert Into CENTRALSTUDENT
Values(0, 'James', 'B.Sc', 2.33, 'sci');

Insert Into CENTRALSTUDENT
Values(1, 'Mary', 'B.Sc', 3.13, 'sci');

Insert Into CENTRALSTUDENT
Values(2, 'Al', 'B.Eng', 1.33, 'eng');

Insert Into CENTRALSTUDENT
Values(3, 'Susan', 'B.eng', 2.21, 'eng');

Insert Into CENTRALSTUDENT
Values(4, 'Charles', 'B.Sc', 3.51, 'sci');

Insert Into CentralProf
Values('Dr. A', 'KHE 231', 9051112222, 'ENG 122', 9052221111);

Insert Into CentralProf
Values('Dr. B', 'KHE 195', 9053334444, 'ENG 612', 9054443333);

Insert Into CentralProf
Values('Dr. C', 'KHE 802', 9055556666, 'ENG 232', 9056665555);

Insert Into CentralProf
Values('Dr. D', 'KHE 331', 9057778888, 'ENG 741', 9058887777);

Insert Into CentralProf
Values('Dr. E', 'KHE 092', 9059990000, 'ENG 216', 9050009999);

Insert Into COURSE
Values(100, 'intro to sci', 1);

Insert Into COURSE
Values(200, 'sci continued', 1);

Insert Into COURSE
Values(300, 'advanced sci', 2);

Insert Into COURSE
Values(400, 'super sci', 1);

Insert Into COURSE
Values(100, 'intro to sci', 1);

Insert Into COURSE
Values(500, 'intro to eng', 1);

Insert Into COURSE
Values(600, 'eng continued', 1);

Insert Into COURSE
Values(700, 'advanced eng', 2);

Insert Into COURSE
Values(800, 'super eng', 1);

INSERT INTO COURSE
VALUES (900, 'summer eng', 2);

Insert Into Teaches
Values(100, 'Dr. A', 'W');

Insert Into Teaches
Values(100, 'Dr. A', 'S');

Insert Into Teaches
Values(200, 'Dr. A', 'W');

Insert Into Teaches
Values(300, 'Dr. A', 'W');

Insert Into Teaches
Values(400, 'Dr. A', 'F');

Insert Into Teaches
Values(500, 'Dr. B', 'W');

Insert Into Teaches
Values(500, 'Dr. B', 'F');

Insert Into Teaches
Values(500, 'Dr. B', 'S');

Insert Into Teaches
Values(600, 'Dr. C', 'S');

Insert Into Teaches
Values(700, 'Dr. C', 'F');

Insert Into Teaches
Values(800, 'Dr. C', 'F');

Insert Into Teaches
Values(800, 'Dr. C', 'S');

Insert Into Teaches
Values(900, 'Dr. E', 'S');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (100, 'Dr. A');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (200, 'Dr. A');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (300, 'Dr. A');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (400, 'Dr. A');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (500, 'Dr. A');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (600, 'Dr. A');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (700, 'Dr. A');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (800, 'Dr. A');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (100, 'Dr. D');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (200, 'Dr. D');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (300, 'Dr. D');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (400, 'Dr. D');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (500, 'Dr. D');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (600, 'Dr. D');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (700, 'Dr. D');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (800, 'Dr. D');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (500, 'Dr. B');

Insert Into CanTeach (COURSENO, PROFNAME)
VALUES (800, 'Dr. C');

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (100, 'Dr. A', 0);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (200, 'Dr. A', 0);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (300, 'Dr. A', 0);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (400, 'Dr. A', 0);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (100, 'Dr. A', 1);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (100, 'Dr. A', 2);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (500, 'Dr. A', 2);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (500, 'Dr. C', 3);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (600, 'Dr. B', 3);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (700, 'Dr. C', 3);

INSERT INTO ENROLLED (courseno, profname, studentno)
VALUES (800, 'Dr. C', 3);
