SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


/*

TLRM_SYS_GetStreamEventsForProcess 2

*/

-- =============================================
-- Author:		Yaniv
-- Create date: 26/03/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TLRM_SYS_GetStreamEventsForProcess]
	@threadID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT        TOP (1000) streamEventID, streamEventVersion, threadID, networkEventTypeID, networkEventStatusID, streamEventData, subscriberID, sdID, customerID, streamEventName, streamEventPartitionKey, countryID, vplmnID, 
							 streamEventMCCMNC, streamEventAPN, streamEventIMSI, streamEventICCID, streamEventIMEI, streamEventAssignedIP, streamEventLocationInfo, deviceID, streamEventIMSIServiceProviderID, streamEventSVData, 
							 streamEventDateTime, streamEventCreateDate
	FROM            TLRM_SYS_StreamEvents  WITH (NOLOCK)
	WHERE				threadID = @threadID 
	ORDER BY streamEventID

END
GO