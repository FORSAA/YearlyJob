use YearlyJob

GO
CREATE PROCEDURE [dbo].[GetStudents]
as
select * from Student

GO
CREATE PROCEDURE [dbo].[GetStudentById]
@Id int
as
select ST.Id as ID ,ST.Student_Name as [Name], ST.Student_Surname as Surname, ST.SchoolClass as Class, SC.Comment as Comment from Student as ST 
join StudentComment as SC on SC.Student_Id = @Id
where ST.Id = @Id


GO
CREATE PROCEDURE [dbo].[GetFullStudentsInfoIncludeCoomment]
as
select ST.Student_Name as [Name], ST.Student_Surname as Surname, ST.SchoolClass as [Class], SC.Comment as Comment from Student as ST
join StudentComment as SC on SC.Student_Id = ST.Id

GO
CREATE PROCEDURE [dbo].[GetStudentsAndTheirsResults]
as
select ST.Id, ST.Student_Name, ST.Student_Surname, ST.SchoolClass, SO.Points, O.OlimpyiadName, OS.OlimpyiadSubject from Student as ST
join Student_Olimpyiad as SO on SO.Student_Id = ST.Id
join Olimpyiad as O on O.Id = SO.Olimpyiad_Id
join OlimpyadSubjects as OS on OS.Id = O.OlimpyiadSubject