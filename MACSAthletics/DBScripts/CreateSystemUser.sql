USE [MACSAthletics]
GO

BEGIN TRAN
GO

ALTER TABLE [dbo].[Users] 
NOCHECK CONSTRAINT [FK_Users_Users_CreatedByUserId];  
GO

DELETE FROM [dbo].[Users]
GO

DBCC CHECKIDENT ('Users', RESEED, 0)
GO

INSERT INTO [dbo].[Users]
           ([EmailAddress]
           ,[IsConfirmed]
           ,[LastName]
           ,[FirstName]
		   ,[CreatedByUserId]
		   ,[Created])
     VALUES
           ('system@mnchristianschools.org'
           ,1
           ,'User'
           ,'System'
		   ,0
		   ,GETDATE())
GO

UPDATE [dbo].[Users] SET CreatedByUserId = @@IDENTITY WHERE Id = @@IDENTITY

ALTER TABLE [dbo].[Users] 
CHECK CONSTRAINT [FK_Users_Users_CreatedByUserId];  
GO

COMMIT TRAN
GO
