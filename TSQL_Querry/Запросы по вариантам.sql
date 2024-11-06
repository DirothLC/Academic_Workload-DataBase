SELECT AcademicWorkload.workloadPeriod, AcademicWorkload.typeOfAcademicWorkloadID, AcademicWorkload.hoursCount, AcademicWorkload.disciplineID, AcademicWorkload.groupID, Teachers.fullName
FROM     AcademicWorkload INNER JOIN
                  Teachers ON AcademicWorkload.teacherID = Teachers.id
WHERE  (Teachers.fullName Like 'Лисицына%')

SELECT SUM(AcademicWorkload.hoursCount) AS Expr1, Department.departmentTitle
FROM AcademicWorkload
INNER JOIN Teachers ON AcademicWorkload.teacherID = Teachers.id
INNER JOIN Department ON Teachers.departmentID = Department.ID
WHERE Department.departmentTitle Like 'Горное дело' AND AcademicWorkload.workloadPeriod = 'Осень'
GROUP BY Department.departmentTitle

SELECT DISTInCT Discipline.nameDiscipline
FROM     AcademicWorkload INNER JOIN
                  Discipline ON AcademicWorkload.disciplineID = Discipline.ID
WHERE  (AcademicWorkload.workloadPeriod LIKE 'Весна') AND (Discipline.nameDiscipline LIKE '%данных%')

SELECT Teachers.fullName, Normative.countOfHours  AS TotalHoursCount
FROM Normative
INNER JOIN Teachers ON Normative.rate=Teachers.sizeOfRate
GROUP BY Teachers.fullName

SELECT Department.departmentTitle, COUNT(Teachers.id) AS Teachers
FROM Department
INNER JOIN Teachers ON Department.ID = Teachers.departmentID
INNER JOIN JobTitle ON JobTitle.ID = Teachers.jobTitleID
WHERE JobTitle.jobName LIKE 'доцент'
GROUP BY Department.departmentTitle


