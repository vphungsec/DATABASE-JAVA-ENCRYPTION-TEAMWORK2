
/*----------------------------------------------------------
MASV: N17DCAT015
HO TEN: ĐOÀN HỒNG ĐĂNG
LAB: 04
NGAY: 24/09/2020
----------------------------------------------------------*/
USE [QLSVNhom]
GO
/****** Object:  StoredProcedure [dbo].[SP_INS_PUBLIC_ENCRYPT_SINHVIEN]    Script Date: 28/9/2020 9:53:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_INS_PUBLIC_ENCRYPT_SINHVIEN]
(@ML VARCHAR(20),
 @MASV VARCHAR(20), 
 @HOTEN NVARCHAR(100) ,
 @NGAYSINH VARCHAR(20) ,
 @DIACHI NVARCHAR(200),
 @TENDN NVARCHAR(100),
 @MATKHAU  varchar(256))
 AS
 BEGIN
 INSERT INTO SINHVIEN 
 (MALOP,MASV,HOTEN,NGAYSINH,DIACHI,TENDN,MATKHAU)
 VALUES (@ML,@MASV,@HOTEN,  CONVERT (DATETIME ,@NGAYSINH),
  @DIACHI, @TENDN,CONVERT (varbinary(256),@MATKHAU))
 
 END

 