CREATE TABLE [dbo].[Issues]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Title] NVARCHAR(256) NOT NULL,
	[Author] NVARCHAR (450)     NOT NULL,
	[Responsible] NVARCHAR (450),
	[StatusId] INT NOT NULL, 
	[Description] NVARCHAR(2000),
	[RegistrationDate] DateTime2,
	[LastUpdateDate] DateTime2,
    CONSTRAINT [FK_Issues_ToIssueStatuses_StatusId] FOREIGN KEY ([StatusId]) REFERENCES [IssueStatuses]([Id]),
)
