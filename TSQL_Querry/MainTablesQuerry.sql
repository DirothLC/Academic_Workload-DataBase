CREATE TABLE TypesOfAcademicWorkload
(code int PRIMARY KEY,
nameOfWorkload varchar(50) NOT NULL,
);

CREATE TABLE Department
(ID int PRIMARY KEY,
departmentTitle title NOT NULL
);

CREATE TABLE JobTitle
(ID int PRIMARY KEY,
jobName title NOT NULL
);

CREATE TABLE AvailableTypeOfWorkload
(jobID int NOT NULL REFERENCES JobTitle(ID) ON UPDATE CASCADE ON DELETE NO ACTION,
workloadID int NOT NULL REFERENCES TypesOfAcademicWorkload(code) ON UPDATE CASCADE ON DELETE NO ACTION,
PRIMARY KEY (jobID,workloadID)
);

CREATE TABLE Normative
(rate decimal(2, 2) PRIMARY KEY,
countOfHours smallint NOT NULL
CHECK(countOfHours>=0)
);

CREATE TABLE Teachers
(id int PRIMARY KEY,
fullName varchar(max) NOT NULL,
jobTitleID int NOT NULL REFERENCES JobTitle(ID) ON UPDATE CASCADE ON DELETE NO ACTION,
departmentID int NOT NULL REFERENCES Department(ID) ON UPDATE CASCADE ON DELETE NO ACTION,
sizeOfRate decimal(2, 2) NULL
);

CREATE TABLE Discipline
(ID int PRIMARY KEY,
nameDiscipline title NOT NULL,
semester tinyint NOT NULL
CHECK (semester between 1 AND 10)
);

CREATE TABLE AcademicGroup
(groupID int PRIMARY KEY,
groupTitle title NOT NULL,
number smallint NOT NULL CHECK (number>=0),
departmentID int NOT NULL REFERENCES Department(ID) ON UPDATE CASCADE ON DELETE NO ACTION,
);

CREATE TABLE AcademicWorkload
(workloadPeriod varchar(10) NOT NULL CHECK(workloadPeriod IN('осень','весна')),
teacherID int NOT NULL REFERENCES Teachers(ID) ON UPDATE CASCADE ON DELETE NO ACTION,
typeOfAcademicWorkloadID int NOT NULL REFERENCES TypesOfAcademicWorkload(code) ,
hoursCount smallint NOT NULL CHECK (hoursCount>=0) ,
disciplineID int NOT NULL REFERENCES Discipline(ID),
groupID int NOT NULL REFERENCES AcademicGroup(groupID)
);

