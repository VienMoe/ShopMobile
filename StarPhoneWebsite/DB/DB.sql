USE [master]
GO
/****** Object:  Database [StarPhoneWebsite]    Script Date: 9/30/2023 11:24:22 PM ******/
CREATE DATABASE [StarPhoneWebsite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StarPhoneWebsite', FILENAME = N'D:\DATABASE\MSSQL16.MSSQLSERVER\MSSQL\DATA\StarPhoneWebsite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StarPhoneWebsite_log', FILENAME = N'D:\DATABASE\MSSQL16.MSSQLSERVER\MSSQL\DATA\StarPhoneWebsite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [StarPhoneWebsite] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StarPhoneWebsite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StarPhoneWebsite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET ARITHABORT OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StarPhoneWebsite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StarPhoneWebsite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StarPhoneWebsite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StarPhoneWebsite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET RECOVERY FULL 
GO
ALTER DATABASE [StarPhoneWebsite] SET  MULTI_USER 
GO
ALTER DATABASE [StarPhoneWebsite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StarPhoneWebsite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StarPhoneWebsite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StarPhoneWebsite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StarPhoneWebsite] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StarPhoneWebsite] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'StarPhoneWebsite', N'ON'
GO
ALTER DATABASE [StarPhoneWebsite] SET QUERY_STORE = ON
GO
ALTER DATABASE [StarPhoneWebsite] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [StarPhoneWebsite]
GO
/****** Object:  User [vien]    Script Date: 9/30/2023 11:24:24 PM ******/
CREATE USER [vien] FOR LOGIN [vien] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [vien]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [vien]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [vien]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [vien]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [vien]
GO
ALTER ROLE [db_datareader] ADD MEMBER [vien]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [vien]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [vien]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [vien]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 9/30/2023 11:24:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [nvarchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 9/30/2023 11:24:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[MaNSX] [nvarchar](10) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
 CONSTRAINT [PK_NSX] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[San Pham]    Script Date: 9/30/2023 11:24:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](10) NOT NULL,
	[MaLoaiSP] [nvarchar](10) NULL,
	[MaNSX] [nvarchar](10) NULL,
	[TenSP] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SLDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_San Pham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'', N'')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP01', N'Cao Cap')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP02', N'Trung Cap')
GO
INSERT [dbo].[NSX] ([MaNSX], [TenNSX]) VALUES (N'NSX01', N'APPLE')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX]) VALUES (N'NSX02', N'SAMSUNG')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX]) VALUES (N'NSX03', N'OPPO')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX]) VALUES (N'NSX04', N'VIVO')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX]) VALUES (N'NSX05', N'XIAOMI')
GO
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX02', N'SAMSUNG GALAXI S23 Ultra', N'Chua Xac Dinh', N'samsungs23.png', NULL, NULL, NULL, NULL, 31990000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'LSP02', N'NSX04', N'VIVO Y22s', N'Chua Xac Dinh', N'vivoy22s.png', NULL, NULL, NULL, NULL, 5990000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'LSP01', N'NSX01', N'IPHONE 11', N'Chua Xac Dinh', N'iphone11.png', NULL, NULL, NULL, NULL, 11990000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP04', N'LSP02', N'NSX03', N'OPPO RENO 10+', N'Chua Xac Dinh', N'opporeno10.png', NULL, NULL, NULL, NULL, 19990000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP05', N'LSP01', N'NSX05', N'XIAOMI 13 PRO', N'Chua Xac Dinh', N'xiaomi13pro.png', NULL, NULL, NULL, NULL, 24490000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP06', N'LSP02', N'NSX03', N'OPPO Reno10 5G 128GB', N'Chua Xac Dinh', N'opporeno10.png', NULL, NULL, NULL, NULL, 9990000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP07', N'LSP01', N'NSX02', N'SAMSUNG Galaxy Z Fold5 5G 256GB', N'Chua Xac Dinh', N'samungzfold5.png', NULL, NULL, NULL, NULL, 33990000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP08', N'LSP02', N'NSX02', N'SAMSUNG Galaxy A14 4GB', N'Chua Xac Dinh', N'samsunga14.png', NULL, NULL, NULL, NULL, 3690000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP09', N'LSP01', N'NSX01', N'iPhone 14 Pro Max 128GB', N'Chua Xac Dinh', N'iphone14pro.png', NULL, NULL, NULL, NULL, 36490000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP10', N'LSP02', N'NSX05', N'Xiaomi
 Redmi 12 4GB', N'Chua Xac Dinh', N'xiaomiredmi.png', NULL, NULL, NULL, NULL, 3590000, 0, 0, N'0         ')
INSERT [dbo].[San Pham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang]) VALUES (N'SP11', N'LSP01', N'NSX03', N'OPPO Find N2 Flip 5G', N'Chua Xac Dinh', N'oppofindn2.png', NULL, NULL, NULL, NULL, 19990000, 0, 0, N'0         ')
GO
ALTER TABLE [dbo].[San Pham] ADD  CONSTRAINT [DF_San Pham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[San Pham] ADD  CONSTRAINT [DF_San Pham_SLDaBan]  DEFAULT ((0)) FOR [SLDaBan]
GO
ALTER TABLE [dbo].[San Pham] ADD  CONSTRAINT [DF_San Pham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[San Pham] ADD  CONSTRAINT [DF_San Pham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[San Pham]  WITH CHECK ADD  CONSTRAINT [FK_San Pham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[San Pham] CHECK CONSTRAINT [FK_San Pham_LoaiSP]
GO
ALTER TABLE [dbo].[San Pham]  WITH CHECK ADD  CONSTRAINT [FK_San Pham_NSX] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NSX] ([MaNSX])
GO
ALTER TABLE [dbo].[San Pham] CHECK CONSTRAINT [FK_San Pham_NSX]
GO
USE [master]
GO
ALTER DATABASE [StarPhoneWebsite] SET  READ_WRITE 
GO
