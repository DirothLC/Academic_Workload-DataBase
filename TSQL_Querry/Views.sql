CREATE VIEW Нагрузка_Преподавателя AS
SELECT dbo.AcademicWorkload.workloadPeriod, dbo.AcademicWorkload.typeOfAcademicWorkloadID, dbo.AcademicWorkload.hoursCount, dbo.AcademicWorkload.disciplineID, dbo.AcademicWorkload.groupID, dbo.Teachers.fullName
FROM     dbo.AcademicWorkload INNER JOIN
                  dbo.Teachers ON dbo.AcademicWorkload.teacherID = dbo.Teachers.id
WHERE  (dbo.Teachers.fullName LIKE 'Лисицына%')

CREATE VIEW Дисциплины_Группа_Семестр AS
SELECT dbo.Discipline.nameDiscipline, dbo.Discipline.semester, dbo.AcademicGroup.groupTitle
FROM     dbo.AcademicGroup INNER JOIN
                  dbo.AcademicWorkload ON dbo.AcademicGroup.groupID = dbo.AcademicWorkload.groupID INNER JOIN
                  dbo.Discipline ON dbo.AcademicWorkload.disciplineID = dbo.Discipline.ID
WHERE  (dbo.AcademicGroup.groupID = 1) AND (dbo.Discipline.semester = 1)

CREATE VIEW Преподаватели_Диплом AS
SELECT dbo.Teachers.fullName
FROM     dbo.AcademicWorkload INNER JOIN
                  dbo.Teachers ON dbo.AcademicWorkload.teacherID = dbo.Teachers.id
WHERE  (dbo.AcademicWorkload.typeOfAcademicWorkloadID = 6)

CREATE VIEW Группы_преподавателя AS
SELECT DISTINCT TOP (100) PERCENT dbo.Teachers.fullName, dbo.Discipline.nameDiscipline, dbo.AcademicGroup.groupTitle
FROM     dbo.AcademicGroup INNER JOIN
                  dbo.AcademicWorkload ON dbo.AcademicGroup.groupID = dbo.AcademicWorkload.groupID INNER JOIN
                  dbo.Discipline ON dbo.AcademicWorkload.disciplineID = dbo.Discipline.ID INNER JOIN
                  dbo.Teachers ON dbo.AcademicWorkload.teacherID = dbo.Teachers.id
ORDER BY dbo.Teachers.fullName

CREATE VIEW Дисциплины_семестра AS
SELECT nameDiscipline, semester
FROM     dbo.Discipline
WHERE  (semester = 4)

