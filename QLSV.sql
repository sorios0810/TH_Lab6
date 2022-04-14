﻿CREATE DATABASE QLSV 
GO

USE QLSV
GO

--Tạo bảng Lớp
CREATE TABLE tblLOP
(
 MaLop varchar(10) PRIMARY KEY,
 TenLop nvarchar(40) NOT NULL
)
--Tạo bảng Tỉnh
CREATE TABLE tblTINH
(
 MaTinh varchar(10) PRIMARY KEY,
 TenTinh nvarchar(40) NOT NULL, 
)

--Tạo bảng Sinh Viên
CREATE TABLE tblSINHVIEN
(
 MaSv varchar(10) PRIMARY KEY,
 HoTen nvarchar(40) NOT NULL,
 NgaySinh date NOT NULL,
 GioiTinh nvarchar(4) NOT NULL,
 MaLop varchar(10) NOT NULL,
 MaTinh varchar(10) NOT NULL,
 DTB float NOT NULL
)

ALTER TABLE tblSINHVIEN
ADD CONSTRAINT KN_tblSINHVIEN_1 FOREIGN KEY (MaLop) REFERENCES tblLOP(MaLop),
 CONSTRAINT KN_tblSINHVIEN_2 FOREIGN KEY (MaTinh) REFERENCES tblTINH(MaTinh)

SELECT *
FROM tblLOP

INSERT INTO tblLOP
 VALUES('ML01','CNTTK12A')
INSERT INTO tblLOP
 VALUES('ML02','CNTTK12B')
INSERT INTO tblLOP
 VALUES('ML03','CNTTK12C')
INSERT INTO tblLOP
 VALUES('ML04','CNTTK12D')
INSERT INTO tblLOP
 VALUES('ML05','CNTTK12E')
INSERT INTO tblLOP
 VALUES('ML06','CNTTK12F')
INSERT INTO tblLOP
 VALUES('ML07','CNTTK12G')

SELECT *
FROM tblTINH

INSERT INTO tblTINH
 VALUES('MT01',N'Quảng Ninh')
INSERT INTO tblTINH
 VALUES('MT02',N'Quảng Bình')
INSERT INTO tblTINH
 VALUES('MT03',N'Quảng Trị')
INSERT INTO tblTINH
 VALUES('MT04',N'Quảng Nam')
INSERT INTO tblTINH
 VALUES('MT05',N'Quảng Ngãi')
INSERT INTO tblTINH
 VALUES('MT06',N'Hà Nội')
INSERT INTO tblTINH
 VALUES('MT07',N'Quảng Ninh')
INSERT INTO tblTINH
 VALUES('MT08',N'Thái Nguyên')
INSERT INTO tblTINH
 VALUES('MT09',N'Bắc Giang')

SELECT *
FROM tblSINHVIEN

INSERT INTO tblSINHVIEN
 VALUES('SV01',N'Hoàng Vũ Thanh Thủy','3/30/1995',N'Nữ','ML01','MT08',9.5)
INSERT INTO tblSINHVIEN
 VALUES('SV02',N'Chu Xuân Linh','3/25/1991','Nam','ML01','MT01',9.5)
INSERT INTO tblSINHVIEN
 VALUES('SV03',N'Ngô Doãn Tình','2/20/1995','Nam','ML01','MT02',8)
INSERT INTO tblSINHVIEN
 VALUES('SV04',N'Phạm Xuân Tú','3/18/1995','Nam','ML02','MT03',9)
INSERT INTO tblSINHVIEN
 VALUES('SV05',N'Dương Xuân Tùng','5/5/1995','Nam','ML02','MT01',8.5)
INSERT INTO tblSINHVIEN
 VALUES('SV06',N'Nguyễn Thị Thảo','7/27/1995',N'Nữ','ML03','MT01',6.5)
INSERT INTO tblSINHVIEN
 VALUES('SV07',N'Trần Văn Cương','10/19/1995','Nam','ML03','MT04',7.5)
INSERT INTO tblSINHVIEN
 VALUES('SV08',N'Dương Thành Đô','1/27/1995','Nam','ML05','MT05',7.5)
INSERT INTO tblSINHVIEN
 VALUES('SV09',N'Tô Thành Đồng','12/14/1995','Nam','ML05','MT08',5.5)
INSERT INTO tblSINHVIEN
 VALUES('SV10',N'Nguyễn Thị Thương','2/28/1995',N'Nữ','ML05','MT09',7.5)
INSERT INTO tblSINHVIEN
 VALUES('SV11',N'Nguyễn Thị A','12/21/1995',N'Nữ','ML05','MT08',4.5)
INSERT INTO tblSINHVIEN
 VALUES('SV12',N'Nguyễn Thị B','8/28/1995',N'Nữ','ML07','MT06',4)

