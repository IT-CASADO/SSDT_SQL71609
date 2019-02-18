CREATE TABLE [dbo].[MyTableHistory]
(
	[TenantId] UNIQUEIDENTIFIER NOT NULL,
	[Rn] BIGINT IDENTITY(1,1) NOT NULL,
	[Id] UNIQUEIDENTIFIER NOT NULL,
	[PropA] INT NOT NULL,
	[PropB] NVARCHAR(100) NOT NULL,

	[ValidFrom] DATETIME2,
	[ValidTo] DATETIME2,
);
GO
CREATE CLUSTERED COLUMNSTORE INDEX [COLIX_MyTableHistory]
	ON [dbo].[MyTableHistory];
GO
CREATE NONCLUSTERED INDEX [IX_ImpactHistory_ValidFrom_ValidTo_Id]
	ON [dbo].[MyTableHistory] ([ValidFrom], [ValidTo], [Id]);
GO
