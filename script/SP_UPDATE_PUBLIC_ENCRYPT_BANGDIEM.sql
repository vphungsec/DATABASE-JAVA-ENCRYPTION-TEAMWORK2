/*----------------------------------------------------------
MASV: N17DCAT015
HO TEN: ĐOÀN HỒNG ĐĂNG
LAB: 04
NGAY: 24/09/2020
----------------------------------------------------------*/
USE [QLSVNhom]
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATE_PUBLIC_ENCRYPT_BANGDIEM]    Script Date: 28/9/2020 9:55:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_UPDATE_PUBLIC_ENCRYPT_BANGDIEM]
(@MAHP VARCHAR(20),@MASV VARCHAR(20),@DIEMTHI VARCHAR(256))
AS
BEGIN
UPDATE BANGDIEM
SET DIEMTHI = CONVERT(VARBINARY(256),@DIEMTHI)
WHERE MAHP = @MAHP AND MASV = @MASV
END