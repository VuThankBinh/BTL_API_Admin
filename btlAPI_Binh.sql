USE [BTL_API2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nchar](50) NOT NULL,
	[type] [bit] NOT NULL,
	[email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](max) NOT NULL,
	[MauSac] [nvarchar](50) NOT NULL,
	[KichThuoc] [nchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
	[MaMau] [int] NULL,
 CONSTRAINT [PK__ChiTietD__DD39F0EF51C36A32] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHangNhap]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHangNhap](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[Mau] [nvarchar](50) NOT NULL,
	[KichThuoc] [nchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[MaMau] [int] NULL,
 CONSTRAINT [PK__ChiTietD__DD39F0EFAC42FF25] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonGia]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonGia](
	[MaDonGia] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__DonGia__66AA6B056C747648] PRIMARY KEY CLUSTERED 
(
	[MaDonGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] NOT NULL,
	[MaKhachHang] [int] NULL,
	[NgayTao] [datetime] NOT NULL,
	[DuyetDon] [bit] NOT NULL,
	[NgayGui] [datetime] NULL,
	[NgayNhan] [datetime] NULL,
 CONSTRAINT [PK__DonHang__129584AD78BDCC45] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHangNhap]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHangNhap](
	[MaDonHang] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK__DonHangN__129584AD00A33A4A] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[MaMau] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
 CONSTRAINT [PK__HinhAnh__A9C37A9BEDEAFD37] PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] NOT NULL,
	[TenKhachHang] [nvarchar](100) NOT NULL,
	[username] [nvarchar](50) NULL,
	[SoDienThoai] [char](10) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__KhachHan__88D2F0E5B790F035] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichThuoc]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichThuoc](
	[MaKT] [int] IDENTITY(1,1) NOT NULL,
	[MaMau] [int] NULL,
	[KichThuocsp] [nchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK__KichThuo__2725CF12A2908553] PRIMARY KEY CLUSTERED 
(
	[MaKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[MaMau] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Mau] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[SoDienThoai] [char](10) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__NhaCungC__3A185DEB2F509E6B] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] NOT NULL,
	[MaThuongHieu] [int] NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK__SanPham__FAC7442DAE930500] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaThuongHieu] [int] NOT NULL,
	[MaLoai] [int] NULL,
	[TenThuongHieu] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [type], [email]) VALUES (N'binhbc', N'123456                                            ', 0, NULL)
INSERT [dbo].[Account] ([username], [password], [type], [email]) VALUES (N'binhbc269', N'123456                                            ', 1, N'binhthanh.vubc269@gmail.com')
INSERT [dbo].[Account] ([username], [password], [type], [email]) VALUES (N'thanhthao22', N'123456                                            ', 0, NULL)
INSERT [dbo].[Account] ([username], [password], [type], [email]) VALUES (N'thanhthao2407', N'123456                                            ', 0, NULL)
INSERT [dbo].[Account] ([username], [password], [type], [email]) VALUES (N'thanhthao24072003', N'123456                                            ', 0, NULL)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [MauSac], [KichThuoc], [SoLuong], [DonGia], [MaMau]) VALUES (4, 1, N'Giày bóng rổ chính hãng Nike Kyrie 8 DC9134-001', N'Fire and Ice2', N'39                  ', 1, CAST(1900000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [MauSac], [KichThuoc], [SoLuong], [DonGia], [MaMau]) VALUES (4, 2, N'Giày bóng rổ PEAK E11123A', N'Xanh', N'42                  ', 1, CAST(750000 AS Decimal(18, 0)), 4)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [MauSac], [KichThuoc], [SoLuong], [DonGia], [MaMau]) VALUES (6, 1, N'Giày bóng rổ chính hãng Nike Kyrie 8 DC9134-001', N'Fire and Ice2', N'39                  ', 1, CAST(1900000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [MauSac], [KichThuoc], [SoLuong], [DonGia], [MaMau]) VALUES (7, 1, N' Giày bóng rổ chính hãng Nike Kyrie 8 DC9134-001', N'Fire and Ice2', N'39                  ', 1, CAST(1900000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [MauSac], [KichThuoc], [SoLuong], [DonGia], [MaMau]) VALUES (8, 3, N' Giày bóng rổ PEAK E22351A chính hãng', N'Ghi cam', N'43                  ', 1, CAST(700000 AS Decimal(18, 0)), 7)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [TenSanPham], [MauSac], [KichThuoc], [SoLuong], [DonGia], [MaMau]) VALUES (9, 2, N' Giày bóng rổ PEAK E11123A', N'Trắng đen', N'39                  ', 1, CAST(750000 AS Decimal(18, 0)), 3)
GO
INSERT [dbo].[ChiTietDonHangNhap] ([MaDonHang], [MaSanPham], [TenSanPham], [Mau], [KichThuoc], [SoLuong], [DonGia], [MaMau]) VALUES (2, 10, NULL, N'Xanh', N'XL        ', 5, 100000, 23)
GO
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (1, 1, 3000000.0000, N'chua giam gia')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (2, 1, 1900000.0000, N'da giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (3, 2, 1000000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (4, 2, 750000.0000, N'da giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (5, 3, 800000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (6, 3, 700000.0000, N'da giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (7, 4, 999000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (8, 4, 900000.0000, N'da giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (9, 5, 1000000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (10, 5, 900000.0000, N'da giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (11, 6, 800000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (12, 7, 900000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (13, 8, 200000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (14, 9, 180000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (15, 10, 180000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (16, 11, 150000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (17, 12, 140000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (18, 13, 100000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (19, 14, 100000.0000, N'chua giam')
INSERT [dbo].[DonGia] ([MaDonGia], [MaSanPham], [DonGia], [MoTa]) VALUES (20, 15, 90000.0000, N'chua giam')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayTao], [DuyetDon], [NgayGui], [NgayNhan]) VALUES (4, 4, CAST(N'2024-02-20T22:25:04.127' AS DateTime), 1, CAST(N'2024-02-24T14:55:03.110' AS DateTime), CAST(N'2024-02-06T10:29:12.140' AS DateTime))
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayTao], [DuyetDon], [NgayGui], [NgayNhan]) VALUES (6, 6, CAST(N'2024-01-03T16:05:27.590' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayTao], [DuyetDon], [NgayGui], [NgayNhan]) VALUES (7, 7, CAST(N'2024-01-03T16:28:11.220' AS DateTime), 1, CAST(N'2024-01-12T10:14:21.240' AS DateTime), NULL)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayTao], [DuyetDon], [NgayGui], [NgayNhan]) VALUES (8, 8, CAST(N'2024-01-08T14:33:31.290' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayTao], [DuyetDon], [NgayGui], [NgayNhan]) VALUES (9, 9, CAST(N'2024-01-13T08:48:41.073' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[DonHangNhap] ([MaDonHang], [MaNCC], [NgayTao]) VALUES (1, 1, CAST(N'2023-12-20T22:34:44.117' AS DateTime))
INSERT [dbo].[DonHangNhap] ([MaDonHang], [MaNCC], [NgayTao]) VALUES (2, 1, CAST(N'2023-12-25T08:42:23.103' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (1, 1, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike1.1.jpg?alt=media&token=423a1be6-f7ca-461e-980b-12ddc60d5a56')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (2, 1, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike1.2.jpg?alt=media&token=61448e3a-0376-4e8a-bdcb-f732022a45c0')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (3, 1, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike1.3.jpg?alt=media&token=6f08d203-d277-4335-89dd-4b525b02979f')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (4, 1, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike1.4.jpg?alt=media&token=e2e3f95c-08d5-4656-8618-be6568a57ebf')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (5, 1, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike1.5.jpg?alt=media&token=96319746-ab60-416c-ab2b-78c13151ef1a')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (6, 1, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike1.6.jpg?alt=media&token=855c8042-5fbf-4fd3-aedc-459f00a9706f')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (7, 2, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike2.1.jpg?alt=media&token=06a9c74d-3568-4e4e-9419-c762e4c113d6')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (8, 2, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike2.2.jpg?alt=media&token=fcf80465-c645-412e-b0f2-00abe1d87e37')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (9, 2, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike2.3.jpg?alt=media&token=bef21f50-eb13-4fbe-8603-94ec36a01219')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (10, 2, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike2.4.jpg?alt=media&token=a24704de-7541-4ce4-9c07-8dc0701c6596')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (11, 2, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike2.5.jpg?alt=media&token=73dda4a5-3bb0-44c9-b008-fa40818faecb')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (12, 2, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayNike%2FgiayNike2.6.jpg?alt=media&token=982d47ed-a91f-4165-8bf2-366c4f4f8336')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (13, 3, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay1.1.jpg?alt=media&token=cf76f69c-64f4-416a-a46b-4947043f6a49')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (14, 3, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay1.2.jpg?alt=media&token=2ae92c46-eb70-4d76-ab8e-bfbbfb95087d')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (15, 3, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay1.3.jpg?alt=media&token=fd21de3e-ca2d-4146-8afc-8aa1d68a0a70')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (16, 3, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay1.4.jpg?alt=media&token=a15be793-be97-4c18-b6e4-761b2fc5b692')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (17, 4, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay2.1.jpg?alt=media&token=c83dabae-ca69-4783-a2c3-66509a585af8')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (18, 4, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay2.2.jpg?alt=media&token=dad452c3-7eb6-4b52-a2ca-64eb0ac0a4d0')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (19, 4, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay2.3.jpg?alt=media&token=417d4c51-d15b-4515-a1d2-58771995292b')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (20, 4, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay2.4.jpg?alt=media&token=9fad384a-065e-4826-b927-1fbd1b32bc76')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (21, 5, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay3.1.jpg?alt=media&token=4c3d8e69-c199-4e2d-b307-1928188096d4')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (22, 5, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay3.2.jpg?alt=media&token=1b85d9e9-88d1-4377-9f6e-36e6cd6ea934')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (23, 5, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay3.3.jpg?alt=media&token=0c15f746-14fd-49a0-9cfc-12ec78d1e050')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (24, 5, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay3.4.jpg?alt=media&token=3212cbc5-52ce-44c0-9453-d444c7f25e63')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (25, 6, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay4.1.jpg?alt=media&token=b7102a1f-388d-4901-9023-95e926732b0c')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (26, 6, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay4.2.jpg?alt=media&token=4d13d495-3766-40e5-bee0-3c985410a2ff')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (27, 6, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay4.3.jpg?alt=media&token=0812b521-373d-4abc-9083-eb54e594f4fe')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (28, 6, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay4.4.jpg?alt=media&token=f531ea52-0fb3-49e4-b31c-1ce6dba34f74')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (29, 7, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay5.1.jpg?alt=media&token=972f4009-78c3-4c78-830d-aef59d83f5cd')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (30, 7, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay5.2.jpg?alt=media&token=bbedd5c1-0e29-4e3c-bc23-13e8d36040a0')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (31, 7, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay5.3.jpg?alt=media&token=02e11954-eca1-484f-8d74-f8efab91a05f')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (32, 7, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay5.4.jpg?alt=media&token=74d44028-b9c8-4ce9-be91-06fa030864a4')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (33, 8, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay7.1.jpg?alt=media&token=a1bdd774-6149-44fc-b7b8-75a4a36aa8ad')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (34, 8, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay7.2.jpg?alt=media&token=67940f71-644a-4cac-8e4c-794375919b75')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (35, 8, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay7.3.jpg?alt=media&token=5767c931-3f2a-4226-803a-904f61d16d0e')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (36, 8, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay7.4.jpg?alt=media&token=43e9ec36-5078-429a-b7bc-5f2c51f9a0ed')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (37, 9, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay8.1.jpg?alt=media&token=66eee8ba-be29-4b8d-b0ef-0a7b324d585f')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (38, 9, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay8.2.jpg?alt=media&token=bb28f0d1-a815-41f9-9ec7-f2981ecaab18')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (39, 9, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay8.3.jpg?alt=media&token=ffb4be70-489e-449e-9a82-4a4cee29ed0f')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (40, 9, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay8.3.jpg?alt=media&token=ffb4be70-489e-449e-9a82-4a4cee29ed0f')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (41, 10, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay6.1.jpg?alt=media&token=855afc35-a7d4-4475-b19e-3720507ac55a')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (42, 10, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay6.2.jpg?alt=media&token=f510e7c0-6f8b-4b7e-9b7e-784e463446b6')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (43, 10, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay6.3.jpg?alt=media&token=1e3501e6-477a-42c4-96b5-a82d7e97dfbb')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (44, 10, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay6.4.jpg?alt=media&token=21c7598f-71da-4a4a-9d85-9fd421f971a7')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (45, 11, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay11.1.jpg?alt=media&token=508bdd26-1bdd-429f-a7fb-6dd9e203c140')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (46, 11, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay11.2.jpg?alt=media&token=c8555546-d438-4447-a8e6-929d35ad9bfc')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (47, 11, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay11.3.jpg?alt=media&token=cfd0b98e-6f3d-4860-afb7-55dc5aed3c28')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (48, 11, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay11.4.jpg?alt=media&token=dbb0336d-e461-45a9-9b2e-c084ac960d01')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (49, 12, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay12.1.jpg?alt=media&token=21adbb4a-257d-4de2-a8ea-d79341a1757e')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (50, 12, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay12.2.jpg?alt=media&token=0dd82029-692e-4c6d-89b2-88e822d0df30')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (51, 12, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay12.3.jpg?alt=media&token=747baae3-e5c1-412f-b0ae-436136451550')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (52, 12, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay12.4.jpg?alt=media&token=6c94831f-d98f-4d78-878b-e68157041678')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (53, 13, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay17.1.jpg?alt=media&token=370e2e80-5a62-4c4d-b73c-14a22e52f0e6')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (54, 13, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay17.2.jpg?alt=media&token=d2723eb7-6193-4ce5-a798-7a4469e762be')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (55, 13, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay17.3.jpg?alt=media&token=4375e0c8-b73f-4535-adbf-fccab48c4141')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (56, 13, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FgiayPeak%2Fgiay17.4.jpg?alt=media&token=35846984-d81b-492a-8c04-159953b92005')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (57, 14, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao1.1.jpg?alt=media&token=5bf70c19-b0ef-43fe-8b8c-e00c06e9156e')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (58, 14, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao1.2.jpg?alt=media&token=ee10683c-3ca7-4dcb-9931-fb76a8b8877a')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (59, 15, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao1.3.jpg?alt=media&token=ced3a7d8-5702-4858-ba06-436ba82f9129')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (60, 16, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao1.4.jpg?alt=media&token=873ecd0c-21a6-447b-819d-8cca5e19a9d9')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (61, 17, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao2.1.jpg?alt=media&token=f86c1c0d-6433-446d-838d-7be7df37dc45')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (62, 17, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao2.2.jpg?alt=media&token=4c405a3d-be90-4629-8a80-fca7dbee2784')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (63, 18, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao2.3.jpg?alt=media&token=688b8c30-08ca-4cf9-a22d-f40836df93b1')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (64, 19, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao2.4.jpg?alt=media&token=8368e57b-f089-4e91-ac3e-e9e1c65c5d9d')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (65, 20, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao3.1.jpg?alt=media&token=a95a89a7-a315-4b75-8c95-d4fdbf8e050f')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (66, 20, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao3.2.jpg?alt=media&token=90780131-ecfc-4ee7-9296-3860d48b8b0c')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (67, 21, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao3.3.jpg?alt=media&token=c2380646-8f47-4c42-98c1-466152957d71')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (68, 22, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuanAo%2Fao3.4.jpg?alt=media&token=b280ed5f-8e66-4cce-9071-8eb3b61030c2')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (69, 23, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao1.1.jpg?alt=media&token=24bf6dfc-d092-4515-8c9e-58cdf377b626')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (70, 23, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao1.2.jpg?alt=media&token=ae6ecdbc-2a5a-47c6-a3c8-76202242f302')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (71, 23, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao1.3.jpg?alt=media&token=53314580-ec65-48ff-99cf-899f7622d310')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (72, 24, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao1.4.jpg?alt=media&token=9e4f6275-8b87-463c-a2f5-fc8ab1f4f3be')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (73, 25, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao1.5.jpg?alt=media&token=729c3c9c-f8ba-4282-9142-261bff49d81c')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (74, 26, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao2.1.jpg?alt=media&token=9e7494a4-9cba-434b-ae85-5f7c45e88131')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (75, 26, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao2.2.jpg?alt=media&token=7277bc97-352f-4e3d-8702-7cf3d232b3f1')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (76, 27, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao2.3.jpg?alt=media&token=4b2f673f-7c72-4066-9af4-cf6b7199e51d')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (77, 27, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao2.4.jpg?alt=media&token=b2209cd2-11a5-4e9a-8f7c-cc3ca2e24eb9')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (78, 28, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao2.5.jpg?alt=media&token=bee13e49-9f8b-4ec9-ab47-f341780f22d0')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (79, 29, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao4.1.jpg?alt=media&token=16a55b98-2c6c-43d2-897b-f4c285701d24')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (80, 29, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao4.2.jpg?alt=media&token=be2282b5-5909-4dbe-ae9e-73a2ce2099a7')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (81, 29, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao4.3.jpg?alt=media&token=ffb5c849-18c9-4d2f-b0ad-7022e6a927be')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (82, 30, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao4.4.jpg?alt=media&token=c318b924-4b31-4290-aca9-0283612cbd29')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (83, 31, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FAo%2Fao4.5.jpg?alt=media&token=2b5e58b6-500e-4292-8ad1-f6a96037a80e')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (84, 32, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan1.1.png?alt=media&token=a274be9a-9dc7-43ed-b966-04ff07ec357a')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (85, 33, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan1%2C2.png?alt=media&token=2de4e99b-f37d-43ec-8cee-d246467513fe')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (86, 34, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan1.3.png?alt=media&token=2e15dd23-1cf8-4ef5-a805-8d85c0320541')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (87, 35, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan2.1.jpg?alt=media&token=d27afc70-bfd9-4242-86b6-fcf518324a6a')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (88, 35, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan2.2.jpg?alt=media&token=fb97d7bd-62ec-43e2-910d-d7222138343d')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (89, 36, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan3.1.jpg?alt=media&token=2ae0b0c7-3d42-4c44-8ed1-1d1040892783')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (90, 36, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan3.2.jpg?alt=media&token=115dbdbb-9c35-4ede-a34f-c2a02b21868b')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (91, 37, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan3.3.jpg?alt=media&token=6f240977-44df-4a88-a651-fc77a8201110')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (92, 37, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan3.4.jpg?alt=media&token=0072bd2a-a769-40c7-8a8f-8145b105f06a')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (93, 38, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan3.5.jpg?alt=media&token=bf3d1872-133c-4cd8-9ef8-0a48683bd571')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (94, 38, N'https://firebasestorage.googleapis.com/v0/b/baitaplon-e42e3.appspot.com/o/btlAPI%2FQuan%2Fquan3.6.jpg?alt=media&token=cf4a9c1d-79f1-49bc-b8d7-a6a3d28d90d2')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (177, 45, N'anh1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (180, 48, N'anhkan3.png')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (181, 49, N'anhkan3.png')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (182, 50, N'anhkan3.png')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaMau], [HinhAnh]) VALUES (183, 51, N'anhkhan4.png')
GO
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [username], [SoDienThoai], [DiaChi]) VALUES (4, N'Nguyễn Hoàng Nam', N'thanhthao22', N'0123456789', N'Hải Dương')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [username], [SoDienThoai], [DiaChi]) VALUES (5, N'string', N'thanhthao22', N'string    ', N'string')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [username], [SoDienThoai], [DiaChi]) VALUES (6, N'VTB', N'thanhthao22', N'0987654321', N'hung yen')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [username], [SoDienThoai], [DiaChi]) VALUES (7, N'binhbc226', N'thanhthao22', N'0987654321', N'hy, Phường Phong Châu, Thị xã Phú Thọ, Tỉnh Phú Thọ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [username], [SoDienThoai], [DiaChi]) VALUES (8, N'vtb', N'thanhthao22', N'0123456789', N'll, Xã Mông Hóa, Thành phố Hòa Bình, Tỉnh Hoà Bình')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [username], [SoDienThoai], [DiaChi]) VALUES (9, N'1234567890', N'thanhthao22', N'1234567890', N'hy, Xã Trưng Vương, Thành phố Việt Trì, Tỉnh Phú Thọ')
GO
SET IDENTITY_INSERT [dbo].[KichThuoc] ON 

INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (1, 1, N'39                  ', 18)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (2, 1, N'40                  ', 15)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (3, 1, N'42                  ', 12)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (4, 2, N'41                  ', 19)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (5, 2, N'42                  ', 51)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (6, 2, N'43                  ', 51)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (7, 3, N'39                  ', 9)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (8, 3, N'40                  ', 15)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (9, 4, N'42                  ', 22)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (10, 4, N'41                  ', 18)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (11, 5, N'42                  ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (12, 5, N'43                  ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (13, 6, N'42.5                ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (14, 6, N'44                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (15, 7, N'43                  ', 49)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (16, 7, N'42.5                ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (17, 7, N'44                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (18, 8, N'43                  ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (19, 8, N'42.5                ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (20, 8, N'44                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (21, 9, N'40                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (22, 9, N'42.5                ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (23, 9, N'44                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (24, 10, N'41                  ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (25, 10, N'42.5                ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (26, 10, N'44                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (27, 11, N'40                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (28, 11, N'42.5                ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (29, 11, N'44                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (30, 12, N'41                  ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (31, 12, N'42.5                ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (32, 12, N'44                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (33, 13, N'40                  ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (34, 13, N'41                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (35, 13, N'42                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (36, 13, N'43                  ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (37, 13, N'44                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (38, 13, N'45                  ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (39, 14, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (40, 14, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (41, 14, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (42, 15, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (43, 15, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (44, 15, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (45, 16, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (46, 16, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (47, 16, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (48, 17, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (49, 17, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (50, 17, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (51, 18, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (52, 18, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (53, 18, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (54, 19, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (55, 19, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (56, 19, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (57, 20, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (58, 20, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (59, 20, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (60, 21, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (61, 21, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (62, 21, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (63, 22, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (64, 22, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (65, 22, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (66, 23, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (67, 23, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (68, 23, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (69, 24, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (70, 24, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (71, 24, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (72, 25, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (73, 25, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (74, 25, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (75, 26, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (76, 26, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (77, 26, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (78, 27, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (79, 27, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (80, 27, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (81, 28, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (82, 28, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (83, 28, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (84, 29, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (85, 29, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (86, 29, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (87, 30, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (88, 30, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (89, 30, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (90, 31, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (91, 31, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (92, 31, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (93, 32, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (94, 32, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (95, 32, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (96, 33, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (97, 33, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (98, 33, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (99, 34, N'L                   ', 50)
GO
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (100, 34, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (101, 34, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (102, 35, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (103, 35, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (104, 35, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (105, 36, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (106, 36, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (107, 36, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (108, 37, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (109, 37, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (110, 37, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (111, 38, N'L                   ', 50)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (112, 38, N'XL                  ', 5)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (113, 38, N'XXL                 ', 0)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (183, 45, N'string              ', 1)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (186, 48, N'2cm                 ', 1)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (187, 49, N'1246                ', 100)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (188, 50, N'1234                ', 100)
INSERT [dbo].[KichThuoc] ([MaKT], [MaMau], [KichThuocsp], [SoLuong]) VALUES (189, 51, N'40                  ', 100)
SET IDENTITY_INSERT [dbo].[KichThuoc] OFF
GO
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MoTa]) VALUES (0, N'0', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MoTa]) VALUES (1, N'Giày bóng rổ', N'Giày chơi out door và in door')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MoTa]) VALUES (2, N'Quần áo bóng rổ', N'Quần áo basic cho cả nam và nữ')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MoTa]) VALUES (3, N'Bóng', N'Bóng nhiều kích thước chơi cả trong nhà và ngoài sân')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MoTa]) VALUES (4, N'Phụ Kiện', N'Phụ kiện bổ trợ')
GO
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (1, 1, N'Fire and Ice2')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (2, 1, N'Infinity Bred')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (3, 2, N'Trắng đen')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (4, 2, N'Xanh')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (5, 2, N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (6, 2, N'Xanh dương')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (7, 3, N'Ghi cam')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (8, 4, N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (9, 4, N'Trắng xanh')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (10, 4, N'Xanh ngọc')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (11, 5, N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (12, 5, N'Tím')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (13, 6, N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (14, 7, N'Xanh')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (15, 7, N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (16, 7, N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (17, 8, N'Đỏ')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (18, 8, N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (19, 8, N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (20, 9, N'Đen 1')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (21, 9, N'Đen 2')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (22, 9, N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (23, 10, N'Xanh')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (24, 10, N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (25, 10, N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (26, 11, N'Đen 1')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (27, 11, N'Đen 2')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (28, 11, N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (29, 12, N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (30, 12, N'Đỏ')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (31, 12, N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (32, 13, N'Xanh ngọc')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (33, 13, N'Xanh dương')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (34, 13, N'Xanh lá')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (35, 14, N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (36, 15, N'Xanh lá')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (37, 15, N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (38, 15, N'Xanh dương')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (45, 21, N'string')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (48, 24, N'den xi 123')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (49, 25, N'123467')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (50, 26, N'1234')
INSERT [dbo].[MauSac] ([MaMau], [MaSanPham], [Mau]) VALUES (51, 27, N'đen')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SoDienThoai], [DiaChi]) VALUES (0, N'0', N'0         ', N'0')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SoDienThoai], [DiaChi]) VALUES (1, N'Nhà cung cấp 1', N'0123456789', N'Kim Động-Hưng yên')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (0, 0, N'0', CAST(0 AS Decimal(18, 0)), N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (1, 1, N'Giày bóng rổ chính hãng Nike Kyrie 8 DC9134-001', CAST(1900000 AS Decimal(18, 0)), N'Sản phẩm chính hãng, nhập từ outlet chính hãng ( Cửa hàng thanh lý chính hãng )')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (2, 2, N'Giày bóng rổ PEAK E11123A', CAST(750000 AS Decimal(18, 0)), N'Sản phẩm chính hãng, nhập từ outlet chính hãng ( Cửa hàng thanh lý chính hãng )')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (3, 2, N'Giày bóng rổ PEAK E22351A chính hãng', CAST(700000 AS Decimal(18, 0)), N'Sản phẩm chính hãng, nhập từ outlet chính hãng ( Cửa hàng thanh lý chính hãng )')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (4, 2, N'Giày bóng rổ PEAK chính hãng DA120051', CAST(900000 AS Decimal(18, 0)), N'Sản phẩm chính hãng, nhập từ outlet chính hãng ( Cửa hàng thanh lý chính hãng )')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (5, 2, N'Giày bóng rổ PEAK chính hãng DA120041', CAST(900000 AS Decimal(18, 0)), N'Sản phẩm chính hãng, nhập từ outlet chính hãng ( Cửa hàng thanh lý chính hãng )')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (6, 2, N'Giày bóng rổ PEAK chính hãng DA120221', CAST(800000 AS Decimal(18, 0)), N'Sản phẩm chính hãng, nhập từ outlet chính hãng ( Cửa hàng thanh lý chính hãng )')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (7, 4, N'Bộ quần áo bóng rổ Curry', CAST(900000 AS Decimal(18, 0)), N'Sản phẩm : Bộ quần áo thi đấu bóng rổ, Dành cho : Người lớn, trẻ em, Giới tính : Unisex, Chất liệu : Polyester, Kiểu : In tên số cầu thủ 2 mặt')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (8, 4, N'Bộ quần áo bóng rổ Jordan', CAST(200000 AS Decimal(18, 0)), N'Sản phẩm : Bộ quần áo thi đấu bóng rổ, Dành cho : Người lớn, trẻ em, Giới tính : Unisex, Chất liệu : Polyester, Kiểu : In tên số cầu thủ 2 mặt')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (9, 4, N'Bộ quần áo bóng rổ Kevin Durant Brooklyn Nets', CAST(180000 AS Decimal(18, 0)), N'Sản phẩm : Bộ quần áo thi đấu bóng rổ, Dành cho : Người lớn, trẻ em, Giới tính : Unisex, Chất liệu : Polyester, Kiểu : In tên số cầu thủ 2 mặt')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (10, 5, N'Áo bóng rổ Boston Celtics – Kyrie Irving', CAST(180000 AS Decimal(18, 0)), N'Chất liệu: Polyester, Họa tiết: In, Dành cho: Nam / nữ, Kích cỡ: L – 2XL')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (11, 5, N'Áo bóng rổ Brooklyn Nets – Kevin Durant', CAST(150000 AS Decimal(18, 0)), N'Chất liệu: Polyester, Họa tiết: In, Dành cho: Nam / nữ, Kích cỡ: L – 2XL')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (12, 5, N'Áo bóng rổ Chicago Bulls – Michael Jordan', CAST(140000 AS Decimal(18, 0)), N'Chất liệu: Polyester, Họa tiết: In, Dành cho: Nam / nữ, Kích cỡ: L – 2XL')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (13, 6, N'Quần bóng rổ Curry Splash', CAST(100000 AS Decimal(18, 0)), N'Chất liệu: Polyester, Kiểu: Trên gối, Túi quần: Túi hai bên, không khóa, Dành cho: Nam / Nữ, Họa tiết: In, Kích cỡ: L – 2XL')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (14, 6, N'Quần bóng rổ #6004', CAST(100000 AS Decimal(18, 0)), N'Chất liệu: Polyester, Kiểu: Trên gối, Túi quần: Túi hai bên, không khóa, Dành cho: Nam / Nữ, Họa tiết: In, Kích cỡ: L – 2XL')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (15, 6, N'Quần bóng rổ Boston Celtics', CAST(90000 AS Decimal(18, 0)), N'Chất liệu: Polyester, Kiểu: Trên gối, Túi quần: Túi hai bên, không khóa, Dành cho: Nam / Nữ, Họa tiết: In, Kích cỡ: L – 2XL')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (21, 1, N'12345', CAST(1111111111 AS Decimal(18, 0)), N'1234')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (24, 10, N'nam ngu 123', CAST(10000 AS Decimal(18, 0)), N'oc cho vkl  1233')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (25, 2, N'phiong ngu', CAST(10000 AS Decimal(18, 0)), N'12345t67')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (26, 2, N'string11234', CAST(10000 AS Decimal(18, 0)), N'12345t67')
INSERT [dbo].[SanPham] ([MaSanPham], [MaThuongHieu], [TenSanPham], [DonGia], [MoTa]) VALUES (27, 2, N'sp thêm', CAST(10000 AS Decimal(18, 0)), N'123')
GO
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (0, 0, N'0')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (1, 1, N'Giày Nike')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (2, 1, N'Giày Peak')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (3, 4, N'ProComBat')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (4, 2, N'Bộ Quần Áo')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (5, 2, N'Áo')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (6, 2, N'Quần')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (7, 3, N'Bóng GrewStar')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (8, 3, N'Bóng Lining')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (9, 3, N'Bóng CrossWay')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [MaLoai], [TenThuongHieu]) VALUES (10, 1, N'thương hiệu đã thêm')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoaiSanP__E29B1042291F8AFE]    Script Date: 1/13/2024 2:31:19 PM ******/
ALTER TABLE [dbo].[LoaiSanPham] ADD UNIQUE NONCLUSTERED 
(
	[TenLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ThuongHi__98D6A834B5C862B7]    Script Date: 1/13/2024 2:31:19 PM ******/
ALTER TABLE [dbo].[ThuongHieu] ADD UNIQUE NONCLUSTERED 
(
	[TenThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_type]  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_MaSanPham]  DEFAULT ((0)) FOR [MaSanPham]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_TenSanPham]  DEFAULT ('sp11') FOR [TenSanPham]
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap] ADD  CONSTRAINT [DF_ChiTietDonHangNhap_MaSanPham]  DEFAULT ((0)) FOR [MaSanPham]
GO
ALTER TABLE [dbo].[DonGia] ADD  CONSTRAINT [DF__DonGia__DonGia__403A8C7D]  DEFAULT ((1000)) FOR [DonGia]
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF__DonHang__NgayTao__4F7CD00D]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_DonHang_DuyetDon]  DEFAULT ((0)) FOR [DuyetDon]
GO
ALTER TABLE [dbo].[DonHangNhap] ADD  CONSTRAINT [DF__DonHangNh__NgayT__59FA5E80]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KichThuoc] ADD  CONSTRAINT [DF__KichThuoc__SoLuo__46E78A0C]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_DonGia]  DEFAULT ((100000)) FOR [DonGia]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaDon__5441852A] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDo__MaDon__5441852A]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaSan__5535A963] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDo__MaSan__5535A963]
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaDon__5EBF139D] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHangNhap] ([MaDonHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap] CHECK CONSTRAINT [FK__ChiTietDo__MaDon__5EBF139D]
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaSan__5FB337D6] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap] CHECK CONSTRAINT [FK__ChiTietDo__MaSan__5FB337D6]
GO
ALTER TABLE [dbo].[DonGia]  WITH CHECK ADD  CONSTRAINT [FK__DonGia__MaSanPha__412EB0B6] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DonGia] CHECK CONSTRAINT [FK__DonGia__MaSanPha__412EB0B6]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__MaKhach__5070F446] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__MaKhach__5070F446]
GO
ALTER TABLE [dbo].[DonHangNhap]  WITH CHECK ADD  CONSTRAINT [FK__DonHangNh__MaNCC__5AEE82B9] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonHangNhap] CHECK CONSTRAINT [FK__DonHangNh__MaNCC__5AEE82B9]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK__HinhAnh__MaMau__4AB81AF0] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSac] ([MaMau])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK__HinhAnh__MaMau__4AB81AF0]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_Account]
GO
ALTER TABLE [dbo].[KichThuoc]  WITH CHECK ADD  CONSTRAINT [FK__KichThuoc__MaMau__47DBAE45] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSac] ([MaMau])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KichThuoc] CHECK CONSTRAINT [FK__KichThuoc__MaMau__47DBAE45]
GO
ALTER TABLE [dbo].[MauSac]  WITH CHECK ADD  CONSTRAINT [FK_MauSac_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MauSac] CHECK CONSTRAINT [FK_MauSac_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaThuon__3D5E1FD2] FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([MaThuongHieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaThuon__3D5E1FD2]
GO
ALTER TABLE [dbo].[ThuongHieu]  WITH CHECK ADD  CONSTRAINT [FK__ThuongHie__MaLoa__3A81B327] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThuongHieu] CHECK CONSTRAINT [FK__ThuongHie__MaLoa__3A81B327]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [CK__ChiTietDo__SoLuo__534D60F1] CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [CK__ChiTietDo__SoLuo__534D60F1]
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap]  WITH CHECK ADD  CONSTRAINT [CK__ChiTietDo__SoLuo__5DCAEF64] CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietDonHangNhap] CHECK CONSTRAINT [CK__ChiTietDo__SoLuo__5DCAEF64]
GO
/****** Object:  StoredProcedure [dbo].[ban_create_hoadon]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ban_create_hoadon]
(@TenKH nvarchar(50),
@user nvarchar(50),
@SoDienThoai nchar(10),
@DiaChi nvarchar(100),
@list_json_chitiethoadon NVARCHAR(MAX))
as
begin
	declare @nextMaKH int;
	select @nextMaKH= isnull(MaKhachHang,0)+1 from KhachHang

	insert into KhachHang(MaKhachHang,TenKhachHang,SoDienThoai,username,DiaChi)values(@nextMaKH,@TenKH,@SoDienThoai,@user,@DiaChi)

	declare @nextMaHD int;
	select @nextMaHD =isnull(MaDonHang,0)+1 from DonHang
	insert into DonHang (MaDonHang,MaKhachHang)values(@nextMaHD,@nextMaKH)
	
		IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietDonHang
						 (MaDonHang,
						 MaSanPham, 
						  TenSanPham,MauSac,KichThuoc,
                          SoLuong, 
                          DonGia,MaMau               
                        )
                    SELECT @nextMaHD, 
							JSON_VALUE(p.value, '$.maSanPham'),
							JSON_VALUE(p.value, '$.tenSanPham'),
							JSON_VALUE(p.value, '$.mauSac'),
							JSON_VALUE(p.value, '$.kichThuoc'),
                            JSON_VALUE(p.value, '$.soLuong'), 
                            JSON_VALUE(p.value, '$.donGia'),
							JSON_VALUE(p.value, '$.maMau')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p ;
                END;
	UPDATE KichThuoc
	SET SoLuong = KichThuoc.SoLuong - ChiTietDonHang.SoLuong
	FROM KichThuoc
	INNER JOIN ChiTietDonHang ON KichThuoc.MaMau = ChiTietDonHang.MaMau and KichThuoc.KichThuocsp=ChiTietDonHang.KichThuoc
	WHERE ChiTietDonHang.MaDonHang = @nextMaHD;

	exec dh_get_buID @nextMaHD

end
GO
/****** Object:  StoredProcedure [dbo].[CreateAccount]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateAccount]
    @Username NVARCHAR(50),
    @Password NVARCHAR(50),
    @ResultMessage NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UsernameExists BIT;

    -- Kiểm tra xem tên người dùng đã tồn tại chưa
    SELECT @UsernameExists = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END
    FROM Account
    WHERE Username = @Username;

    -- Nếu tên người dùng đã tồn tại, trả về thông báo
    IF @UsernameExists = 1
    BEGIN
        SET @ResultMessage = N'Tài khoản đã tồn tại.';
    END
    ELSE
    BEGIN
        -- Nếu tên người dùng chưa tồn tại, thực hiện thêm mới
        INSERT INTO Account(Username, Password,type)
        VALUES (@Username, @Password,0);

        SET @ResultMessage = N'Tạo tài khoản thành công.';
    END
	select *,@ResultMessage from Account where username=@Username
END
GO
/****** Object:  StoredProcedure [dbo].[dh_get_all]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dh_get_all] (@user nvarchar(50))
as
begin
	select dh.MaDonHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan, sum(ct.SoLuong
	*ct.DonGia) as TongHoaDon,(select * from ChiTietDonHang where MaDonHang=dh.MaDonHang for json path) as ct  from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang
								join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
								where kh.username=@user
								group by dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[dh_get_buID]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[dh_get_buID] (@id int)
as
begin
	select dh.MaDonHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan, sum(ct.SoLuong
	*ct.DonGia) as TongHoaDon,(select *, SoLuong*DonGia as tong from ChiTietDonHang where MaDonHang=dh.MaDonHang for json path) as ct  from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang
								join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
								where dh.MaDonHang=@id
								group by dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[dh_get_chua_xn]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dh_get_chua_xn] (@user nvarchar(50))
as
begin
	select dh.MaDonHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan, sum(ct.SoLuong
	*ct.DonGia) as TongHoaDon,(select * from ChiTietDonHang where MaDonHang=dh.MaDonHang for json path) as ct  from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang
								join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
								where kh.username=@user and dh.DuyetDon=0
								group by dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[dh_get_da_giao]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dh_get_da_giao] (@user nvarchar(50))
as
begin
	select dh.MaDonHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan, sum(ct.SoLuong
	*ct.DonGia) as TongHoaDon,(select * from ChiTietDonHang where MaDonHang=dh.MaDonHang for json path) as ct  from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang
								join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
								where kh.username=@user and dh.NgayGui is not null and dh.NgayNhan is not null
								group by dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[dh_get_da_xn]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[dh_get_da_xn] (@user nvarchar(50))
as
begin
	select dh.MaDonHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan, sum(ct.SoLuong
	*ct.DonGia) as TongHoaDon,(select * from ChiTietDonHang where MaDonHang=dh.MaDonHang for json path) as ct  from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang
								join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
								where kh.username=@user and dh.DuyetDon=1 and dh.NgayGui is null
								group by dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[dh_get_dang_giao]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dh_get_dang_giao] (@user nvarchar(50))
as
begin
	select dh.MaDonHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan, sum(ct.SoLuong
	*ct.DonGia) as TongHoaDon,(select * from ChiTietDonHang where MaDonHang=dh.MaDonHang for json path) as ct  from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang
								join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
								where kh.username=@user and dh.NgayGui is not null and dh.NgayNhan is null
								group by dh.MaDonHang,kh.MaKhachHang,kh.TenKhachHang,kh.SoDienThoai,kh.DiaChi,dh.NgayTao,dh.DuyetDon, dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[dh_XacNhan_DaNhan_hang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[dh_XacNhan_DaNhan_hang] (@id int)
as
begin
	SET NOCOUNT ON;
	IF EXISTS (SELECT 1 FROM DonHang WHERE MaDonHang = @id AND DuyetDon = 1 and NgayNhan is  null)
    BEGIN
		update DonHang set NgayNhan=getdate() where MaDonHang=@id and DuyetDon=1 and NgayGui is not null;
		end
	select MaDonHang,NgayTao,DuyetDon,NgayGui,NgayNhan from DonHang where MaDonHang = @id AND DuyetDon = 1
end
GO
/****** Object:  StoredProcedure [dbo].[DuyetDonHang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DuyetDonHang] (@id int)
as
begin
	declare @kq nvarchar(50);
	if EXISTS (select 1 from DonHang where MaDonHang=@id and DuyetDon =0)
	begin
		update DonHang set DuyetDon=1 where MaDonHang=@id and DuyetDon =0
		set @kq= N'Duyệt đơn hàng thành công'
	end
	else
	begin
		set @kq=N'Đơn hàng đã được duyệt trước đó'
	end

	select @kq from DonHang where MaDonHang=@id and DuyetDon=1
end
GO
/****** Object:  StoredProcedure [dbo].[getdanhmuc_ngdung]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getdanhmuc_ngdung]
as
begin
	select MaLoai ,TenLoai,(select * from ThuongHieu where MaLoai=LoaiSanPham.MaLoai for json path) as dsth from LoaiSanPham where MaLoai!=0
end
GO
/****** Object:  StoredProcedure [dbo].[GetPagedProducts]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPagedProducts]
    @MaLoai INT null,
    @MaThuongHieu INT null,
    @PageNumber INT,
    @PageSize INT
AS
BEGIN
    SET NOCOUNT ON;

    WITH PagedProducts AS
    (
        SELECT
            ROW_NUMBER() OVER (ORDER BY SanPham.MaSanPham) AS RowNum,
            SanPham.MaSanPham,
            SanPham.MaThuongHieu,
            SanPham.DonGia,
            SanPham.TenSanPham,
            MAX(ha.HinhAnh) AS HinhAnhDaiien
        FROM
            HinhAnh ha
            JOIN MauSac ms ON ms.MaMau = ha.MaMau
            JOIN SanPham ON SanPham.MaSanPham = ms.MaSanPham
            JOIN ThuongHieu ON ThuongHieu.MaThuongHieu = SanPham.MaThuongHieu
            JOIN LoaiSanPham ON LoaiSanPham.MaLoai = ThuongHieu.MaLoai
        WHERE
            (@MaThuongHieu =0 and LoaiSanPham.MaLoai = @MaLoai)
            OR (ThuongHieu.MaThuongHieu = @MaThuongHieu)
        GROUP BY
            SanPham.MaSanPham,
            SanPham.MaThuongHieu,
            SanPham.DonGia,
            SanPham.TenSanPham
    )
    
    SELECT
        MaSanPham,
        MaThuongHieu,
        DonGia,
        TenSanPham,
        HinhAnhDaiien
        -- Các cột khác cần lấy thông tin
    FROM
        PagedProducts
    WHERE
        RowNum BETWEEN (@PageNumber - 1) * @PageSize + 1 AND @PageNumber * @PageSize;
END
GO
/****** Object:  StoredProcedure [dbo].[Login_Admin]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Login_Admin]
(@username nvarchar(50),@password nvarchar(50))
as
begin
	select * from Account where username=@username and password=@password and type=1
end
GO
/****** Object:  StoredProcedure [dbo].[lsp_get_loaisanpham]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[lsp_get_loaisanpham]
as
begin
	select MaLoai as id, TenLoai as name, MoTa as description from LoaiSanPham where MaLoai!=0
end
GO
/****** Object:  StoredProcedure [dbo].[lsp_get_thuonghieu]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[lsp_get_thuonghieu]
as
begin
	select MaThuongHieu as id, MaLoai as id_loai, TenThuongHieu as name from ThuongHieu where MaThuongHieu!=0
end
GO
/****** Object:  StoredProcedure [dbo].[lsp_loaisanpham_delete]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[lsp_loaisanpham_delete] @id int
as
begin
	delete LoaiSanPham where MaLoai=@id and MaLoai!=0
end
GO
/****** Object:  StoredProcedure [dbo].[lsp_loaisanpham_get_by_id]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[lsp_loaisanpham_get_by_id] (@id int)
as
begin
	select MaLoai as id, TenLoai as name, MoTa as description from LoaiSanPham where MaLoai=@id and MaLoai!=0
end
GO
/****** Object:  StoredProcedure [dbo].[lsp_loaisanpham_get_by_name]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[lsp_loaisanpham_get_by_name] (@name nvarchar)
as
begin
	 
	select MaLoai as id, TenLoai as name, MoTa as description from LoaiSanPham where Lower(TenLoai) like N'%' + @name + '%' and MaLoai!=0
end
GO
/****** Object:  StoredProcedure [dbo].[lsp_thuonghieu_delete]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[lsp_thuonghieu_delete] @id int
as
begin
	delete ThuongHieu where MaThuongHieu=@id and MaThuongHieu!=0
end
GO
/****** Object:  StoredProcedure [dbo].[lsp_thuonghieu_get_by_id]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[lsp_thuonghieu_get_by_id] (@id int)
as
begin
	select MaThuongHieu as id, MaLoai as id_loai, TenThuongHieu as name from ThuongHieu where MaThuongHieu=@id and MaThuongHieu!=0
end
GO
/****** Object:  StoredProcedure [dbo].[nhap_createHDN]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[nhap_createHDN]

(@MaNCC int,@TenNCC nvarchar(50),
@SoDienThoai nchar(10),
@DiaChi nvarchar(100),
@list_json_chitiethoadon NVARCHAR(MAX))
as
begin

		
		DECLARE @Madhn INT;
		select @Madhn= isnull(max(MaDonHang),0)+ 1 from DonHangNhap;
		insert into DonHangNhap(MaDonHang,MaNCC) values(@Madhn,@Mancc);
	
		IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietDonHangNhap
						 (MaDonHang,
						 MaSanPham, 
						  TenSanPham,Mau,KichThuoc,
                          SoLuong, 
                          DonGia,MaMau               
                        )
                    SELECT @Madhn, 
							JSON_VALUE(p.value, '$.MaSanPham'),
							JSON_VALUE(p.value, '$.TenSanPham'),
							JSON_VALUE(p.value, '$.Mau'),
							JSON_VALUE(p.value, '$.KichThuoc'),
                            JSON_VALUE(p.value, '$.SoLuong'), 
                            JSON_VALUE(p.value, '$.DonGia'),
							JSON_VALUE(p.value, '$.MaMau')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p ;
                END;
	UPDATE KichThuoc
	SET SoLuong = KichThuoc.SoLuong + ChiTietDonHangNhap.SoLuong
	FROM KichThuoc
	INNER JOIN ChiTietDonHangNhap ON KichThuoc.MaMau = ChiTietDonHangNhap.MaMau and KichThuoc.KichThuocsp=ChiTietDonHangNhap.KichThuoc
	WHERE ChiTietDonHangNhap.MaDonHang = @Madhn;

	exec [nhap_getCT_byID] @Madhn

end
GO
/****** Object:  StoredProcedure [dbo].[nhap_getall]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[nhap_getall]
as
begin
	select dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,dh.NgayTao,ncc.SoDienThoai,ncc.DiaChi, sum(ct.SoLuong*ct.DonGia) as TongHD 
	from NhaCungCap ncc inner join DonHangNhap dh on ncc.MaNCC=dh.MaNCC 
	join ChiTietDonHangNhap ct on dh.MaDonHang=ct.MaDonHang
	group by dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,ncc.DiaChi,dh.NgayTao
end
GO
/****** Object:  StoredProcedure [dbo].[nhap_getCT_byID]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[nhap_getCT_byID] @id int
as
begin
	select dh.MaDonHang,ncc.MaNCC, ncc.TenNCC,dh.NgayTao, ncc.SoDienThoai,ncc.DiaChi, ISNULL(SUM(ct.DonGia * ct.SoLuong), 0) AS TongHD,
	(select * from ChiTietDonHangNhap where MaDonHang=@id for json path) as cthd_json
	from NhaCungCap ncc   join DonHangNhap dh on dh.MaNCC=ncc.MaNCC left join ChiTietDonHangNhap ct on ct.MaDonHang=dh.MaDonHang 
	where dh.MaDonHang=@id
	group by dh.MaDonHang,ncc.MaNCC, ncc.TenNCC,dh.NgayTao, ncc.SoDienThoai,ncc.DiaChi
end
GO
/****** Object:  StoredProcedure [dbo].[nhap_sp_hoa_don_update]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhap_sp_hoa_don_update]
(@MaDonHang int,
@list_json_chitiethoadon NVARCHAR(MAX))
AS
    BEGIN
		
		
		IF(@list_json_chitiethoadon IS NOT NULL) 
		BEGIN
			 -- Insert data to temp table 
		   SELECT
			  JSON_VALUE(p.value, '$.MaDonHang') as maHoaDon,
			  JSON_VALUE(p.value, '$.MaSanPham') as maSanPham,
			  JSON_VALUE (p.value,'$.Mau')as mau,
			  JSON_VALUE (p.value,'$.KichThuoc')as kichthuoc,
			  JSON_VALUE(p.value, '$.SoLuong') as soLuong,
			  JSON_VALUE(p.value, '$.DonGia') as tongGia,
			  JSON_VALUE(p.value,'$.MaMau') as MaMau,
			  JSON_VALUE(p.value, '$.status') AS status 
			  INTO #Results 
		   FROM OPENJSON(@list_json_chitiethoadon) AS p;
		 
		 -- Insert data to table with STATUS = 1;
			INSERT INTO ChiTietDonHangNhap(MaDonHang, 
						  MaSanPham,
                          Mau,KichThuoc, SoLuong,DonGia,MaMau 
                          ) 
			   SELECT
				@MaDonHang,
				  #Results.maSanPham,
				  #Results.mau,
				  #Results.kichthuoc,
				  #Results.soLuong,
				  #Results.tongGia,
				  #Results.MaMau
			   FROM  #Results 
			   WHERE #Results.status = '1' 
			UPDATE KichThuoc
			SET SoLuong = KichThuoc.SoLuong + #Results.soLuong
			FROM KichThuoc
			INNER JOIN #Results ON KichThuoc.MaMau = #Results.MaMau and KichThuoc.KichThuocsp=#Results.KichThuoc
			WHERE #Results.status='1' ;
			declare @bienthien int;
			declare @json_bienthien nvarchar(max);
			SELECT  (ChiTietDonHangNhap.SoLuong - #Results.soLuong) AS bienthien,
					#Results.kichthuoc,
					#Results.MaMau
			INTO #bienthienSL
			FROM ChiTietDonHangNhap join #Results on ChiTietDonHangNhap.MaDonHang = #Results.maHoaDon and ChiTietDonHangNhap.MaSanPham=#Results.maSanPham
			WHERE  ChiTietDonHangNhap.MaSanPham = #Results.maSanPham 
				AND #Results.status = '2';

			-- Update data to table with STATUS = 2
			  UPDATE ChiTietDonHangNhap 
			  SET
				@bienthien=ChiTietDonHangNhap.SoLuong-#Results.soLuong,
				 SoLuong = #Results.soLuong,
				 DonGia = #Results.tongGia
			  FROM #Results 
			  WHERE  ChiTietDonHangNhap.MaDonHang = #Results.maHoaDon and ChiTietDonHangNhap.MaSanPham=#Results.maSanPham AND #Results.status = '2';
			UPDATE KichThuoc
			SET SoLuong = KichThuoc.SoLuong - #bienthienSL.bienthien
			FROM KichThuoc
			INNER JOIN #bienthienSL ON KichThuoc.MaMau = #bienthienSL.MaMau and KichThuoc.KichThuocsp=#bienthienSL.KichThuoc
			;
			-- Delete data to table with STATUS = 3
			DELETE C
			FROM ChiTietDonHangNhap C
			INNER JOIN #Results R
				ON C.MaDonHang=R.maHoaDon and C.MaSanPham=R.maSanPham
			WHERE R.status = '3';
			UPDATE KichThuoc
			SET SoLuong = KichThuoc.SoLuong - #Results.soLuong
			FROM KichThuoc
			INNER JOIN #Results ON KichThuoc.MaMau = #Results.MaMau and KichThuoc.KichThuocsp=#Results.KichThuoc
			WHERE #Results.status='3' ;
			DROP TABLE #Results;
		END;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[nhap_xoaDHN]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[nhap_xoaDHN] @id int
as
begin
	UPDATE KichThuoc
	SET SoLuong = KichThuoc.SoLuong + ChiTietDonHang.SoLuong
	FROM KichThuoc
	INNER JOIN ChiTietDonHang ON KichThuoc.MaMau = ChiTietDonHang.MaMau and KichThuoc.KichThuocsp=ChiTietDonHang.KichThuoc
	WHERE ChiTietDonHang.MaDonHang = @id;
	delete DonHangNhap where MaDonHang=@id

	exec nhap_getCT_byID @id 
end
GO
/****** Object:  StoredProcedure [dbo].[nnhap_getdon_byid]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nnhap_getdon_byid] @id int
	as
	begin
	select dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,ncc.DiaChi, sum(ct.SoLuong*ct.DonGia) as TongHD 
	from NhaCungCap ncc inner join DonHangNhap dh on ncc.MaNCC=dh.MaNCC 
	join ChiTietDonHangNhap ct on dh.MaDonHang=ct.MaDonHang
	where dh.MaDonHang=@id
	group by dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,ncc.DiaChi
	end
GO
/****** Object:  StoredProcedure [dbo].[nnhap_getdon_bytime]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nnhap_getdon_bytime] @ngayMin date, @ngayMax date
	as
	begin
	select dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,ncc.DiaChi, sum(ct.SoLuong*ct.DonGia) as TongHD 
	from NhaCungCap ncc inner join DonHangNhap dh on ncc.MaNCC=dh.MaNCC 
	join ChiTietDonHangNhap ct on dh.MaDonHang=ct.MaDonHang
	where dh.NgayTao between @ngayMin and @ngayMax
	group by dh.MaDonHang,ncc.MaNCC,ncc.TenNCC,ncc.SoDienThoai,ncc.DiaChi
	end
GO
/****** Object:  StoredProcedure [dbo].[show_dssp_ton]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[show_dssp_ton]
as
begin
	select sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa,sum(kt.SoLuong) as SoLuongTon
		from SanPham sp join MauSac ms on ms.MaSanPham=sp.MaSanPham 
		join KichThuoc kt on kt.MaMau=ms.MaMau 
		group by sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa
		order by sum(kt.SoLuong) desc
end
GO
/****** Object:  StoredProcedure [dbo].[showCTdonHang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[showCTdonHang] (@id int)
as
begin
	select dh.MaDonHang,dh.MaKhachHang,kh.TenKhachHang,dh.NgayTao as NgayDat,dh.DuyetDon as TrangThaiDonHang,sum(ct.SoLuong*ct.DonGia) as TongHD,(select ct.*,ct.SoLuong*ct.DonGia as tong from ChiTietDonHang ct where ct.MaDonHang=@id FOR JSON PATH) as DSSP,kh.SoDienThoai,kh.DiaChi,dh.NgayGui,dh.NgayNhan from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang
								join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang
								where dh.MaDonHang=@id
								group by dh.MaDonHang,dh.MaKhachHang,kh.TenKhachHang,dh.NgayTao ,dh.DuyetDon ,kh.SoDienThoai,kh.DiaChi,dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[showDonHangChuaXacNhan]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[showDonHangChuaXacNhan]
as
begin
	select dh.MaDonHang,dh.MaKhachHang,kh.TenKhachHang,dh.NgayTao as NgayDat,dh.DuyetDon as TrangThaiDonHang,dh.NgayGui,dh.NgayNhan,sum(ct.SoLuong*ct.DonGia) as TongHD
	from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang 
	where dh.DuyetDon=0
	group by dh.MaDonHang,dh.MaKhachHang,dh.NgayTao,dh.DuyetDon,kh.TenKhachHang,dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[showDonHangDaGiao]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[showDonHangDaGiao]
as
begin
	select dh.MaDonHang,dh.MaKhachHang,kh.TenKhachHang,dh.NgayTao as NgayDat,dh.DuyetDon as TrangThaiDonHang,dh.NgayGui,dh.NgayNhan,sum(ct.SoLuong*ct.DonGia) as TongHD
	from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang 
	where dh.DuyetDon=1 and NgayGui is not null and NgayNhan is not null
	group by dh.MaDonHang,dh.MaKhachHang,dh.NgayTao,dh.DuyetDon,kh.TenKhachHang,dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[showDonHangDangGiao]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[showDonHangDangGiao]
as
begin
	select dh.MaDonHang,dh.MaKhachHang,kh.TenKhachHang,dh.NgayTao as NgayDat,dh.DuyetDon as TrangThaiDonHang,dh.NgayGui,dh.NgayNhan,sum(ct.SoLuong*ct.DonGia) as TongHD
	from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang 
	where dh.DuyetDon=1 and NgayGui is not null and NgayNhan is null
	group by dh.MaDonHang,dh.MaKhachHang,dh.NgayTao,dh.DuyetDon,kh.TenKhachHang,dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[showDonHangDaXacNhan]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[showDonHangDaXacNhan]
as
begin
	select dh.MaDonHang,dh.MaKhachHang,kh.TenKhachHang,dh.NgayTao as NgayDat,dh.DuyetDon as TrangThaiDonHang,dh.NgayGui,dh.NgayNhan,sum(ct.SoLuong*ct.DonGia) as TongHD
	from KhachHang kh join DonHang dh on dh.MaKhachHang=kh.MaKhachHang join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang 
	where dh.DuyetDon=1 and NgayGui is null
	group by dh.MaDonHang,dh.MaKhachHang,dh.NgayTao,dh.DuyetDon,kh.TenKhachHang,dh.NgayGui,dh.NgayNhan
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_sanpham]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_get_sanpham]
as
begin
	select SP.MaSanPham,
        SP.MaThuongHieu,SP.DonGia,
        SP.TenSanPham, MAX(HA.HinhAnh) AS HinhAnhDaiien
		from SanPham SP join MauSac MS 
		on MS.MaSanPham=SP.MaSanPham
			join HinhAnh HA on HA.MaMau=MS.MaMau
				group by SP.MaSanPham,SP.MaThuongHieu,SP.TenSanPham,SP.DonGia
end
GO
/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_login](@taikhoan nvarchar(50), @matkhau nvarchar(50))
AS
    BEGIN
      SELECT  *
      FROM Account
      where username= @taikhoan and password = @matkhau;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_NhaCungCap_Delete]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_NhaCungCap_Delete]
(
    @MaNCC INT
)
AS
BEGIN
    DELETE FROM NhaCungCap
    WHERE MaNCC = @MaNCC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_NhaCungCap_GetAll]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_NhaCungCap_GetAll]
AS
BEGIN
    SELECT *
    FROM NhaCungCap;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_NhaCungCap_GetById]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_NhaCungCap_GetById]
(
    @MaNCC INT
)
AS
BEGIN
    SELECT *
    FROM NhaCungCap
    WHERE MaNCC = @MaNCC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_NhaCungCap_Insert]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_NhaCungCap_Insert]
(
    @TenNCC NVARCHAR(100),
    @SoDienThoai CHAR(10),
    @DiaChi NVARCHAR(MAX)
)
AS
BEGIN
    INSERT INTO NhaCungCap (TenNCC, SoDienThoai, DiaChi)
    VALUES (@TenNCC, @SoDienThoai, @DiaChi);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_NhaCungCap_Update]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_NhaCungCap_Update]
(
    @MaNCC INT,
    @TenNCC NVARCHAR(100),
    @SoDienThoai CHAR(10),
    @DiaChi NVARCHAR(MAX)
)
AS
BEGIN
    UPDATE NhaCungCap
    SET TenNCC = @TenNCC, SoDienThoai = @SoDienThoai, DiaChi = @DiaChi
    WHERE MaNCC = @MaNCC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_create]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sanpham_create]
(
    @MaThuongHieu INT,
    @TenSanPham NVARCHAR(250),
    @MoTa NVARCHAR(250),
    @HinhDaiDien NVARCHAR(250),
    @Mau NVARCHAR(MAX),
    @giaBan DECIMAL(18, 0)
)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @NextMaSanPham INT;
        SELECT @NextMaSanPham = ISNULL(MAX(MaSanPham), 0) + 1 FROM SanPham;

        INSERT INTO SanPham
        (
            MaSanPham,
            MaThuongHieu,
            TenSanPham,
            MoTa,
            DonGia
        )
        VALUES
        (
            @NextMaSanPham,
            @MaThuongHieu,
            @TenSanPham,
            @MoTa,
            @giaBan
        );

        IF (@Mau IS NOT NULL)
        BEGIN
           DECLARE @JsonData NVARCHAR(MAX) = @Mau;

		DECLARE @NextMaMau INT;
		SELECT @NextMaMau = ISNULL(MAX(MaMau), 0) + 1 FROM MauSac;

		DECLARE @List NVARCHAR(MAX);
		SELECT @List = JSON_QUERY(@JsonData);

		IF (@List IS NOT NULL)
		BEGIN
		IF CURSOR_STATUS('global', 'Cursor_List') >= 0
BEGIN
    CLOSE Cursor_List;
    DEALLOCATE Cursor_List;
END;
			DECLARE Cursor_List CURSOR FOR
			SELECT [value] FROM OPENJSON(@List);

		OPEN Cursor_List;

		DECLARE @Id INT, @IdSP INT,@MauSac nvarchar(max), @ArrList1 NVARCHAR(MAX), @ArrList2 NVARCHAR(MAX);

		FETCH NEXT FROM Cursor_List INTO @List;

		WHILE @@FETCH_STATUS = 0
		BEGIN
        -- Extract values from the current JSON object
        SELECT
            
			@MauSac = JSON_VALUE(@List, '$.mausac'),
			@ArrList1=JSON_QUERY(@List, '$.list'),
			@ArrList2 = JSON_QUERY(@List, '$.hinhAnhModels');
        -- Insert into the MauSac table
				INSERT INTO MauSac (MaMau, MaSanPham, Mau)
				VALUES (@NextMaMau, @NextMaSanPham,@MauSac);

        -- Increment @NextMaMau for the next row
				print(@NextMaMau);
				INSERT INTO KichThuoc
                (
                    MaMau,
                    KichThuocsp,
                    SoLuong
                )
                SELECT
                    @NextMaMau,
                    JSON_VALUE(l.value, '$.kichthuoc'),
                    JSON_VALUE(l.value, '$.soluong')
                FROM OPENJSON(@ArrList1) AS l;

				 INSERT INTO HinhAnh
                (
                    MaMau,
                    HinhAnh
                )
                SELECT
                    @NextMaMau,
                    JSON_VALUE(h.value, '$.hinhanh_url')
                FROM OPENJSON(@ArrList2) AS h;
		
					SET @NextMaMau = @NextMaMau + 1;
					FETCH NEXT FROM Cursor_List INTO @List;
				END;

				CLOSE Cursor_List;
				DEALLOCATE Cursor_List;
			END;

        END;

        COMMIT;
    END TRY
    BEGIN CATCH
        
        -- Handle or log the error appropriately.
        PRINT 'Error occurred: ' + ERROR_MESSAGE();
		ROLLBACK;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_create2]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sanpham_create2]
(
    @MaSanPham      INT,
    @MaThuongHieu   INT,
    @TenSanPham     NVARCHAR(250),
    @MoTa           NVARCHAR(250),
    @HinhDaiDien    NVARCHAR(250),
    @Mau            NVARCHAR(MAX),
    @giaBan         DECIMAL(18, 0)
)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO SanPham
        (
            MaSanPham,
            MaThuongHieu,
            TenSanPham,
            MoTa,
            DonGia
        )
        VALUES
        (
            @MaSanPham,
            @MaThuongHieu,
            @TenSanPham,
            @MoTa,
            @giaBan
        );

        IF (@Mau IS NOT NULL)
        BEGIN
            INSERT INTO MauSac
            (
                MaMau,
                MaSanPham,
                Mau
            )
            SELECT
                JSON_VALUE(m.value, '$.id'),
                @MaSanPham,
                JSON_VALUE(m.value, '$.mausac')
            FROM OPENJSON(@Mau) AS m;

            DECLARE @List NVARCHAR(MAX);
            SELECT @List = JSON_QUERY(m.value, '$.list') FROM OPENJSON(@Mau) AS m;

            IF (@List IS NOT NULL)
            BEGIN
                INSERT INTO KichThuoc
                (
                    MaKT,
                    MaMau,
                    KichThuocsp,
                    SoLuong
                )
                SELECT
                    JSON_VALUE(l.value, '$.id'),
                    JSON_VALUE(l.value, '$.idmau'),
                    JSON_VALUE(l.value, '$.kichthuoc'),
                    JSON_VALUE(l.value, '$.soluong')
                FROM OPENJSON(@List) AS l;
            END;

            DECLARE @HinhAnhModels NVARCHAR(MAX);
            SELECT @HinhAnhModels = JSON_QUERY(m.value, '$.hinhAnhModels') FROM OPENJSON(@Mau) AS m;

            IF (@HinhAnhModels IS NOT NULL)
            BEGIN
                INSERT INTO HinhAnh
                (
                    MaHinhAnh,
                    MaMau,
                    HinhAnh
                )
                SELECT
                    JSON_VALUE(h.value, '$.id'),
                    JSON_VALUE(h.value, '$.idMau'),
                    JSON_VALUE(h.value, '$.hinhanh_url')
                FROM OPENJSON(@HinhAnhModels) AS h;
            END;
        END;

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        -- You may want to log the error or handle it in an appropriate way.
        -- PRINT 'Error occurred: ' + ERROR_MESSAGE();
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_delete]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_sanpham_delete] @id int
as
begin
	delete SanPham where MaSanPham=@id and MaSanPham!=0
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_get_by_id]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanpham_get_by_id]
@id int
as
begin
declare @maTH int;
select @maTH=MaThuongHieu from SanPham where MaSanPham=@id;
	select		
        SP.MaSanPham,
        SP.MaThuongHieu,
        SP.TenSanPham,
		(select MS1.MaSanPham as idsp,MS1.MaMau as id,MS1.Mau as mausac,(select kt.MaKT as id ,kt.MaMau as idmau,
																		kt.KichThuocsp as kichthuoc ,kt.SoLuong as soluong from SanPham sp join MauSac ms 
																		on ms.MaSanPham=sp.MaSanPham
																		join KichThuoc kt on kt.MaMau=ms.MaMau 
																		where sp.MaSanPham=@id and sp.MaSanPham!=0 for Json path) as list,
																	(select ha.MaHinhAnh as id, ha.MaMau as idmau, ha.HinhAnh as hinhanh_url from SanPham sp join MauSac ms 
																		on ms.MaSanPham=sp.MaSanPham
																		join HinhAnh ha on ha.MaMau=ms.MaMau 
																		where sp.MaSanPham=@id and sp.MaSanPham!=0 and ha.MaMau= MS1.MaMau for Json path) as hinhAnhModels
		from SanPham sp join MauSac ms1 
		on ms1.MaSanPham=sp.MaSanPham 
		where sp.MaSanPham=@id and sp.MaSanPham!=0 for Json path ) as Mau,
        MAX(HA.HinhAnh) AS HinhAnhDaiien,
		SP.DonGia as giaBans,
		(select top(5) SP.MaSanPham,
        SP.MaThuongHieu,SP.DonGia,
        SP.TenSanPham, MAX(HA.HinhAnh) AS HinhAnhDaiien
		from SanPham SP join MauSac MS 
		on MS.MaSanPham=SP.MaSanPham
			join HinhAnh HA on HA.MaMau=MS.MaMau
			where SP.MaThuongHieu=@maTH and SP.MaSanPham!=@id
				group by SP.MaSanPham,SP.MaThuongHieu,SP.TenSanPham,SP.DonGia 
				order by SP.MaSanPham
				for json path ) as dsspTT
		from SanPham SP join MauSac MS 
		on MS.MaSanPham=SP.MaSanPham
			join HinhAnh HA on HA.MaMau=MS.MaMau
				where SP.MaSanPham=@id and SP.MaSanPham!=0
				group by SP.MaSanPham,SP.MaThuongHieu,SP.TenSanPham,SP.DonGia

end;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_get_by_id3]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanpham_get_by_id3]
@id int
as
begin
select		
        SP.MaSanPham,
        SP.MaThuongHieu,
        SP.TenSanPham,
		
		(select MS.MaSanPham as idsp,MS.MaMau as id,MS.Mau as mausac,(select kt.MaKT as id ,kt.MaMau as idmau,
																		kt.KichThuocsp as kichthuoc ,kt.SoLuong as soluong from SanPham sp join MauSac ms 
																		on ms.MaSanPham=sp.MaSanPham
																		join KichThuoc kt on kt.MaMau=ms.MaMau 
																		where sp.MaSanPham=@id and sp.MaSanPham!=0 for Json path) as list,
																	(select ha.MaHinhAnh as id, ha.MaMau as idmau, ha.HinhAnh as hinhanh_url from SanPham sp join MauSac ms 
																		on ms.MaSanPham=sp.MaSanPham
																		join HinhAnh ha on ha.MaMau=ms.MaMau 
																		where sp.MaSanPham=@id and sp.MaSanPham!=0 for Json path) as hinhAnhModels
		from SanPham sp join MauSac ms 
		on ms.MaSanPham=sp.MaSanPham 
		where sp.MaSanPham=@id and sp.MaSanPham!=0 for Json path ) as Mau,
        MAX(HA.HinhAnh) AS HinhAnhDaiien,
		SP.DonGia as giaBans,SP.MoTa
		from SanPham SP join MauSac MS 
		on MS.MaSanPham=SP.MaSanPham
			join HinhAnh HA on HA.MaMau=MS.MaMau
				where SP.MaSanPham=@id and SP.MaSanPham!=0
				group by SP.MaSanPham,SP.MaThuongHieu,SP.TenSanPham,SP.DonGia,SP.MoTa

	end;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_updatesp]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sanpham_updatesp]
(
    @MaSanPham      INT,
    @MaThuongHieu   INT,
    @TenSanPham     NVARCHAR(250),
    @MoTa           NVARCHAR(250),
    @HinhDaiDien    NVARCHAR(250),
    @Mau            NVARCHAR(MAX),
    @giaBan         DECIMAL(18, 0)
)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE SanPham
        SET
            MaThuongHieu = @MaThuongHieu,
            TenSanPham = @TenSanPham,
            MoTa = @MoTa,
            DonGia = @giaBan
        WHERE MaSanPham = @MaSanPham;

        IF (@Mau IS NOT NULL)
        BEGIN
            DECLARE @NextMaMau INT;
            SELECT @NextMaMau = ISNULL(MAX(MaMau), 0) + 1 FROM MauSac;
			declare @MauId int,@ArrList1 nvarchar(max),@ArrList2 nvarchar(max),@MauSac nvarchar(50);
            DECLARE MauCursor CURSOR FOR SELECT [value] FROM OPENJSON(@Mau);
			OPEN MauCursor;

            FETCH NEXT FROM MauCursor INTO @Mau;

            WHILE @@FETCH_STATUS = 0
			 SELECT
                @MauId=JSON_VALUE(@Mau, '$.id'),
                @MauSac=JSON_VALUE(@Mau, '$.mausac'),
                @ArrList1=JSON_QUERY(@Mau, '$.list'),
                @ArrList2=JSON_QUERY(@Mau, '$.hinhAnhModels')

            BEGIN
                IF (@MauId IS NOT NULL)
                BEGIN
                    -- Update existing record
                    UPDATE MauSac
                    SET
                        Mau = @MauSac
                    WHERE MaMau = @MauId;

                    -- Update or insert KichThuoc record
                    IF (@ArrList1 IS NOT NULL)
                    BEGIN
                        UPDATE KichThuoc
                        SET
                            MaMau = @MauId,
                            KichThuocsp = JSON_VALUE(l.value, '$.kichthuoc'),
                            SoLuong = JSON_VALUE(l.value, '$.soluong')
                        FROM OPENJSON(@ArrList1) AS l
                        WHERE MaKT = JSON_VALUE(l.value, '$.id');
                    END;

                    -- Update or insert HinhAnh record
                    IF (@ArrList2 IS NOT NULL)
                    BEGIN
                        UPDATE HinhAnh
                        SET
                            HinhAnh = JSON_VALUE(h.value, '$.hinhanh_url')
                        FROM OPENJSON(@ArrList2) AS h
                        WHERE MaHinhAnh = JSON_VALUE(h.value, '$.id');
                    END;
                END
                ELSE
                BEGIN
                    -- Insert new record
                    INSERT INTO MauSac (MaMau, MaSanPham, Mau)
                    VALUES (@NextMaMau, @MaSanPham, @MauSac);

                    -- Increment @NextMaMau for the next row
                   

                    -- Insert KichThuoc records
                    IF (@ArrList1 IS NOT NULL)
                    BEGIN
                        INSERT INTO KichThuoc (MaMau, KichThuocsp, SoLuong)
                        SELECT
                            @NextMaMau,
                            JSON_VALUE(l.value, '$.kichthuoc'),
                            JSON_VALUE(l.value, '$.soluong')
                        FROM OPENJSON(@ArrList1) AS l;
                    END;

                    -- Insert HinhAnh records
                    IF (@ArrList2 IS NOT NULL)
                    BEGIN
                        INSERT INTO HinhAnh (MaMau, HinhAnh)
                        SELECT
                            @NextMaMau,
                            JSON_VALUE(h.value, '$.hinhanh_url')
                        FROM OPENJSON(@ArrList2) AS h;
                    END;
                END;
				 SET @NextMaMau = @NextMaMau + 1;
                FETCH NEXT FROM MauCursor INTO @Mau;
            END;

            CLOSE MauCursor;
            DEALLOCATE MauCursor;
        END;

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_search_sanpham_by_name]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[sp_search_sanpham_by_name] (@name nvarchar(100))
 as
 begin
 
 select SP.MaSanPham,
        SP.MaThuongHieu,SP.DonGia,
        SP.TenSanPham, MAX(HA.HinhAnh) AS HinhAnhDaiien
		from SanPham SP join MauSac MS 
		on MS.MaSanPham=SP.MaSanPham
			join HinhAnh HA on HA.MaMau=MS.MaMau
			where lower(SP.TenSanPham) like N'%' + @name + '%' and SP.MaSanPham!=0 
				group by SP.MaSanPham,SP.MaThuongHieu,SP.TenSanPham,SP.DonGia 
				order by SP.MaSanPham
end
GO
/****** Object:  StoredProcedure [dbo].[sp_search_sanpham_by_price]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_search_sanpham_by_price](@MaLoai int, @MaThuongHieu int,@giaMin decimal(18,0),@giaMax decimal(18,0))
as
begin
	if(@MaThuongHieu is null)
	begin
	select
		SP.MaSanPham,
        SP.MaThuongHieu,SP.DonGia,
        SP.TenSanPham, MAX(HA.HinhAnh) AS HinhAnhDaiien
		from LoaiSanPham lsp join ThuongHieu th on th.MaLoai=lsp.MaLoai join SanPham SP on Sp.MaThuongHieu=th.MaThuongHieu join MauSac MS 
		on MS.MaSanPham=SP.MaSanPham
			join HinhAnh HA on HA.MaMau=MS.MaMau
			where lsp.MaLoai=@MaLoai and (SP.DonGia between @giaMin and @giaMax)
				group by SP.MaSanPham,SP.MaThuongHieu,SP.TenSanPham,SP.DonGia 
				order by SP.MaSanPham
	end
	
		else
		begin
			select
		SP.MaSanPham,
        SP.MaThuongHieu,SP.DonGia,
        SP.TenSanPham, MAX(HA.HinhAnh) AS HinhAnhDaiien
		from ThuongHieu th join SanPham SP on Sp.MaThuongHieu=th.MaThuongHieu join MauSac MS 
		on MS.MaSanPham=SP.MaSanPham
			join HinhAnh HA on HA.MaMau=MS.MaMau
			where th.MaThuongHieu=@MaThuongHieu and (SP.DonGia between @giaMin and @giaMax)
				group by SP.MaSanPham,SP.MaThuongHieu,SP.TenSanPham,SP.DonGia 
				order by SP.MaSanPham
		end
	
end
GO
/****** Object:  StoredProcedure [dbo].[sp_show_mau_conhang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_show_mau_conhang] (@MaSanPham int, @size nchar(10))
as
begin
	SELECT ms.MaMau,ms.Mau,
    CASE
        WHEN SoLuong > 0 THEN 'True'
        ELSE 'False'
    END AS ConHang
FROM MauSac ms join KichThuoc kt on ms.MaMau=kt.MaMau where ms.MaSanPham=@MaSanPham and trim(@size)=trim(kt.KichThuocsp);
end
GO
/****** Object:  StoredProcedure [dbo].[sp_show_size_conhang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_show_size_conhang] (@mauID int)
as
begin
	SELECT
    KichThuocsp, SoLuong,
    CASE
        WHEN SoLuong > 0 THEN 'True'
        ELSE 'False'
    END AS ConHang
FROM
    KichThuoc where MaMau=@mauID;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaLoaiSanPham]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaLoaiSanPham]
@MaLoai int,
@TenLoai nvarchar(50),
@MoTa nvarchar(max)
AS
BEGIN
    UPDATE LoaiSanPham
    SET TenLoai = @TenLoai,
        MoTa = @MoTa
    WHERE MaLoai = @MaLoai and MaLoai!=0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaThuongHieu]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaThuongHieu]
@MaThuongHieu int,
@MaLoai int,
@TenThuongHieu nvarchar(max)
AS
BEGIN
    UPDATE ThuongHieu
    SET TenThuongHieu = @TenThuongHieu,
        MaLoai = @MaLoai
    WHERE MaThuongHieu = @MaThuongHieu and MaThuongHieu!=0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemLoaiSanPham]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemLoaiSanPham]
@TenLoai nvarchar(50),
@MoTa nvarchar(100)
AS
DECLARE @MaLoai int;
SELECT @MaLoai = ISNULL(MAX(MaLoai), 0) + 1 FROM LoaiSanPham;
INSERT INTO LoaiSanPham (MaLoai, TenLoai, MoTa)
VALUES (@MaLoai, @TenLoai, @MoTa);
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemSanPham]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemSanPham]
(
@MaSanPham int,
@MaThuongHieu int,
@TenSanPham nvarchar(100),
@MauJson nvarchar(max),
@GiaBansJson nvarchar(max)
)
AS
BEGIN
    BEGIN TRY
        BEGIN TRAN;

        -- Thêm thông tin sản phẩm
        INSERT INTO SanPham (MaSanPham, MaThuongHieu, TenSanPham)
        VALUES (@MaSanPham, @MaThuongHieu, @TenSanPham);

        -- Chuyển đổi JSON Mau thành bảng tạm
        DECLARE @MauTable TABLE (
            Id int,
            IdSP nvarchar(max),
            MauSac nvarchar(max),
            ListJson nvarchar(max),
            HinhAnhModelsJson nvarchar(max)
        );
        INSERT INTO @MauTable (Id, IdSP, MauSac, ListJson, HinhAnhModelsJson)
        SELECT 
            JSON_VALUE(Mau.value('($.id)[0]', 'nvarchar(max)'), '$'),
            JSON_VALUE(Mau.value('($.idsp)[0]', 'nvarchar(max)'), '$'),
            JSON_VALUE(Mau.value('($.mausac)[0]', 'nvarchar(max)'), '$'),
            Mau.value('($.list)[0]', 'nvarchar(max)'),
            Mau.value('($.hinhAnhModels)[0]', 'nvarchar(max)')
        FROM OPENJSON(@MauJson, '$.mau') AS Mau;

        -- Thêm thông tin Mau
        INSERT INTO MauSac (MaSanPham, MaMau, Mau)
        SELECT 
            @MaSanPham,
            Id,
            MauSac
        FROM @MauTable;

        -- Thêm thông tin List
        INSERT INTO KichThuoc (MaMau, MaKT, KichThuoc, SoLuong)
        SELECT
            Id,
            JSON_VALUE(ListJson.value('($.id)[0]', 'nvarchar(max)'), '$'),
            JSON_VALUE(ListJson.value('($.kichthuoc)[0]', 'nvarchar(max)'), '$'),
            JSON_VALUE(ListJson.value('($.soluong)[0]', 'nvarchar(max)'), '$')
        FROM @MauTable
        CROSS APPLY OPENJSON(ListJson, '$.list');

        -- Thêm thông tin HinhAnhModels
        INSERT INTO HinhAnh (MaMau, MaHinhAnh, HinhAnh)
        SELECT
            Id,
            JSON_VALUE(HinhAnhModelsJson.value('($.id)[0]', 'nvarchar(max)'), '$'),
            JSON_VALUE(HinhAnhModelsJson.value('($.hinhanh_url)[0]', 'nvarchar(max)'), '$')
        FROM @MauTable
        CROSS APPLY OPENJSON(HinhAnhModelsJson, '$.hinhAnhModels');

        -- Thêm thông tin GiaBan
        INSERT INTO DonGia (MaSanPham, MaDonGia, DonGia, MoTa)
        SELECT 
            @MaSanPham,
            JSON_VALUE(GiaBan.value('($.id)[0]', 'nvarchar(max)'), '$'),
            JSON_VALUE(GiaBan.value('($.dongia)[0]', 'nvarchar(max)'), '$'),
            JSON_VALUE(GiaBan.value('($.mota)[0]', 'nvarchar(max)'), '$')
        FROM OPENJSON(@GiaBansJson, '$.giaBans') AS GiaBan;

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        -- Xử lý lỗi nếu cần thiết
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemThuongHieu]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemThuongHieu]
@MaLoai int,
@TenThuongHieu nvarchar(50)
AS
DECLARE @MaThuongHieu int;
SELECT @MaThuongHieu = ISNULL(MAX(MaThuongHieu), 0) + 1 FROM ThuongHieu;
INSERT INTO ThuongHieu (MaThuongHieu, MaLoai, TenThuongHieu)
VALUES (@MaThuongHieu, @MaLoai, @TenThuongHieu);
GO
/****** Object:  StoredProcedure [dbo].[sp_timSanPham]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_timSanPham]
    @TenSanPham NVARCHAR(255) = NULL,
    @MaSanPham NVARCHAR(50) = NULL
AS
BEGIN
    SELECT SP.MaSanPham,
           SP.MaThuongHieu,
           SP.DonGia,
           SP.TenSanPham,
           MAX(HA.HinhAnh) AS HinhAnhDaiien
    FROM SanPham SP
    JOIN MauSac MS ON MS.MaSanPham = SP.MaSanPham
    JOIN HinhAnh HA ON HA.MaMau = MS.MaMau
    WHERE 
        (@TenSanPham IS NULL OR SP.TenSanPham LIKE '%' + @TenSanPham + '%')
        AND
        (@MaSanPham IS NULL OR SP.MaSanPham LIKE '%' + @MaSanPham + '%')
    GROUP BY SP.MaSanPham, SP.MaThuongHieu, SP.TenSanPham, SP.DonGia;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_update_sanpham]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_update_sanpham] (
	@MaSanPham int,
	@MaThuongHieu int,
	@TenSanPham nvarchar(100),
	@DonGia decimal(18, 0),
	@Mau nvarchar(MAX),
	@MoTa nvarchar(MAX)
)
AS
BEGIN
	DECLARE @NextMaSanPham INT;
	SELECT @NextMaSanPham = ISNULL(MAX(MaSanPham), 0) + 1 FROM SanPham;

	UPDATE SanPham
	SET MaThuongHieu = @MaThuongHieu,
	TenSanPham = @TenSanPham,
	DonGia = @DonGia,
	MoTa = @MoTa
	WHERE MaSanPham = @MaSanPham

	IF (@Mau IS NOT NULL)
	BEGIN
		DECLARE @JsonData NVARCHAR(MAX) = @Mau;

		DECLARE @NextMaMau INT;
		SELECT @NextMaMau = ISNULL(MAX(MaMau), 0) + 1 FROM MauSac;

		DECLARE @List NVARCHAR(MAX);
		SELECT @List = JSON_QUERY(@JsonData);

		IF (@List IS NOT NULL)
		BEGIN
			IF CURSOR_STATUS('global', 'Cursor_List') >= 0
			BEGIN
				CLOSE Cursor_List;
				DEALLOCATE Cursor_List;
			END;
			DECLARE Cursor_List CURSOR FOR
			SELECT [value] FROM OPENJSON(@List);
				
			OPEN Cursor_List;

			DECLARE @Id INT, @IdSP INT, @MaMauSac int, @MauSac nvarchar(max), @ArrList1 NVARCHAR(MAX), @ArrList2 NVARCHAR(MAX), @MauSacStatus BIT;

			FETCH NEXT FROM Cursor_List INTO @List;

			WHILE @@FETCH_STATUS = 0
			BEGIN
				-- Extract values from the current JSON object
				SELECT
				@MaMauSac = JSON_VALUE(@List, '$maMauSac'),
				@MauSac = JSON_VALUE(@List, '$.mausac'),
				@ArrList1 =JSON_QUERY(@List, '$.list'),
				@ArrList2 = JSON_QUERY(@List, '$.hinhAnhModels'),
				@MauSacStatus = JSON_VALUE(@List, '$.status');
				IF (@MauSacStatus = 1)
				BEGIN
					-- Insert into the MauSac table
					INSERT INTO MauSac (MaMau, MaSanPham, Mau)
					VALUES (@NextMaMau, @NextMaSanPham,@MauSac);

					INSERT INTO KichThuoc
					(
						MaMau,
						KichThuocsp,
						SoLuong
					)
					SELECT
						@NextMaMau,
						JSON_VALUE(l.value, '$.kichthuoc'),
						JSON_VALUE(l.value, '$.soluong')
					FROM OPENJSON(@ArrList1) AS l;

					INSERT INTO HinhAnh
					(
						MaMau,
						HinhAnh
					)
					SELECT
						@NextMaMau,
						JSON_VALUE(h.value, '$.hinhanh_url')
					FROM OPENJSON(@ArrList2) AS h;

					SET @NextMaMau = @NextMaMau + 1;
				END;
				IF (@MauSacStatus = 2)
				BEGIN
					-- Update into the MauSac table
					UPDATE MauSac SET
					Mau = @MauSac
					WHERE MaMau = @MaMauSac

					-- Insert data to temp tables
					SELECT
						JSON_VALUE(l.value, '$.maKichThuoc') AS maKichThuoc,
						JSON_VALUE(l.value, '$.maMau') AS maMau,
						JSON_VALUE(l.value, '$.kichThuoc') AS kichThuoc,
						JSON_VALUE(l.value, '$.soLuong') AS soLuong,
						JSON_VALUE(l.value, '$.status') AS status 
						INTO #Results
					FROM OPENJSON(@ArrList1) AS l;
					SELECT
						JSON_VALUE(h.value, '$.maHinhAnh') AS maHinhAnh2,
						JSON_VALUE(h.value, '$.maMau') AS maMau,
						JSON_VALUE(h.value, '$.hinhanh_url') AS hinhAnh,
						JSON_VALUE(h.value, '$.status') AS status 
						INTO #Results2
					FROM OPENJSON(@ArrList2) AS h;

					-- Insert data to table with STATUS = 1;
					INSERT INTO KichThuoc
					(
						MaMau,
						KichThuocsp,
						SoLuong
					)
					SELECT
@MaMauSac,
						#Results.kichThuoc,
						#Results.soLuong
					FROM  #Results
					WHERE #Results.status = '1'

					INSERT INTO HinhAnh
					(
						MaMau,
						HinhAnh
					)
					SELECT
						@MaMauSac,
						#Results2.hinhAnh
					FROM  #Results2
					WHERE #Results2.status = '1'

					-- Update data to table with STATUS = 2
					UPDATE KichThuoc 
					SET
						MaMau = #Results.maMau,
						KichThuocsp = #Results.kichThuoc,
						SoLuong = #Results.soLuong
					FROM #Results 
					WHERE MaKT = #Results.maKichThuoc AND #Results.status = '2';

					UPDATE HinhAnh 
					SET
						MaMau = #Results2.maMau,
						HinhAnh = #Results2.hinhAnh
					FROM #Results2
					WHERE MaHinhAnh = #Results2.maHinhAnh2 AND #Results2.status = '2';

					-- Delete data to table with STATUS = 3
					DELETE kt
					FROM KichThuoc kt
					INNER JOIN #Results r
						ON kt.MaKT = r.maKichThuoc
					WHERE R.status = '3';

					DELETE ha
					FROM HinhAnh ha
					INNER JOIN #Results2 r
						ON ha.MaHinhAnh = r.maHinhAnh2
					WHERE R.status = '3';

					DROP TABLE #Results;
					DROP TABLE #Results2;

					--SET @NextMaMau = @NextMaMau + 1;
				END;
				IF (@MauSacStatus = 3)
				BEGIN
					DELETE FROM KichThuoc WHERE MaMau = @MaMauSac
					DELETE FROM HinhAnh WHERE MaMau = @MaMauSac
					DELETE FROM MauSac WHERE MaMau = @MaMauSac
				END
				FETCH NEXT FROM Cursor_List INTO @List;
			END;
			CLOSE Cursor_List;
			DEALLOCATE Cursor_List;
		END;
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_update_sanpham11]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_update_sanpham11] (
	@MaSanPham int,
	@MaThuongHieu int,
	@TenSanPham nvarchar(100),
	@DonGia decimal(18, 0),
	@Mau nvarchar(MAX),
	@MoTa nvarchar(MAX)
)
AS
BEGIN

	UPDATE SanPham
	SET MaThuongHieu = @MaThuongHieu,
	TenSanPham = @TenSanPham,
	DonGia = @DonGia,
	MoTa = @MoTa
	WHERE MaSanPham = @MaSanPham

	IF (@Mau IS NOT NULL)
	BEGIN
		DECLARE @JsonData NVARCHAR(MAX) = @Mau;

		DECLARE @NextMaMau INT;
		SELECT @NextMaMau = ISNULL(MAX(MaMau), 0) + 1 FROM MauSac;

		DECLARE @List NVARCHAR(MAX);
		SELECT @List = JSON_QUERY(@JsonData);

		IF (@List IS NOT NULL)
		BEGIN
			IF CURSOR_STATUS('global', 'Cursor_List') >= 0
			BEGIN
				CLOSE Cursor_List;
				DEALLOCATE Cursor_List;
			END;
			DECLARE Cursor_List CURSOR FOR
			SELECT [value] FROM OPENJSON(@List);
				
			OPEN Cursor_List;

			DECLARE @Id INT, @IdSP INT, @MaMauSac int, @MauSac nvarchar(max), @ArrList1 NVARCHAR(MAX), @ArrList2 NVARCHAR(MAX), @MauSacStatus int;

			FETCH NEXT FROM Cursor_List INTO @List;

			WHILE @@FETCH_STATUS = 0
			BEGIN
				-- Extract values from the current JSON object
				SELECT
				@MaMauSac = JSON_VALUE(@List, '$maMauSac'),
				@MauSac = JSON_VALUE(@List, '$.mausac'),
				@ArrList1 =JSON_QUERY(@List, '$.list'),
				@ArrList2 = JSON_QUERY(@List, '$.hinhAnhModels'),
				@MauSacStatus = JSON_VALUE(@List, '$.status');
				IF (@MauSacStatus = 1)
				BEGIN
					-- Insert into the MauSac table
					INSERT INTO MauSac (MaMau, MaSanPham, Mau)
					VALUES (@NextMaMau, @MaSanPham,@MauSac);

					INSERT INTO KichThuoc
					(
						MaMau,
						KichThuocsp,
						SoLuong
					)
					SELECT
						@NextMaMau,
						JSON_VALUE(l.value, '$.kichthuoc'),
						JSON_VALUE(l.value, '$.soluong')
					FROM OPENJSON(@ArrList1) AS l;

					INSERT INTO HinhAnh
					(
						MaMau,
						HinhAnh
					)
					SELECT
						@NextMaMau,
						JSON_VALUE(h.value, '$.hinhanh_url')
					FROM OPENJSON(@ArrList2) AS h;

					SET @NextMaMau = @NextMaMau + 1;
				END;
				IF (@MauSacStatus = 2)
				BEGIN
					-- Update into the MauSac table
					UPDATE MauSac SET
					Mau = @MauSac
					WHERE MaMau = @MaMauSac

					-- Insert data to temp tables
					SELECT
						JSON_VALUE(l.value, '$.id') AS maKichThuoc,
						JSON_VALUE(l.value, '$.idmau') AS maMau,
						JSON_VALUE(l.value, '$.kichThuoc') AS kichThuoc,
						JSON_VALUE(l.value, '$.soluong') AS soLuong,
						JSON_VALUE(l.value, '$.status') AS status 
						INTO #Results
					FROM OPENJSON(@ArrList1) AS l;
					SELECT
						JSON_VALUE(h.value, '$.id') AS maHinhAnh2,
						JSON_VALUE(h.value, '$.idmau') AS maMau,
						JSON_VALUE(h.value, '$.hinhanh_url') AS hinhAnh,
						JSON_VALUE(h.value, '$.status') AS status 
						INTO #Results2
					FROM OPENJSON(@ArrList2) AS h;

					-- Insert data to table with STATUS = 1;
					INSERT INTO KichThuoc
					(
						MaMau,
						KichThuocsp,
						SoLuong
					)
					SELECT
@MaMauSac,
						#Results.kichThuoc,
						#Results.soLuong
					FROM  #Results
					WHERE #Results.status = '1'

					INSERT INTO HinhAnh
					(
						MaMau,
						HinhAnh
					)
					SELECT
						@MaMauSac,
						#Results2.hinhAnh
					FROM  #Results2
					WHERE #Results2.status = '1'

					-- Update data to table with STATUS = 2
					UPDATE KichThuoc 
					SET
						MaMau = #Results.maMau,
						KichThuocsp = #Results.kichThuoc,
						SoLuong = #Results.soLuong
					FROM #Results 
					WHERE MaKT = #Results.maKichThuoc AND #Results.status = '2';

					UPDATE HinhAnh 
					SET
						MaMau = #Results2.maMau,
						HinhAnh = #Results2.hinhAnh
					FROM #Results2
					WHERE MaHinhAnh = #Results2.maHinhAnh2 AND #Results2.status = '2';

					-- Delete data to table with STATUS = 3
					DELETE kt
					FROM KichThuoc kt
					INNER JOIN #Results r
						ON kt.MaKT = r.maKichThuoc
					WHERE R.status = '3';

					DELETE ha
					FROM HinhAnh ha
					INNER JOIN #Results2 r
						ON ha.MaHinhAnh = r.maHinhAnh2
					WHERE R.status = '3';

					DROP TABLE #Results;
					DROP TABLE #Results2;

					--SET @NextMaMau = @NextMaMau + 1;
				END;
				IF (@MauSacStatus = 3)
				BEGIN
					DELETE FROM KichThuoc WHERE MaMau = @MaMauSac
					DELETE FROM HinhAnh WHERE MaMau = @MaMauSac
					DELETE FROM MauSac WHERE MaMau = @MaMauSac
				END
				FETCH NEXT FROM Cursor_List INTO @List;
			END;
			CLOSE Cursor_List;
			DEALLOCATE Cursor_List;
		END;
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_updatesp]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_updatesp]
(
    @MaSanPham      INT,
    @MaThuongHieu   INT,
    @TenSanPham     NVARCHAR(250),
    @MoTa           NVARCHAR(250),
    @HinhDaiDien    NVARCHAR(250),
    @Mau            NVARCHAR(MAX),
    @giaBan         DECIMAL(18, 0)
)
as
begin
         UPDATE SanPham
            SET
                MaThuongHieu = @MaThuongHieu,
                TenSanPham = @TenSanPham,
                MoTa = @MoTa,
                DonGia = @giaBan
            WHERE MaSanPham = @MaSanPham;
        IF (@Mau IS NOT NULL)
        BEGIN
		UPDATE MauSac
            SET
				MaSanPham= JSON_VALUE(m.value, '$.idsp'),
                Mau = JSON_VALUE(m.value, '$.mausac')
            FROM OPENJSON(@Mau) AS m
            WHERE MauSac.MaMau = JSON_VALUE(m.value, '$.id')
			  
			 DECLARE @List NVARCHAR(MAX);
            SELECT @List = JSON_QUERY(m.value, '$.list') FROM OPENJSON(@Mau) AS m;
            IF (@List IS NOT NULL)
            BEGIN    
				UPDATE KichThuoc set
					MaMau=JSON_VALUE(l.value, '$.idmau'),
					KichThuocsp= JSON_VALUE(l.value, '$.kichthuoc'),
					SoLuong=JSON_VALUE(l.value, '$.soluong')
				from openjson(@list)as l
				where MaKT=JSON_VALUE(l.value, '$.id')
            
               
            END;

            DECLARE @HinhAnhModels NVARCHAR(MAX);
            SELECT @HinhAnhModels = JSON_QUERY(m.value, '$.hinhAnhModels') FROM OPENJSON(@Mau) AS m;

            IF (@HinhAnhModels IS NOT NULL)
            BEGIN
				update HinhAnh set
				HinhAnh=JSON_VALUE(h.value, '$.hinhanh_url')
				FROM OPENJSON(@HinhAnhModels) AS h
				where MaHinhAnh=JSON_VALUE(h.value, '$.id')
            END;   
            
        END; 


end
GO
/****** Object:  StoredProcedure [dbo].[sp_updatesp11]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_updatesp11] (@MaSanPham int,
	@MaThuongHieu int,
	@TenSanPham nvarchar(100),
	@DonGia decimal(18, 0),
	@Mau nvarchar(MAX),
	@MoTa nvarchar(MAX))
as
begin
	UPDATE SanPham
	SET MaThuongHieu = @MaThuongHieu,
	TenSanPham = @TenSanPham,
	DonGia = @DonGia,
	MoTa = @MoTa
	WHERE MaSanPham = @MaSanPham
	declare @Mau2 nvarchar(max)=JSON_QUERY(@Mau)
	if(@Mau2 is not null)
	begin
	DECLARE @Id INT, @IdSP INT, @MauSac nvarchar(max), @ArrList1 NVARCHAR(MAX), @ArrList2 NVARCHAR(MAX);
	SELECT
            @ID = JSON_VALUE(@Mau, '$[0].id'),
            @IdSP = JSON_VALUE(@Mau, '$[0].idsp'),
            @MauSac = JSON_VALUE(@Mau, '$[0].mausac'),
            @ArrList1 = JSON_QUERY(@Mau, '$[0].list'),
            @ArrList2 = JSON_QUERY(@Mau, '$[0].hinhAnhModels');
		UPDATE MauSac
            SET
				MaSanPham= @IdSP,
                Mau = @MauSac
            WHERE MaMau = @Id

		if(@ArrList1 is not null)
		begin
			UPDATE KichThuoc set
					MaMau=JSON_VALUE(l.value, '$.idmau'),
					KichThuocsp= JSON_VALUE(l.value, '$.kichthuoc'),
					SoLuong=JSON_VALUE(l.value, '$.soluong')
				from openjson(@ArrList1)as l
				where MaKT=JSON_VALUE(l.value, '$.id')
		end
		if(@ArrList2 is not null)
		begin
			update HinhAnh set
				HinhAnh=JSON_VALUE(h.value, '$.hinhanh_url')
				FROM OPENJSON(@ArrList2) AS h
				where MaHinhAnh=JSON_VALUE(h.value, '$.id')
		end

	end
end
GO
/****** Object:  StoredProcedure [dbo].[thk_doanhthu_theothang_namnay]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[thk_doanhthu_theothang_namnay]
as
begin
	select MONTH(dh.NgayTao) AS Month, SUM(ct.DonGia * ct.SoLuong) as DoanhThu
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	where year(dh.NgayTao) = year(getdate())
	and dh.DuyetDon=1
	group by MONTH(dh.NgayTao)
end
GO
/****** Object:  StoredProcedure [dbo].[tk_ctdoanhthu_bk]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_ctdoanhthu_bk] (@ngayMin date,@ngayMax date)
as
begin
	select ct.MaSanPham,sp.TenSanPham,sum(ct.SoLuong) as SoLuongBan,ct.DonGia, sum(ct.SoLuong)*ct.DonGia as Tong
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	join SanPham sp on sp.MaSanPham=ct.MaSanPham
	where dh.NgayTao between @ngayMin and @ngaymax and dh.DuyetDon=1
	group by ct.MaSanPham,sp.TenSanPham,ct.DonGia
end
GO
/****** Object:  StoredProcedure [dbo].[tk_ctdoanhthu_hom_nay]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_ctdoanhthu_hom_nay]
as
begin
	select ct.MaSanPham,sp.TenSanPham,sum(ct.SoLuong) as SoLuongBan,ct.DonGia, sum(ct.SoLuong)*ct.DonGia as Tong
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	join SanPham sp on sp.MaSanPham=ct.MaSanPham
	where  convert(date, dh.NgayTao)=convert(date, getDate()) and dh.DuyetDon=1
	group by ct.MaSanPham,sp.TenSanPham,ct.DonGia
end
GO
/****** Object:  StoredProcedure [dbo].[tk_ctdoanhthu_Nam_nay]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_ctdoanhthu_Nam_nay]
as
begin
	select ct.MaSanPham,sp.TenSanPham,sum(ct.SoLuong) as SoLuongBan,ct.DonGia, sum(ct.SoLuong)*ct.DonGia as Tong
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	join SanPham sp on sp.MaSanPham=ct.MaSanPham
	where year(dh.NgayTao) = year(getdate()) and dh.DuyetDon=1
	group by ct.MaSanPham,sp.TenSanPham,ct.DonGia
end
GO
/****** Object:  StoredProcedure [dbo].[tk_ctdoanhthu_thang_nay]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_ctdoanhthu_thang_nay]
as
begin
	select ct.MaSanPham,sp.TenSanPham,sum(ct.SoLuong) as SoLuongBan,ct.DonGia, sum(ct.SoLuong)*ct.DonGia as Tong
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	join SanPham sp on sp.MaSanPham=ct.MaSanPham
	where year(dh.NgayTao) = year(getdate())
	and month(dh.NgayTao) = month(getdate()) and dh.DuyetDon=1
	group by ct.MaSanPham,sp.TenSanPham,ct.DonGia
end
GO
/****** Object:  StoredProcedure [dbo].[tk_doanhthu_bk]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_doanhthu_bk] (@ngayMin date, @ngaymax date)
as
begin
	select SUM(ct.DonGia * ct.SoLuong) as DoanhThu
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	where dh.NgayTao between @ngayMin and @ngaymax  and dh.DuyetDon=1
end
GO
/****** Object:  StoredProcedure [dbo].[tk_doanhthu_homnay]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_doanhthu_homnay]
as
begin
	select sum(ct.DonGia * ct.SoLuong) as DoanhThu
	from DonHang dh join ChiTietDonHang ct on ct.MaDonHang=dh.MaDonHang 
	where convert(date, dh.NgayTao)=convert(date, getDate()) and dh.DuyetDon=1
end
GO
/****** Object:  StoredProcedure [dbo].[tk_doanhthu_namnay]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_doanhthu_namnay]
as
begin
	select SUM(ct.DonGia * ct.SoLuong) as DoanhThu
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	where year(dh.NgayTao) = year(getdate()) and dh.DuyetDon=1
end
GO
/****** Object:  StoredProcedure [dbo].[tk_doanhthu_thangnay]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_doanhthu_thangnay]
as
begin
	select SUM(ct.DonGia * ct.SoLuong) as DoanhThu
	from DonHang dh
	join ChiTietDonHang ct ON ct.MaDonHang = dh.MaDonHang
	where year(dh.NgayTao) = year(getdate())
	and month(dh.NgayTao) = month(getdate()) and dh.DuyetDon=1;
end
GO
/****** Object:  StoredProcedure [dbo].[tk_hoadonnhap]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[tk_hoadonnhap] (@ngayMin date, @ngaymax date)
as
begin
	select SUM(ct.DonGia * ct.SoLuong) as TongTien
	from DonHangNhap dh
	join ChiTietDonHangNhap ct ON ct.MaDonHang = dh.MaDonHang
	where dh.NgayTao between @ngayMin and @ngaymax 
end
GO
/****** Object:  StoredProcedure [dbo].[tk_sanphambanchay_tg_bk]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_sanphambanchay_tg_bk] (@top int, @ngaymin date, @ngaymax date)
as
begin
	select top(@top) WITH TIES sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa, sum(ct.SoLuong) as SoLuongTon 
		from DonHang dh 
		join ChiTietDonHang ct on dh.MaDonHang=ct.MaDonHang 
		join SanPham sp on ct.MaSanPham=sp.MaSanPham 
		where dh.NgayTao between @ngayMin and @ngaymax 
		group by sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa
		order by sum(ct.SoLuong) desc
end
GO
/****** Object:  StoredProcedure [dbo].[tk_sanphambanchay_thangnay]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_sanphambanchay_thangnay] (@top int)
as
begin
	select top(@top) WITH TIES sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa, sum(ct.SoLuong) as SoLuongTon 
		from DonHang dh 
		join ChiTietDonHang ct on dh.MaDonHang=ct.MaDonHang 
		join SanPham sp on ct.MaSanPham=sp.MaSanPham 
		where year(dh.NgayTao) = year(getdate()) and month(dh.NgayTao) = month(getdate())
		group by sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa
		order by sum(ct.SoLuong) desc
end
GO
/****** Object:  StoredProcedure [dbo].[tk_sanphambanchay_today]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tk_sanphambanchay_today] (@top int)
as
begin
	select top(@top) WITH TIES sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa, sum(ct.SoLuong) as SoLuongTon 
		from DonHang dh 
		join ChiTietDonHang ct on dh.MaDonHang=ct.MaDonHang 
		join SanPham sp on ct.MaSanPham=sp.MaSanPham 
		where convert(date, dh.NgayTao)=convert(date, getDate())
		group by sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa
		order by sum(ct.SoLuong) desc
end
GO
/****** Object:  StoredProcedure [dbo].[tk_spSapHet]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- hiển thị sắp hết
CREATE proc [dbo].[tk_spSapHet] (@topsp int, @soluongmin int)
as
begin
	select top (@topsp) sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sum(kt.SoLuong) as SoLuongTon,sp.MoTa from SanPham sp join MauSac ms on ms.MaSanPham=sp.MaSanPham
									join KichThuoc kt on kt.MaMau=ms.MaMau
									group by sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa
									having sum(kt.SoLuong)<=@soluongmin

end
GO
/****** Object:  StoredProcedure [dbo].[tk_spTon]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[tk_spTon] (@topsp int)
as
begin
	select top (@topsp) sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sum(kt.SoLuong) as SoLuongTon,sp.MoTa from SanPham sp join MauSac ms on ms.MaSanPham=sp.MaSanPham
									join KichThuoc kt on kt.MaMau=ms.MaMau
									group by sp.MaSanPham,sp.TenSanPham,sp.MaThuongHieu,sp.MoTa
									order by SoLuongTon desc

end
GO
/****** Object:  StoredProcedure [dbo].[XacNhan_GuiHang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XacNhan_GuiHang] @id int
as
begin
	SET NOCOUNT ON;
	declare @kq NVARCHAR(MAX);
	IF EXISTS (SELECT 1 FROM DonHang WHERE MaDonHang = @id AND DuyetDon = 1)
    BEGIN
		update DonHang set NgayGui=getdate() where MaDonHang=@id and DuyetDon=1;
		SET @kq = N'Cập nhật thành công';
		end
	else
	begin
			set @kq=N'Bạn chưa thể xác nhận đơn này';

	end
	select @kq from DonHang where MaDonHang = @id AND DuyetDon = 1
end
GO
/****** Object:  StoredProcedure [dbo].[XoaDonHang]    Script Date: 1/13/2024 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XoaDonHang] (@id int)
as
begin
UPDATE KichThuoc
	SET SoLuong = KichThuoc.SoLuong + ChiTietDonHang.SoLuong
	FROM DonHang dh inner join ChiTietDonHang on dh.MaDonHang=ChiTietDonHang.MaDonHang
	INNER JOIN KichThuoc ON KichThuoc.MaMau = ChiTietDonHang.MaMau and KichThuoc.KichThuocsp=ChiTietDonHang.KichThuoc
	WHERE ChiTietDonHang.MaDonHang = @id and DuyetDon=0;
	declare @MaKH int;
	select @MaKH=MaKhachHang from DonHang where MaDonHang=@id and DonHang.NgayGui is null and DuyetDon=0;
	delete KhachHang where MaKhachHang=@MaKH
	select MaDonHang,NgayTao,DuyetDon,NgayGui,NgayNhan from DonHang where MaDonHang = @id


end
GO
