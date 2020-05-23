select
	 [MANDT] = concat(char(34), replace(cast([COST].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [LEDNR] = concat(char(34), replace(cast([COST].[LEDNR] as nvarchar(2)), char(34), char(0)), char(34)),
	 [OBJNR] = concat(char(34), replace(cast([COST].[OBJNR] as nvarchar(22)), char(34), char(0)), char(34)),
	 [GJAHR] = concat(char(34), replace(cast([COST].[GJAHR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [WRTTP] = concat(char(34), replace(cast([COST].[WRTTP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VERSN] = concat(char(34), replace(cast([COST].[VERSN] as nvarchar(3)), char(34), char(0)), char(34)),
	 [TARKZ] = concat(char(34), replace(cast([COST].[TARKZ] as nvarchar(3)), char(34), char(0)), char(34)),
	 [PERBL] = concat(char(34), replace(cast([COST].[PERBL] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VRGNG] = concat(char(34), replace(cast([COST].[VRGNG] as nvarchar(4)), char(34), char(0)), char(34)),
	 [TKG001] = cast([COST].[TKG001] as varchar(36)),
	 [TKG002] = cast([COST].[TKG002] as varchar(36)),
	 [TKG003] = cast([COST].[TKG003] as varchar(36)),
	 [TKG004] = cast([COST].[TKG004] as varchar(36)),
	 [TKG005] = cast([COST].[TKG005] as varchar(36)),
	 [TKG006] = cast([COST].[TKG006] as varchar(36)),
	 [TKG007] = cast([COST].[TKG007] as varchar(36)),
	 [TKG008] = cast([COST].[TKG008] as varchar(36)),
	 [TKG009] = cast([COST].[TKG009] as varchar(36)),
	 [TKG010] = cast([COST].[TKG010] as varchar(36)),
	 [TKG011] = cast([COST].[TKG011] as varchar(36)),
	 [TKG012] = cast([COST].[TKG012] as varchar(36)),
	 [TKG013] = cast([COST].[TKG013] as varchar(36)),
	 [TKG014] = cast([COST].[TKG014] as varchar(36)),
	 [TKG015] = cast([COST].[TKG015] as varchar(36)),
	 [TKG016] = cast([COST].[TKG016] as varchar(36)),
	 [TKF001] = cast([COST].[TKF001] as varchar(36)),
	 [TKF002] = cast([COST].[TKF002] as varchar(36)),
	 [TKF003] = cast([COST].[TKF003] as varchar(36)),
	 [TKF004] = cast([COST].[TKF004] as varchar(36)),
	 [TKF005] = cast([COST].[TKF005] as varchar(36)),
	 [TKF006] = cast([COST].[TKF006] as varchar(36)),
	 [TKF007] = cast([COST].[TKF007] as varchar(36)),
	 [TKF008] = cast([COST].[TKF008] as varchar(36)),
	 [TKF009] = cast([COST].[TKF009] as varchar(36)),
	 [TKF010] = cast([COST].[TKF010] as varchar(36)),
	 [TKF011] = cast([COST].[TKF011] as varchar(36)),
	 [TKF012] = cast([COST].[TKF012] as varchar(36)),
	 [TKF013] = cast([COST].[TKF013] as varchar(36)),
	 [TKF014] = cast([COST].[TKF014] as varchar(36)),
	 [TKF015] = cast([COST].[TKF015] as varchar(36)),
	 [TKF016] = cast([COST].[TKF016] as varchar(36)),
	 [TKE001] = concat(char(34), replace(cast([COST].[TKE001] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE002] = concat(char(34), replace(cast([COST].[TKE002] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE003] = concat(char(34), replace(cast([COST].[TKE003] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE004] = concat(char(34), replace(cast([COST].[TKE004] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE005] = concat(char(34), replace(cast([COST].[TKE005] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE006] = concat(char(34), replace(cast([COST].[TKE006] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE007] = concat(char(34), replace(cast([COST].[TKE007] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE008] = concat(char(34), replace(cast([COST].[TKE008] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE009] = concat(char(34), replace(cast([COST].[TKE009] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE010] = concat(char(34), replace(cast([COST].[TKE010] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE011] = concat(char(34), replace(cast([COST].[TKE011] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE012] = concat(char(34), replace(cast([COST].[TKE012] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE013] = concat(char(34), replace(cast([COST].[TKE013] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE014] = concat(char(34), replace(cast([COST].[TKE014] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE015] = concat(char(34), replace(cast([COST].[TKE015] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TKE016] = concat(char(34), replace(cast([COST].[TKE016] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOG001] = cast([COST].[TOG001] as varchar(36)),
	 [TOG002] = cast([COST].[TOG002] as varchar(36)),
	 [TOG003] = cast([COST].[TOG003] as varchar(36)),
	 [TOG004] = cast([COST].[TOG004] as varchar(36)),
	 [TOG005] = cast([COST].[TOG005] as varchar(36)),
	 [TOG006] = cast([COST].[TOG006] as varchar(36)),
	 [TOG007] = cast([COST].[TOG007] as varchar(36)),
	 [TOG008] = cast([COST].[TOG008] as varchar(36)),
	 [TOG009] = cast([COST].[TOG009] as varchar(36)),
	 [TOG010] = cast([COST].[TOG010] as varchar(36)),
	 [TOG011] = cast([COST].[TOG011] as varchar(36)),
	 [TOG012] = cast([COST].[TOG012] as varchar(36)),
	 [TOG013] = cast([COST].[TOG013] as varchar(36)),
	 [TOG014] = cast([COST].[TOG014] as varchar(36)),
	 [TOG015] = cast([COST].[TOG015] as varchar(36)),
	 [TOG016] = cast([COST].[TOG016] as varchar(36)),
	 [TOF001] = cast([COST].[TOF001] as varchar(36)),
	 [TOF002] = cast([COST].[TOF002] as varchar(36)),
	 [TOF003] = cast([COST].[TOF003] as varchar(36)),
	 [TOF004] = cast([COST].[TOF004] as varchar(36)),
	 [TOF005] = cast([COST].[TOF005] as varchar(36)),
	 [TOF006] = cast([COST].[TOF006] as varchar(36)),
	 [TOF007] = cast([COST].[TOF007] as varchar(36)),
	 [TOF008] = cast([COST].[TOF008] as varchar(36)),
	 [TOF009] = cast([COST].[TOF009] as varchar(36)),
	 [TOF010] = cast([COST].[TOF010] as varchar(36)),
	 [TOF011] = cast([COST].[TOF011] as varchar(36)),
	 [TOF012] = cast([COST].[TOF012] as varchar(36)),
	 [TOF013] = cast([COST].[TOF013] as varchar(36)),
	 [TOF014] = cast([COST].[TOF014] as varchar(36)),
	 [TOF015] = cast([COST].[TOF015] as varchar(36)),
	 [TOF016] = cast([COST].[TOF016] as varchar(36)),
	 [TOE001] = concat(char(34), replace(cast([COST].[TOE001] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE002] = concat(char(34), replace(cast([COST].[TOE002] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE003] = concat(char(34), replace(cast([COST].[TOE003] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE004] = concat(char(34), replace(cast([COST].[TOE004] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE005] = concat(char(34), replace(cast([COST].[TOE005] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE006] = concat(char(34), replace(cast([COST].[TOE006] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE007] = concat(char(34), replace(cast([COST].[TOE007] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE008] = concat(char(34), replace(cast([COST].[TOE008] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE009] = concat(char(34), replace(cast([COST].[TOE009] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE010] = concat(char(34), replace(cast([COST].[TOE010] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE011] = concat(char(34), replace(cast([COST].[TOE011] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE012] = concat(char(34), replace(cast([COST].[TOE012] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE013] = concat(char(34), replace(cast([COST].[TOE013] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE014] = concat(char(34), replace(cast([COST].[TOE014] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE015] = concat(char(34), replace(cast([COST].[TOE015] as nvarchar(5)), char(34), char(0)), char(34)),
	 [TOE016] = concat(char(34), replace(cast([COST].[TOE016] as nvarchar(5)), char(34), char(0)), char(34))
from SAP_REPO.dbo.COST