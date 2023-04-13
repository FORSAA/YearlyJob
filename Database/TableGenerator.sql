create database SchoolDB
use SchoolDB

CREATE TABLE [Student] (
	Id int primary key identity NOT NULL,
	[Name] nvarchar(150) NOT NULL,
	Surname nvarchar(150) NOT NULL,
	Fatherhood nvarchar(150),
	SchoolClass nvarchar(5) NOT NULL,
)
GO
CREATE TABLE [Olimpyiad] (
	Id int identity primary key NOT NULL,
	OlympiadSubject int NOT NULL,
	OlympiadName nvarchar(350) NOT NULL,
	OlympiadDate date NOT NULL,
)
GO
CREATE TABLE [Student_Olimpyad] (
	Student_Id int NOT NULL,
	Olimpyiad_Id int NOT NULL,
	Points int NOT NULL
)
GO
CREATE TABLE [OlimpyadSubjects] (
	id int primary key identity NOT NULL,
	OlympiadSubject nvarchar(150) NOT NULL,
)
GO
CREATE TABLE [StudentComment] (
	Student_Id int NOT NULL,
	Comment nvarchar(350) NOT NULL
)
GO

ALTER TABLE [Olimpyiad] WITH CHECK ADD CONSTRAINT [Olimpyiad_fk0] FOREIGN KEY ([OlympiadSubject]) REFERENCES [OlimpyadSubjects]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Olimpyiad] CHECK CONSTRAINT [Olimpyiad_fk0]
GO

ALTER TABLE [Student_Olimpyad] WITH CHECK ADD CONSTRAINT [Student_Olimpyad_fk0] FOREIGN KEY ([Student_Id]) REFERENCES [Student]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Student_Olimpyad] CHECK CONSTRAINT [Student_Olimpyad_fk0]
GO
ALTER TABLE [Student_Olimpyad] WITH CHECK ADD CONSTRAINT [Student_Olimpyad_fk1] FOREIGN KEY ([Olimpyiad_Id]) REFERENCES [Olimpyiad]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Student_Olimpyad] CHECK CONSTRAINT [Student_Olimpyad_fk1]
GO


ALTER TABLE [StudentComment] WITH CHECK ADD CONSTRAINT [StudentComment_fk0] FOREIGN KEY ([Student_Id]) REFERENCES [Student]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [StudentComment] CHECK CONSTRAINT [StudentComment_fk0]
GO
