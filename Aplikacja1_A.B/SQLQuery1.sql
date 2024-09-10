CREATE DATABASE Proj_AB
GO
USE Proj_AB
GO

CREATE TABLE [User]
(
	Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	UserName nvarchar(50) unique not null,
	[Password] nvarchar(100) not null,
	[Name] nvarchar(50) not null,
	LastName nvarchar(50) not null,
	Email nvarchar(100) unique not null
)
GO

INSERT INTO [User] values (NEWID(), 'admin', 'admin', 'Anna', 'Bubula', 'bubula.ann@gmail.com')

SELECT * FROM [User];
select *from [User] where username=@username and [password]=@password
