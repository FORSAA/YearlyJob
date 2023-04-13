USE SchoolDB


-------------------------------------------------------аюгнбне онксвемхе
GO
CREATE PROCEDURE [dbo].[GetOlimpyiadSubjects]
as
select * from OlimpyadSubjects

GO 
CREATE PROCEDURE [dbo].[GetOlimpyiad]
as
select * from Olimpyiad


GO 
CREATE PROCEDURE [dbo].[GetStudent_Olimpyiad]
as
select * from Student_Olimpyad

GO 
CREATE PROCEDURE [dbo].[GetStudentComment]
as
select * from StudentComment

-------------------------------------------------------онксвемхе он ID
GO
CREATE PROCEDURE [dbo].[GetOlimpiyadSubjectById]
@Id int
as
select * from OlimpyadSubjects where OlimpyadSubjects.id = @Id

GO
CREATE PROCEDURE [dbo].[GetOlimpiyadById]
@Id int
as
select * from Olimpyiad where Olimpyiad.id = @Id

GO
CREATE PROCEDURE [dbo].[GetStudent_OlimpyiadByStudentId]
@Id int
as
select * from Student_Olimpyad where Student_Olimpyad.Student_Id = @Id

GO
CREATE PROCEDURE [dbo].[GetStudent_OlimpyiadByOlimpyiadId]
@Id int
as
select * from Student_Olimpyad where Student_Olimpyad.Olimpyiad_Id = @Id

GO
CREATE PROCEDURE [dbo].[GetStudentCommentById]
@Id int
as
select * from StudentComment where StudentComment.Student_Id = @Id

-------------------------------------------------------онксвемхе я хяонкэгнбюмхел JOIN
GO
CREATE PROCEDURE [dbo].[GetStudents]
as
select ST.Id, ST.Surname, ST.[Name], ST.Fatherhood, ST.SchoolClass, SC.Comment from Student as ST
join StudentComment as SC on SC.Student_Id = ST.Id

GO
CREATE PROCEDURE [dbo].[GetStudentById]
@Id int
as
select ST.Id, ST.Surname, ST.[Name], ST.Fatherhood, ST.SchoolClass, SC.Comment from Student as ST
join StudentComment as SC on SC.Student_Id = @Id
where ST.Id = @Id

GO
CREATE PROCEDURE [dbo].[GetOlimpyiadById]
@Id int
as
select * from Olimpyiad where Olimpyiad.Id = @Id
GO
CREATE PROCEDURE [dbo].[GetAllStudentOlimpyiades]
@Id int
as
select St.Id, ST.Surname, ST.[Name], ST.Fatherhood, ST.SchoolClass, Ol.OlympiadName, SO.Points from Student as ST
join Student_Olimpyad as SO on SO.Student_Id = ST.Id
join Olimpyiad as Ol on Ol.Id = SO.Olimpyiad_Id
where ST.Id = @Id

GO
CREATE PROCEDURE [dbo].[GetOlimpyiadesBySubject]
@Id int
as
select * from Olimpyiad where Olimpyiad.OlympiadSubject = @Id

-------------------------------------------------------днаюбкемхе
GO
CREATE PROCEDURE [dbo].[AddStudent]
@Name nvarchar(150),
@Surname nvarchar(150),
@Fatherhood nvarchar(150),
@Class nvarchar(5)
as
INSERT Student VALUES (@Name, @Surname, @Fatherhood, @Class)

GO
CREATE PROCEDURE [dbo].[AddOlimpyiad]
@OlimpyiadSubjectId int,
@OlimpyiadName nvarchar(350),
@OlimpyiadDate date
as
INSERT Olimpyiad VALUES(@OlimpyiadSubjectId, @OlimpyiadName, @OlimpyiadDate)

GO
CREATE PROCEDURE [dbo].[AddComment]
@StudentId int,
@Comment nvarchar(350)
as
INSERT StudentComment VALUES(@StudentId, @Comment)
-------------------------------------------------------намнбкемхе
GO
CREATE PROCEDURE [dbo].[UpdateStudentById]
@Id int,
@Name nvarchar(150),
@Surname nvarchar(150),
@Fatherhood nvarchar(150),
@Class nvarchar(5)
as
UPDATE Student
SET [Name] = @Name, [Surname] = @Surname, [Fatherhood] = @Fatherhood, [SchoolClass] = @Class 
where Student.Id = @Id 

GO
CREATE PROCEDURE [dbo].[UpdateStudent_Olimpyiad]
@OldOlimpyiadId int,
@OldStudentId int,
@NewOlimpyiadId int,
@NewStudentId int,
@Points int
as
UPDATE Student_Olimpyad
SET Olimpyiad_Id = @NewOlimpyiadId, Student_Id = @NewStudentId, Points = @Points 
where Olimpyiad_Id = @OldOlimpyiadId and Student_Id = @OldStudentId