
/*----------------------------------------------------------
MASV: N17DCAT015
HO TEN: ĐOÀN HỒNG ĐĂNG
LAB: 04
NGAY: 24/09/2020
----------------------------------------------------------*/
USE [QLSVNhom]
GO
/****** Object:  StoredProcedure [dbo].[SP_SEL_BANGDIEM]    Script Date: 28/9/2020 9:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_SEL_BANGDIEM] 
AS
BEGIN
SELECT MASV,MAHP,CONVERT (VARCHAR(20), DecryptByASYMKEY(ASYMKEY_ID('RSA_1024_LAB3'),DIEMTHI)) AS DIEM
FROM BANGDIEM 
END




