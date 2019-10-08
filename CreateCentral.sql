CREATE TABLE CENTRALSTUDENT(
    StudentNo int,
    StudentName varchar(255),
    Degree varchar(25),
    GPA numeric(1, 2) CHECK (GPA < 4),
    Faculty varchar(25),
    PRIMARY KEY (StudentNo)
);

CREATE TABLE CENTRALPROF(
    ProfName varchar(255),
    SciOffice varchar(25),
    SciPhone int,
    EngOffice varchar(25),
    EngPhone int,
    PRIMARY KEY(ProfName)
);

CREATE TABLE COURSE(
    CourseNo int,
    CourseName varchar(255),
    Credits int,
    PRIMARY KEY (courseno)
);

CREATE TABLE CanTeach(
    CourseNo int,
    ProfName varchar(255),
    Preference varchar(25),
    Evaluation varchar(25),
    FOREIGN KEY (CourseNo) REFERENCES COURSE(courseno),
    FOREIGN KEY (ProfName) REFERENCES CENTRALPROF(profname)
);

CREATE TABLE TEACHES(
    CourseNo int,
    ProfName varchar(255),
    Term char,
    FOREIGN KEY (CourseNo) REFERENCES COURSE(courseno),
    FOREIGN KEY (ProfName) REFERENCES CENTRALPROF(profname)
);

CREATE TABLE ENROLLED(
    CourseNo int,
    ProfName varchar(255),
    StudentNo int,
    Status varchar(25),
    FOREIGN KEY (CourseNo) REFERENCES COURSE(courseno),
    FOREIGN KEY (ProfName) REFERENCES CENTRALPROF(profname),
    FOREIGN KEY (StudentNo) REFERENCES CENTRALSTUDENT(studentno)
);