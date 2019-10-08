INSERT INTO CENTRALSTUDENT
    (SELECT *
    FROM SciStudent s1
    WHERE
        NOT EXISTS
        (SELECT *
        FROM CENTRALSTUDENT s
        WHERE s.studentno = s1.studentno)

        UNION

        (SELECT *
        FROM EngStudent s2
        WHERE
            NOT EXISTS
            (SELECT *
            FROM CENTRALSTUDENT s
            WHERE s.studentno = s2.studentno)
        )
    );

INSERT INTO CENTRALPROF
    (SELECT *
    FROM CENTRALPROF
    WHERE NOT EXISTS
        (SELECT s.profname, s.scioffice, s.sciphone, e.engoffice, e.engphone
        FROM SciProf s
        INNER JOIN EngProf e ON e.profname = s.profname)
    );


INSERT INTO Course
      (SELECT *
      FROM SciCourse s1
      WHERE
          NOT EXISTS
          (SELECT *
          FROM Course s
          WHERE s.courseno = s1.courseno)

          UNION

          (SELECT *
          FROM EngCourse s2
          WHERE
              NOT EXISTS
              (SELECT *
              FROM Course s
              WHERE s.courseno = s2.courseno)
          )
      );

INSERT INTO CanTeach
    (SELECT *
    FROM Scicanteach s1
    WHERE
        NOT EXISTS
        (SELECT *
        FROM canteach s
        WHERE s.courseno = s1.courseno)

        UNION

        (SELECT *
        FROM Engcanteach s2
        WHERE
            NOT EXISTS
            (SELECT *
            FROM canteach s
            WHERE s.courseno = s2.courseno)
        )
    );

INSERT INTO teaches
  (SELECT *
  FROM Sciteaches s1
  WHERE
      NOT EXISTS
      (SELECT *
      FROM teaches s
      WHERE s.courseno = s1.courseno)

      UNION

      (SELECT *
      FROM Engteaches s2
      WHERE
          NOT EXISTS
          (SELECT *
          FROM teaches s
          WHERE s.courseno = s2.courseno)
      )
  );
