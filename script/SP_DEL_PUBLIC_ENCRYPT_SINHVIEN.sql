/*----------------------------------------------------------
MASV: N17DCAT015
HO TEN: ĐOÀN HỒNG ĐĂNG
LAB: 04
NGAY: 24/09/2020
----------------------------------------------------------*/
USE [QLSVNhom]
GO
/****** Object:  StoredProcedure [dbo].[SP_DEL_PUBLIC_ENCRYPT_SINHVIEN]    Script Date: 28/9/2020 9:52:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_DEL_PUBLIC_ENCRYPT_SINHVIEN]
(
@MASV VARCHAR(25)
)
AS
BEGIN
DELETE FROM SINHVIEN WHERE MASV = @MASV
END