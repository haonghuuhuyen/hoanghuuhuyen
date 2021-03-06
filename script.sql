USE [master]
GO
/****** Object:  Database [sinhvien]    Script Date: 4/20/2018 11:03:21 AM ******/
CREATE DATABASE [sinhvien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sinhvien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\sinhvien.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sinhvien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\sinhvien_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sinhvien] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sinhvien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sinhvien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sinhvien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sinhvien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sinhvien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sinhvien] SET ARITHABORT OFF 
GO
ALTER DATABASE [sinhvien] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [sinhvien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sinhvien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sinhvien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sinhvien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sinhvien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sinhvien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sinhvien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sinhvien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sinhvien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [sinhvien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sinhvien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sinhvien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sinhvien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sinhvien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sinhvien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sinhvien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sinhvien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sinhvien] SET  MULTI_USER 
GO
ALTER DATABASE [sinhvien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sinhvien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sinhvien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sinhvien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [sinhvien] SET DELAYED_DURABILITY = DISABLED 
GO
USE [sinhvien]
GO
/****** Object:  Table [dbo].[diem]    Script Date: 4/20/2018 11:03:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[diem](
	[masv] [varchar](10) NOT NULL,
	[mamh] [varchar](10) NOT NULL,
	[diemtb] [float] NULL,
 CONSTRAINT [PK_diem] PRIMARY KEY CLUSTERED 
(
	[masv] ASC,
	[mamh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[monhoc]    Script Date: 4/20/2018 11:03:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[monhoc](
	[mamh] [varchar](10) NOT NULL,
	[tenmh] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_monhoc] PRIMARY KEY CLUSTERED 
(
	[mamh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 4/20/2018 11:03:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sinhvien](
	[masv] [varchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[quequan] [nvarchar](30) NULL,
 CONSTRAINT [PK_sinhvien] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'1', N'11', 5)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'1', N'12', 4)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'1', N'13', 5)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'1', N'14', 8)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'1', N'15', 10)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'2', N'11', 4)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'2', N'12', 7)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'2', N'13', 8)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'2', N'14', 7)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'2', N'15', 4)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'3', N'11', 5)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'3', N'12', 7)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'3', N'13', 9)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'3', N'14', 7)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'3', N'15', 8)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'4', N'11', 9)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'4', N'12', 6)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'4', N'13', 8)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'4', N'14', 4)
INSERT [dbo].[diem] ([masv], [mamh], [diemtb]) VALUES (N'4', N'15', 10)
INSERT [dbo].[monhoc] ([mamh], [tenmh], [ghichu]) VALUES (N'11', N'Toán', N'')
INSERT [dbo].[monhoc] ([mamh], [tenmh], [ghichu]) VALUES (N'12', N'Văn', NULL)
INSERT [dbo].[monhoc] ([mamh], [tenmh], [ghichu]) VALUES (N'13', N'Anh', NULL)
INSERT [dbo].[monhoc] ([mamh], [tenmh], [ghichu]) VALUES (N'14', N'Lý', NULL)
INSERT [dbo].[monhoc] ([mamh], [tenmh], [ghichu]) VALUES (N'15', N'Hóa', NULL)
INSERT [dbo].[sinhvien] ([masv], [hoten], [ngaysinh], [quequan]) VALUES (N'1', N'Hoàng Hữu Huyên', CAST(N'1997-04-01' AS Date), N'Yên Bái')
INSERT [dbo].[sinhvien] ([masv], [hoten], [ngaysinh], [quequan]) VALUES (N'2', N'Ngô Đình Phúc', CAST(N'1997-08-13' AS Date), N'Quảng Ninh')
INSERT [dbo].[sinhvien] ([masv], [hoten], [ngaysinh], [quequan]) VALUES (N'3', N'Lê Anh Đức', CAST(N'1997-10-25' AS Date), N'Hà Nội')
INSERT [dbo].[sinhvien] ([masv], [hoten], [ngaysinh], [quequan]) VALUES (N'4', N'Nguyễn Hữu Quân', CAST(N'1996-02-18' AS Date), N'Hà Nội')
ALTER TABLE [dbo].[diem]  WITH CHECK ADD FOREIGN KEY([mamh])
REFERENCES [dbo].[monhoc] ([mamh])
GO
ALTER TABLE [dbo].[diem]  WITH CHECK ADD  CONSTRAINT [FK_diem] FOREIGN KEY([masv])
REFERENCES [dbo].[sinhvien] ([masv])
GO
ALTER TABLE [dbo].[diem] CHECK CONSTRAINT [FK_diem]
GO
/****** Object:  StoredProcedure [dbo].[LoadDiem]    Script Date: 4/20/2018 11:03:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[LoadDiem]
AS
BEGIN
	SELECT * FROM dbo.diem
END

GO
/****** Object:  StoredProcedure [dbo].[LoadMH]    Script Date: 4/20/2018 11:03:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LoadMH]
AS
BEGIN
	SELECT * FROM dbo.monhoc	
END

GO
/****** Object:  StoredProcedure [dbo].[LoadSV]    Script Date: 4/20/2018 11:03:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LoadSV]
AS
BEGIN
	SELECT * FROM dbo.sinhvien	
END

GO
/****** Object:  StoredProcedure [dbo].[Tim_mh]    Script Date: 4/20/2018 11:03:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Tim_mh] 
AS
BEGIN
	SELECT monhoc.mamh, tenmh,ghichu FROM dbo.monhoc, (SELECT TOP 1 mamh, count(mamh) as sl FROM dbo.diem WHERE diemtb > 8 GROUP BY mamh ORDER BY sl DESC) AS t
	WHERE monhoc.mamh = t.mamh 
END

GO
/****** Object:  StoredProcedure [dbo].[Tim_Que]    Script Date: 4/20/2018 11:03:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Tim_Que](@que NVARCHAR(30))
AS
BEGIN
	SELECT * FROM dbo.sinhvien WHERE quequan = @que
END

GO
USE [master]
GO
ALTER DATABASE [sinhvien] SET  READ_WRITE 
GO
