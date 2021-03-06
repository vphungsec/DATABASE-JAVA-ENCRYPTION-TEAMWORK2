
/*----------------------------------------------------------
MASV: N17DCAT015
HO TEN: ĐOÀN HỒNG ĐĂNG
LAB: 04
NGAY: 24/09/2020
----------------------------------------------------------*/
USE [QLSVNhom]
GO
/****** Object:  StoredProcedure [dbo].[SP_INS_PUBLIC_BANGDIEM]    Script Date: 28/9/2020 9:52:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_INS_PUBLIC_BANGDIEM] 
( @MAHP VARCHAR(20),
@MASV VARCHAR(20),
@DIEM VARCHAR(256)
)
AS
BEGIN
INSERT INTO BANGDIEM(MAHP,MASV,DIEMTHI)
VALUES(@MAHP,@MASV,CONVERT(VARBINARY(256),@DIEM))
END