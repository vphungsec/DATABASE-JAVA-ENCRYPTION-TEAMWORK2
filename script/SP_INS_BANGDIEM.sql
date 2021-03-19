
/*----------------------------------------------------------
MASV: N17DCAT015
HO TEN: ĐOÀN HỒNG ĐĂNG
LAB: 04
NGAY: 24/09/2020
----------------------------------------------------------*/
USE [QLSVNhom]
GO
/****** Object:  StoredProcedure [dbo].[SP_INS_BANGDIEM]    Script Date: 28/9/2020 9:52:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_INS_BANGDIEM](@MASV varchar(20),@MAHP varchar(20),@DIEMTHI varchar(20))
AS
BEGIN 
INSERT INTO BANGDIEM(MAHP,MASV,DIEMTHI)
VALUES(@MASV,@MAHP,ENCRYPTBYASYMKEY(ASYMKEY_ID('RSA_1024_LAB3'),@DIEMTHI))
END
