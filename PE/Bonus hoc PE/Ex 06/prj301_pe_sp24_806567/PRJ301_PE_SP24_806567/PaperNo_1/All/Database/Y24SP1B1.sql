USE [master]
GO
Create database Y24SP1B1
GO
USE Y24SP1B1
GO
CREATE TABLE [dbo].[Teams](
	[TeamID] int NOT NULL primary key,
	[TeamName] [nvarchar](30) NOT NULL,
)
GO

insert into [Teams] values(1,'Real Madrid')
insert into [Teams] values(2,'Chelsea')
insert into [Teams] values(3,'Liverpool')
GO

CREATE TABLE [dbo].[Players](
	[PlayerID] [nvarchar](10) NOT NULL primary key,
	[PlayerName] [nvarchar](30) NOT NULL,
	[Position] [nvarchar](30) NOT NULL,
	[Salary] int NOT NULL ,
	[TeamID] int references [Teams]([TeamID])
)
GO

insert into Players values('P001','Hua Tien Dat','Striker',10000,1)
insert into Players values('P002','Tran Hung Dung','Goalkeeper',12000,2)
insert into Players values('P003','Le Khanh Thi','Defender',9000,3)
insert into Players values('P004','Nguyen Thanh Nhan','Midfielder',7000,1)
insert into Players values('P005','Ha Hung Huy','Striker',25000,2)
insert into Players values('P006','Do Nhu Huy','Defender',31000,3)
GO

CREATE TABLE [dbo].[Coaches](
	[CoachID] [nvarchar](10) NOT NULL primary key,
	[CoachName] [nvarchar](30) NOT NULL,
	[Position] [nvarchar](30) NOT NULL,
	[Salary] int NOT NULL ,
	[TeamID] int references [Teams]([TeamID])
)
GO

insert into Coaches values('C001','Nguyen Trung Quan','Goalkeeper Coach',12000,1)
insert into Coaches values('C002','Dinh Hoang Vu','Fitness Coach',11000,2)
insert into Coaches values('C003','Le Khanh Thien','Head Coach',29000,3)
insert into Coaches values('C004','Nguyen Thanh Tung','Assistant Coach',37000,1)
insert into Coaches values('C005','Ha Duc Hung','Fitness Coach',5000,2)
insert into Coaches values('C006','Do Nhu Hong','Assistant Coach',21000,3)
GO