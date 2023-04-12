use YearlyJob

GO 
CREATE PROCEDURE [dbo].[GetOlimpyiad]
as
select * from Olimpyiad

GO
CREATE PROCEDURE [dbo].[GetOlimpyiadById]
@Id int
as
select * from Olimpyiad where Olimpyiad.Id = @Id

GO
CREATE PROCEDURE [dbo].[GetOlimpiyadSubjectByOlimpiyadId]
@Id int
as
select OS.OlimpyiadSubject from OlimpyadSubjects as OS where OS.Id = (select Olimpyiad.OlimpyiadSubject from Olimpyiad where Olimpyiad.Id = @Id)

