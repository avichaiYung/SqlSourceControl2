CREATE TABLE [dbo].[_add_tele2_copy] (
  [iccid] [varchar](250) NOT NULL,
  [id] [int] IDENTITY,
  [name] [nchar](10) NULL,
  [test] [nchar](10) NULL,
  [test222] [nchar](10) NULL,
  [test3] [nchar](10) NULL,
  CONSTRAINT [PK__add_tele2_copy] PRIMARY KEY CLUSTERED ([iccid])
)
ON [PRIMARY]
GO