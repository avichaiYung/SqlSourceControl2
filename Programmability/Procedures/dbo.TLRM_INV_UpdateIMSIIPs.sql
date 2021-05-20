SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TLRM_INV_UpdateIMSIIPs]


AS
BEGIN




/*
-----------------------Backup-------------------------

TRUNCATE TABLE TLRM_INV_IMSIIPs_BACKUP

INSERT INTO TLRM_INV_IMSIIPs_BACKUP
                         (imsi, ip)
SELECT        imsi, ip
FROM            TLRM_INV_IMSIIPs

SELECT * FROM TLRM_INV_TEMP_IMSIIPs

SELECT COUNT(*) FROM TLRM_INV_TEMP_IMSIIPs

TRUNCATE TABLE TLRM_INV_TEMP_IMSIIPs

INSERT INTO TLRM_INV_TEMP_IMSIIPs
                         (imsi, ip)

SELECT        imsi, ip
FROM            _batch_58


*/


-----------------------Insert new IMSI IPs-------------------------

SELECT * 
FROM TLRM_INV_IMSIIPs
WHERE imsi IN (SELECT imsi FROM TLRM_INV_TEMP_IMSIIPs)

SELECT * 
FROM TLRM_INV_IMSIIPs
WHERE ip IN (SELECT ip FROM TLRM_INV_TEMP_IMSIIPs)

/*
		DECLARE 
		@imsi varchar(250), 
		@ip varchar(250)


		DECLARE @ErrorTBL TABLE
			(
				imsi varchar(250), 
				ip varchar(250)				
			)

		
		DECLARE IMSICursor CURSOR FOR
		SELECT        imsi, ip
		FROM            TLRM_INV_TEMP_IMSIIPs

			OPEN IMSICursor

			FETCH NEXT FROM IMSICursor
			INTO @imsi, @ip

			WHILE @@FETCH_STATUS = 0
				BEGIN
					IF EXISTS(SELECT imsi FROM TLRM_INV_IMSIIPs WHERE imsi = @imsi)
						BEGIN
							INSERT INTO @ErrorTBL (imsi, ip) VALUES (@imsi, @ip)
						END
					ELSE
						BEGIN
							INSERT INTO TLRM_INV_IMSIIPs (imsi, ip)
							VALUES        (@imsi, @ip)
						END

					FETCH NEXT FROM IMSICursor
					INTO @imsi, @ip
				END

			CLOSE IMSICursor
			DEALLOCATE IMSICursor


			SELECT * FROM @ErrorTBL

*/

-----------------------Update IMSIs with new IPs-------------------------

/*
		DECLARE 
		@imsi varchar(250), 
		@ip varchar(250)

		DECLARE IMSICursor CURSOR FOR
		SELECT        imsi, ip
		FROM            TLRM_INV_TEMP_IMSIIPs

			OPEN IMSICursor

			FETCH NEXT FROM IMSICursor
			INTO @imsi, @ip

			WHILE @@FETCH_STATUS = 0
				BEGIN
					IF EXISTS(SELECT imsi FROM TLRM_INV_IMSIIPs WHERE imsi = @imsi)
						BEGIN
							UPDATE TLRM_INV_IMSIIPs SET ip = @ip WHERE imsi = @imsi
						END
					ELSE
						BEGIN
							INSERT INTO TLRM_INV_IMSIIPs (imsi, ip)
							VALUES        (@imsi, @ip)
						END

					FETCH NEXT FROM IMSICursor
					INTO @imsi, @ip
				END

			CLOSE IMSICursor
			DEALLOCATE IMSICursor

*/

-----------------------APN-------------------------
/*

	UPDATE TLRM_INV_IMSIIPs
	SET apn = 'solenis'
	WHERE imsi IN (SELECT imsi FROM TLRM_INV_TEMP_IMSIIPs)

*/

END
GO