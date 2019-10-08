/*1.
List of all students in each course*/
SELECT s1.StudentName, e1.CourseNo
FROM SciStudent s1, SciEnrolled e1
WHERE s1.studentno = e1.studentno
    UNION
    (SELECT S2.StudentName, E2.CourseNo
    FROM EngStudent S2, EngEnrolled E2
    WHERE s2.studentno = e2.studentno)
ORDER BY CourseNo;

/*2.
list of all students with a gpa > 2*/
SELECT s1.studentName, s1.GPA
FROM SciStudent s1
WHERE s1.GPA > 2
    UNION
    (SELECT s2.studentname, s2.GPA
    FROM EngStudent s2
    WHERE s2.GPA > 2);

/*3.
List of all students in enrolled in professor A's class*/
SELECT s1.studentName, e1.profname, c1.coursename
FROM SciStudent s1, SciCourse c1, SciEnrolled e1
WHERE
    e1.profname = 'Dr. A'
    AND
    e1.courseno = c1.courseno
    AND
    e1.studentno = s1.studentno

    UNION
    (SELECT s2.studentName, e2.profname, c2.coursename
        FROM EngStudent s2, EngEnrolled e2, EngCourse c2
        WHERE
            e2.profname = 'Dr. A'
            AND
            e2.courseno = c2.courseno
            AND
            e2.studentno = s2.studentno);


/*4.
Names of all profs who are teaching a course that they have not said they can teach*/
SELECT t1.profname, t1.courseno
FROM SciTeaches t1
WHERE NOT EXISTS
    (SELECT ct1.profname, ct1.courseno
    FROM SciCanTeach ct1
    WHERE t1.profname = ct1.profname
        AND
        t1.courseno = ct1.courseno)

    UNION

    (SELECT t2.profname, t2.courseno
    FROM EngTeaches t2
    WHERE NOT EXISTS
        (SELECT ct2.profname, ct2.courseno
        FROM EngCanTeach ct2
        WHERE t2.profname = ct2.profname
        AND
        t2.courseno = ct2.courseno)
    );

/*5.
List of all profs who are not teaching a course*/
SELECT p1.profname
FROM SciProf p1
WHERE NOT EXISTS
    (SELECT *
    FROM SciEnrolled e1
    WHERE e1.profname = p1.profname)

    UNION
    (SELECT p2.profname
    FROM EngProf p2
    WHERE
    NOT EXISTS
        (SELECT *
        FROM EngEnrolled e2
        WHERE e2.profname = p2.profname)
    );

/*6.
List of all students not taking courseno 100*/
SELECT s1.studentName
FROM SciStudent s1
WHERE
    NOT EXISTS
    (SELECT *
    FROM SciEnrolled e1
    WHERE e1.courseno = 100
    AND
    e1.studentno = s1.studentno)

    UNION
    (SELECT s2.studentName
        FROM EngStudent s2
        WHERE
            NOT EXISTS
            (SELECT *
            FROM SciEnrolled e2
            WHERE e2.courseno = 100
            AND
            e2.studentno = s2.studentno)
    );

/*7.
List of Students who have a GPA between 2 and 3*/
SELECT *
FROM SciStudent
WHERE
    GPA BETWEEN 2 AND 3
    UNION
        (SELECT *
        FROM EngStudent
        WHERE GPA BETWEEN 2 AND 3)
    ;


/*8.
List of profs who are only teaching summer courses*/
SELECT *
FROM Sciteaches t1
WHERE
    t1.term = 'S'
    AND NOT EXISTS
    (SELECT *
    FROM SciTeaches t2
    WHERE
        t2.term <> 'S'
        AND t2.profname = t1.profname)
    UNION
    (SELECT *
    FROM engteaches t3
    WHERE
        t3.term = 'S'
        AND NOT EXISTS
        (SELECT *
        FROM EngTeaches t4
        WHERE
            t4.term <> 'S'
            AND t3.profname = t4.profname)
    );
