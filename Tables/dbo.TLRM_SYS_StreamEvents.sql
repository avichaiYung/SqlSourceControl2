CREATE TABLE [dbo].[TLRM_SYS_StreamEvents] (
  [streamEventID] [bigint] IDENTITY,
  [streamEventVersion] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_streamEventVersion] DEFAULT (0),
  [threadID] [int] NULL,
  [networkEventTypeID] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_NetworkEventTypeID] DEFAULT (0),
  [networkEventStatusID] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_networkEventStatusID] DEFAULT (0),
  [streamEventData] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [subscriberID] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_subscriberID] DEFAULT (0),
  [sdID] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_sdID] DEFAULT (0),
  [customerID] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_customerID] DEFAULT (0),
  [streamEventName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [streamEventPartitionKey] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [countryID] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_countryID] DEFAULT (0),
  [vplmnID] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_vplmnID] DEFAULT (0),
  [streamEventMCCMNC] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [streamEventAPN] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [streamEventIMSI] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [streamEventICCID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [streamEventIMEI] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [streamEventAssignedIP] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [streamEventLocationInfo] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_streamEventLocationInfo] DEFAULT (''),
  [deviceID] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_deviceID] DEFAULT (0),
  [streamEventIMSIServiceProviderID] [int] NULL CONSTRAINT [DF_TLRM_SYS_StreamEvents_streamEventIMSIServiceProviderID] DEFAULT (0),
  [streamEventSVData] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [streamEventDateTime] [datetime] NULL,
  [streamEventCreateDate] [datetime] NULL,
  CONSTRAINT [PK_TLRM_SYS_StreamEvents] PRIMARY KEY CLUSTERED ([streamEventID]) WITH (PAD_INDEX = ON, FILLFACTOR = 60)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20201027-110947]
  ON [dbo].[TLRM_SYS_StreamEvents] ([threadID], [streamEventID])
  INCLUDE ([streamEventVersion], [networkEventStatusID], [streamEventData], [subscriberID], [sdID], [customerID], [streamEventName], [streamEventPartitionKey], [countryID], [vplmnID], [streamEventMCCMNC], [streamEventAPN], [streamEventIMSI], [streamEventICCID], [streamEventIMEI], [streamEventAssignedIP], [streamEventLocationInfo], [deviceID], [streamEventIMSIServiceProviderID], [streamEventSVData], [streamEventDateTime], [streamEventCreateDate], [networkEventTypeID])
  ON [PRIMARY]
GO