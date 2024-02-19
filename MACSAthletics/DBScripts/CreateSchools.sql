USE [MACSAthletics]
GO

INSERT INTO [dbo].[Schools] ([Name], [ShortName], [Mascot], [CreatedByUserId], [Created])
     VALUES
           ('Fourth Baptist Christian School', 'Fourth',      'Warriors',  1, GETDATE()),
           ('Chisago Christian School',        'Chisago',     'Patriots',  1, GETDATE()),
           ('Lake Region Christian School',    'Lake Region', 'Hornets',   1, GETDATE()),
           ('Owatonna Christian School',       'Owatonna',    'Sabres',    1, GETDATE()),
           ('Prior Lake Christian Academy',    'Prior Lake',  'Royals',    1, GETDATE()),
           ('Rosemount Baptist School',        'Rosemount',   'Crusaders', 1, GETDATE()),
           ('St. Francis Christian School',    'St. Francis', 'Patriots',  1, GETDATE()),
           ('Woodcrest Baptist Academy',       'Woodcrest',   'Warriors',  1, GETDATE())
GO


