USE [QLSVNhom]
GO
/****** Object:  StoredProcedure [dbo].[SP_SEL_PUBLIC_ENCRYPT_NHANVIEN]    Script Date: 28/09/2020 9:45:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------
MASV: N17DCAT031
HO TEN: VO PHI HUNG
LAB: 04
NGAY: 24/09/2020
----------------------------------------------------------*/ 
CREATE PROC [dbo].[SP_SEL_PUBLIC_ENCRYPT_NHANVIEN]
AS
BEGIN
	SELECT MANV, HOTEN, EMAIL, CONVERT(VARCHAR(256),LUONG) AS LUONG
	FROM NHANVIEN
END

--EXEC [SP_SEL_PUBLIC_ENCRYPT_NHANVIEN]