IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_role_accont]') AND type in (N'U'))
DROP TABLE [dbo].[tb_role_accont]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_role]') AND type in (N'U'))
DROP TABLE [dbo].[tb_role]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_accont]') AND type in (N'U'))
DROP TABLE [dbo].[tb_accont]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_image]') AND type in (N'U'))
DROP TABLE [dbo].[tb_image]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_empresa]') AND type in (N'U'))
DROP TABLE [dbo].[tb_empresa]
GO
