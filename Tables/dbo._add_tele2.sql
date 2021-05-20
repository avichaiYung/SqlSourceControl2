CREATE TABLE [dbo].[_add_tele2] (
  [iccid] [varchar](250) NOT NULL,
  [id] [int] IDENTITY,
  [name] [nchar](10) NULL,
  [test] [nchar](10) NULL,
  [test2] [nchar](10) NULL,
  [test3] [nchar](10) NULL,
  [test4] [nchar](10) NULL,
  [test5] [nchar](10) NULL,
  [test6] [nchar](10) NULL,
  [test7] [nchar](10) NULL,
  [test8] [nchar](10) NULL,
  CONSTRAINT [PK__add_tele2] PRIMARY KEY CLUSTERED ([iccid])
)
ON [PRIMARY]
GO