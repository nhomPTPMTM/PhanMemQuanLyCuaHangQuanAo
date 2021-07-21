CREATE DATABASE [dbQLShopQuanAo]
GO
USE [dbQLShopQuanAo]
GO
/****** Object:  Table [dbo].[BangPhanCong]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangPhanCong](
	[MaPhanCong] [varchar](50) NOT NULL,
	[NgayPhanCong] [date] NULL,
	[MaNhanVien] [varchar](50) NULL,
	[TrangThai] [bit] NULL,
	[MaCaTruc] [varchar](50) NULL,
	[MaPhanQuyen] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhanCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BangPhanQuyen]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangPhanQuyen](
	[maPhanQuyen] [varchar](50) NOT NULL,
	[TenPhanQuyen] [nvarchar](max) NULL,
	[SuDung] [bit] NULL,
	[NgayTao] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhanQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BieuDoThongKe]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BieuDoThongKe](
	[MaBieuDo] [varchar](50) NOT NULL,
	[TenBieuDo] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBieuDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CaTruc]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CaTruc](
	[MaCaTruc] [varchar](50) NOT NULL,
	[ThoiGianBD] [time](7) NULL,
	[ThoiGianKT] [time](7) NULL,
	[ChuThich] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCaTruc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDonBanHang]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietDonBanHang](
	[MaDonHang] [varchar](50) NOT NULL,
	[MaSanPham] [varchar](50) NOT NULL,
	[Size] [varchar](20) NULL,
	[MauSac] [nvarchar](20) NULL,
	[SoLuongMua] [int] NULL,
	[DonGiaBan] [float] NULL,
 CONSTRAINT [PK_ChiTietDonBanHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDonBaoHanh]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietDonBaoHanh](
	[MaDonBaoHanh] [varchar](50) NOT NULL,
	[MaSanPham] [varchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[VanDeSanPham] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonBaoHanh] ASC,
	[MaSanPham] ASC,
	[SoLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDonNhapHang]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietDonNhapHang](
	[MaDonNhapHang] [varchar](50) NOT NULL,
	[MaSanPham] [varchar](50) NOT NULL,
	[SoLuongDat] [int] NOT NULL,
	[DonGiaDat] [float] NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonNhapHang] ASC,
	[MaSanPham] ASC,
	[SoLuongDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietPhanQuyen]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietPhanQuyen](
	[MaPhanQuyen] [varchar](50) NOT NULL,
	[MaManHinh] [varchar](50) NOT NULL,
	[CoQuyen] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhanQuyen] ASC,
	[MaManHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhMucHinh]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMucHinh](
	[TenHinh] [nvarchar](200) NOT NULL,
	[MaSanPham] [varchar](50) NOT NULL,
 CONSTRAINT [pk_DMH] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[TenHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMucSanPham](
	[MaDanhMuc] [varchar](50) NOT NULL,
	[TenDanhMuc] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DMManHinh]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DMManHinh](
	[MaManHinh] [varchar](50) NOT NULL,
	[TenManHinh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaManHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[MaDoanhThu] [varchar](50) NOT NULL,
	[TenDoanhThu] [nvarchar](max) NULL,
	[MaBieuDo] [varchar](50) NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[LoiNhuan] [float] NULL,
	[TongDoanhThu] [float] NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDoanhThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonNhapHang]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonNhapHang](
	[MaDonNhapHang] [varchar](50) NOT NULL,
	[MaNhanVien] [varchar](50) NULL,
	[MaNhaCungCap] [varchar](50) NULL,
	[NgayGui] [date] NULL,
	[TienCoc] [float] NULL,
	[TongTienPhaiTra] [float] NULL,
	[TrangThai] [bit] NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonNhapHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GN]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GN](
	[id] [varchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[Sale Price] [float] NULL,
	[Number] [float] NULL,
	[IDCaterogy] [varchar](255) NULL,
	[Size] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[Decription] [nvarchar](255) NULL,
	[IDNCC] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[H1]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[H1](
	[IdSanPham] [nvarchar](255) NULL,
	[NoiLuu] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonBanHang]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonBanHang](
	[MaDonHang] [varchar](50) NOT NULL,
	[MaKhachHang] [varchar](50) NULL,
	[MaNhanVien] [varchar](50) NULL,
	[NgayTao] [date] NULL,
	[ThanhTien] [float] NULL,
	[KhuyenMai] [float] NULL,
	[TrangThai] [bit] NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonBaoHanh]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonBaoHanh](
	[MaDonBaoHanh] [varchar](50) NOT NULL,
	[MaKhachHang] [varchar](50) NULL,
	[MaNhanVien] [varchar](50) NULL,
	[NgayNhan] [date] NULL,
	[TinhTrang] [bit] NULL,
	[GhiChu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonBaoHanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [varchar](50) NOT NULL,
	[TenKhachHang] [nvarchar](max) NULL,
	[NgaySinh] [date] NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[GioiTinh] [nvarchar](15) NULL,
	[Email] [varchar](30) NULL,
	[SDT] [varchar](11) NULL,
	[DiaChi] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [varchar](50) NOT NULL,
	[TenLoaiSanPham] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[MaDanhMuc] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [varchar](50) NOT NULL,
	[TenNhaCungCap] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [varchar](11) NULL,
	[Email] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [varchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](max) NULL,
	[NgaySinh] [date] NULL,
	[HinhAnh] [varchar](max) NULL,
	[CMND] [varchar](12) NULL,
	[GioiTinh] [nvarchar](15) NULL,
	[NgayVaoLam] [date] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[Email] [varchar](30) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [varchar](15) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[Luong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [varchar](50) NOT NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[DonGia] [float] NULL,
	[GiaSale] [float] NULL,
	[Size] [varchar](100) NULL,
	[TrangThai] [bit] NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaLoaiSanPham] [varchar](50) NULL,
	[MaNhaCungCap] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoanKhachHang]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoanKhachHang](
	[MaKhachHang] [varchar](50) NULL,
	[TenTaiKhoan] [varchar](30) NOT NULL,
	[MatKhau] [varchar](30) NULL,
	[NgayTao] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoanNhanVien]    Script Date: 7/20/2021 12:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoanNhanVien](
	[MaNhanVien] [varchar](50) NULL,
	[TenTaiKhoan] [varchar](30) NOT NULL,
	[MatKhau] [varchar](30) NULL,
	[NgayTao] [date] NULL,
	[HoatDong] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BangPhanCong] ([MaPhanCong], [NgayPhanCong], [MaNhanVien], [TrangThai], [MaCaTruc], [MaPhanQuyen]) VALUES (N'PC001', CAST(0x69250B00 AS Date), N'NV001', 1, NULL, N'PQ001')
INSERT [dbo].[BangPhanQuyen] ([maPhanQuyen], [TenPhanQuyen], [SuDung], [NgayTao]) VALUES (N'PQ001', N'Thu ngân', 1, CAST(0x61250B00 AS Date))
INSERT [dbo].[ChiTietDonBanHang] ([MaDonHang], [MaSanPham], [Size], [MauSac], [SoLuongMua], [DonGiaBan]) VALUES (N'HD001', N'AHHTK104', NULL, NULL, 2, 340000)
INSERT [dbo].[ChiTietDonBanHang] ([MaDonHang], [MaSanPham], [Size], [MauSac], [SoLuongMua], [DonGiaBan]) VALUES (N'HD003', N'ANHTK104', NULL, NULL, 2, 340000)
INSERT [dbo].[ChiTietDonBanHang] ([MaDonHang], [MaSanPham], [Size], [MauSac], [SoLuongMua], [DonGiaBan]) VALUES (N'HD005', N'AHHTK104', NULL, NULL, 2, 340000)
INSERT [dbo].[ChiTietDonBanHang] ([MaDonHang], [MaSanPham], [Size], [MauSac], [SoLuongMua], [DonGiaBan]) VALUES (N'HD006', N'AHHTK104', NULL, NULL, 5, 340000)
INSERT [dbo].[ChiTietPhanQuyen] ([MaPhanQuyen], [MaManHinh], [CoQuyen]) VALUES (N'PQ001', N'MH001', 1)
INSERT [dbo].[ChiTietPhanQuyen] ([MaPhanQuyen], [MaManHinh], [CoQuyen]) VALUES (N'PQ001', N'MH002', 1)
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'd1.jpg', N'16HM180D')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'd2.jpg', N'16HM180D')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'd3.jpg', N'16HM180D')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'd4.jpg', N'16HM180D')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'd5.jpg', N'16HM180D')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'do1.jpg', N'16HM180DO')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'do2.jpg', N'16HM180DO')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'h1.jpg', N'16HM180H')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'h2.jpg', N'16HM180H')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'h3.jpg', N'16HM180H')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'h4.jpg', N'16HM180H')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'h5.jpg', N'16HM180H')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'n1.jpg', N'16HM180N')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'n2.jpg', N'16HM180N')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N't1.jpg', N'16HM180T')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N't2.jpg', N'16HM180T')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N't3.jpg', N'16HM180T')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'tr1.jpg', N'16HM180tr')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'tr2.jpg', N'16HM180tr')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'tr3.jpg', N'16HM180tr')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'trd1.jpg', N'16HM180TRD')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'trd2.jpg', N'16HM180TRD')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'trs1.jpg', N'16HM180TRS')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'trs2.jpg', N'16HM180TRS')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'trs3.jpg', N'16HM180TRS')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'x1.jpg', N'16HM180X')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'x2.jpg', N'16HM180X')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'x3.jpg', N'16HM180X')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'18EM250-2.jpg', N'18EM250')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'18EM280-2.jpg', N'18EM280')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AHHTK104-2.jpg', N'AHHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AHHTK104-3.jpg', N'AHHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN101-2.jpg', N'AKBCN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN101-3.jpg', N'AKBCN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN101-4.jpg', N'AKBCN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN101-5.jpg', N'AKBCN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN101-6.jpg', N'AKBCN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN101-7.jpg', N'AKBCN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN101-8.jpg', N'AKBCN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN101-9.jpg', N'AKBCN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN102-2.jpg', N'AKBCN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN102-3.jpg', N'AKBCN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN102-4.jpg', N'AKBCN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN102-5.jpg', N'AKBCN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN102-6.jpg', N'AKBCN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN102-7.jpg', N'AKBCN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN104-2.jpg', N'AKBCN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN104-3.jpg', N'AKBCN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN104-4.jpg', N'AKBCN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN104-5.jpg', N'AKBCN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN104-6.jpg', N'AKBCN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN104-7.jpg', N'AKBCN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN105-2.jpg', N'AKBCN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN105-3.jpg', N'AKBCN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN105-4.jpg', N'AKBCN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN105-5.jpg', N'AKBCN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN105-6.jpg', N'AKBCN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN105-7.jpg', N'AKBCN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN105-8.jpg', N'AKBCN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN105-9.jpg', N'AKBCN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN106-2.jpg', N'AKBCN106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN106-3.jpg', N'AKBCN106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN106-4.jpg', N'AKBCN106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN106-5.jpg', N'AKBCN106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN106-6.jpg', N'AKBCN106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN106-7.jpg', N'AKBCN106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKBCN106-8.jpg', N'AKBCN106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-1.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-10.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-11.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-12.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-13.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-2.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-3.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-4.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-5.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-6.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-7.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-8.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AKITK101-9.jpg', N'AKITK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-10.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-11.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-1-1.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-12.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-13.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-14.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-2.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-2-1.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-3.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-3-1.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-4.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-5.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-6.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-7.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-8.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK104-9.jpg', N'ANHTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK108-1.jpg', N'ANHTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK108-2.jpg', N'ANHTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK108-3.jpg', N'ANHTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK108-4.jpg', N'ANHTK108')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK115-1.jpg', N'ANHTK115')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK115-2.jpg', N'ANHTK115')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK115-3.jpg', N'ANHTK115')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK115-4.jpg', N'ANHTK115')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK120-1.jpg', N'ANHTK120')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK120-2.jpg', N'ANHTK120')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK120-3.jpg', N'ANHTK120')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK120-4.jpg', N'ANHTK120')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK120-5.jpg', N'ANHTK120')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK120-6.jpg', N'ANHTK120')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK124-1.jpg', N'ANHTK124')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK124-2.jpg', N'ANHTK124')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK124-3.jpg', N'ANHTK124')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK124-4.jpg', N'ANHTK124')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK124-5.jpg', N'ANHTK124')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK128-1.jpg', N'ANHTK128')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK128-2.jpg', N'ANHTK128')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK128-3.jpg', N'ANHTK128')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK128-4.jpg', N'ANHTK128')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK128-5.jpg', N'ANHTK128')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK130-1.jpg', N'ANHTK130')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK130-2.jpg', N'ANHTK130')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK130-3.jpg', N'ANHTK130')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK130-4.jpg', N'ANHTK130')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ANHTK130-5.jpg', N'ANHTK130')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN002-1.jpg', N'APHCN002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN002-3.jpg', N'APHCN002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN002-4.jpg', N'APHCN002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN003-1.jpg', N'APHCN003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN003-2.jpg', N'APHCN003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN003-3.jpg', N'APHCN003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN003-4.jpg', N'APHCN003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN003-5.jpg', N'APHCN003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN005-2.jpg', N'APHCN005')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN005-3.jpg', N'APHCN005')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN006-3.jpg', N'APHCN006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN007-1.jpg', N'APHCN007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN007-2.jpg', N'APHCN007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN007-3.jpg', N'APHCN007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN008-1.jpg', N'APHCN008')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN008-2.jpg', N'APHCN008')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN008-3.jpg', N'APHCN008')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN008-4.jpg', N'APHCN008')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN011-2.jpg', N'APHCN011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN011-3.jpg', N'APHCN011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHCN011-4.jpg', N'APHCN011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK025-2.jpg', N'APHTK025')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK025-3.jpg', N'APHTK025')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK025-4.jpg', N'APHTK025')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK025-5.jpg', N'APHTK025')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK051-2.jpg', N'APHTK051')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK051-3.jpg', N'APHTK051')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK051-4.jpg', N'APHTK051')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK051-5.jpg', N'APHTK051')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK051-6.jpg', N'APHTK051')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK051-7.jpg', N'APHTK051')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK051-8.jpg', N'APHTK051')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK051-9.jpg', N'APHTK051')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK052-1.jpg', N'APHTK052')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK052-2.jpg', N'APHTK052')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK052-3.jpg', N'APHTK052')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK052-4.jpg', N'APHTK052')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK055-1.jpg', N'APHTK055')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTL055-2.jpg', N'APHTK055')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTL055-3.jpg', N'APHTK055')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK056-1.jpg', N'APHTK056')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK056-2.jpg', N'APHTK056')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK056-3.jpg', N'APHTK056')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK057-1.jpg', N'APHTK057')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK057-2.jpg', N'APHTK057')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-10.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-10-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-11.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-1-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-11-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-12.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-12-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-13.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-13-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-14.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-14-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-15.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-16.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-17.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-18.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-19.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-2.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-20.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-21.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-22.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-2-2.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-3.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-3-2.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-4.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-4-2.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-5.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-5-2.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-6.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-6-1.jpg', N'APHTK201')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-7.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-7-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-8.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-8-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-9.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK201-9-1.jpg', N'APHTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK204.jpg', N'APHTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK204-1.jpg', N'APHTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK204-2.jpg', N'APHTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK204-3.jpg', N'APHTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK204-4.jpg', N'APHTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK204-5.jpg', N'APHTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK205-1.jpg', N'APHTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK205-2.jpg', N'APHTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK205-5.jpg', N'APHTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK206.jpg', N'APHTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK206-2.jpg', N'APHTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK206-3.jpg', N'APHTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK207.jpg', N'APHTK207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK207-2.jpg', N'APHTK207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK208.jpg', N'APHTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK208-2.jpg', N'APHTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK208-3.jpg', N'APHTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK209.jpg', N'APHTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK209-1.jpg', N'APHTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK209-1-1.jpg', N'APHTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK209-2.jpg', N'APHTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK209-2-1.jpg', N'APHTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK209-3.jpg', N'APHTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK209-3-1.jpg', N'APHTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK213.jpg', N'APHTK213')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK213-1.jpg', N'APHTK213')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK213-1-1.jpg', N'APHTK213')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK213-2.jpg', N'APHTK213')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK213-2-1.jpg', N'APHTK213')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK213-3.jpg', N'APHTK213')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK213-4.jpg', N'APHTK213')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK214.jpg', N'APHTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK214-1.jpg', N'APHTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK214-2.jpg', N'APHTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK214-2-1.jpg', N'APHTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK214-3.jpg', N'APHTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK214-3-1.jpg', N'APHTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK214-4.jpg', N'APHTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK215.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK215-2.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK215-3.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215-1.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215-2.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215-3.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215-4.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215-5.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215-6.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215-7.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215-8.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK215-9.jpg', N'APHTK215')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-1.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-10.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-11.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-1-1.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-12.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-13.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-2.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-2-1.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-3.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-3-1.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-4.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-5.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-6.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-7.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-8.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK216-9.jpg', N'APHTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-1.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-2.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-2-1.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-3.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-3-1.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-4.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-4-1.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-5.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-6.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-7.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK217-8.jpg', N'APHTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-10-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-1-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-2.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-2-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-3.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-3-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-4.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-4-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-5.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-5-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-6.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-6-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-7.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-7-1.jpg', N'APHTK218')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-8.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-8-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-9.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK218-9-1.jpg', N'APHTK218')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-1-1.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-1-2.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-2-1.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-2-2.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-3-1.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-3-2.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-4-1.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-4-2.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-5-1.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-5-2.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-6-1.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-7-1.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-8-1.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK220-9-1.jpg', N'APHTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-1.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-1-1.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-2.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-2-1.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-3.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-3-1.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-4.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-4-1.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-5.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-5-1.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK221-6.jpg', N'APHTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-1.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-10.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-11.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-1-1.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-12.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-2.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-2-1.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-3.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-3-1.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-4.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-4-1.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-5.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-6.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-7.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-8.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK222-9.jpg', N'APHTK222')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK223-1.jpg', N'APHTK223')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK223-10.jpg', N'APHTK223')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK223-2.jpg', N'APHTK223')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK223-3.jpg', N'APHTK223')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK223-4.jpg', N'APHTK223')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK223-6.jpg', N'APHTK223')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK223-7.jpg', N'APHTK223')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK223-8.jpg', N'APHTK223')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK223-9.jpg', N'APHTK223')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK225-1.jpg', N'APHTK225')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK225-2.jpg', N'APHTK225')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK225-3.jpg', N'APHTK225')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK225-4.jpg', N'APHTK225')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK225-5.jpg', N'APHTK225')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK225-6.jpg', N'APHTK225')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK225-7.jpg', N'APHTK225')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK225-8.jpg', N'APHTK225')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK227-1.jpg', N'APHTK227')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK227-2.jpg', N'APHTK227')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK227-3.jpg', N'APHTK227')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK228-1.jpg', N'APHTK228')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK228-2.jpg', N'APHTK228')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK228-3.jpg', N'APHTK228')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK228-4.jpg', N'APHTK228')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK230-1.jpg', N'APHTK230')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK230-2.jpg', N'APHTK230')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK230-3.jpg', N'APHTK230')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK230-4.jpg', N'APHTK230')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK231-1.jpg', N'APHTK231')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK231-3.jpg', N'APHTK231')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK231-4.jpg', N'APHTK231')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK232-1-1.jpg', N'APHTK232')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK232-2-1.jpg', N'APHTK232')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK232-3-1.jpg', N'APHTK232')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK232-4-1.jpg', N'APHTK232')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK232-5-1.jpg', N'APHTK232')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK232-6.jpg', N'APHTK232')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK232-7.jpg', N'APHTK232')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK232-8.jpg', N'APHTK232')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK232-9.jpg', N'APHTK232')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-1.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-10.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-11.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-12.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-13.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-14.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-15.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-16.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-17.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-18.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-19.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-2.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-3.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-4.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-5.jpg', N'APHTK234')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-6.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-7.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-8.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK234-9.jpg', N'APHTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-10.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-10-1.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-11.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-11-1.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-12-1.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-13-1.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-14-1.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-15.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-16.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-17.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-18.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-19.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-3.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-4.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-5.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-6.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-6-1.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-7.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-7-1.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-8.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-8-1.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-9.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK235-9-1.jpg', N'APHTK235')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-1.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-10.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-11.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-12.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-13.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-14.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-15.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-16.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-2.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-3.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-4.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-5.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-6.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-7.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-8.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK236-9.jpg', N'APHTK236')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK238-1-1.jpg', N'APHTK238')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK238-2-1.jpg', N'APHTK238')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK238-3-1.jpg', N'APHTK238')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK238-4.jpg', N'APHTK238')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK238-5.jpg', N'APHTK238')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK238-6.jpg', N'APHTK238')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK238-7.jpg', N'APHTK238')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK238-8.jpg', N'APHTK238')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK238-9.jpg', N'APHTK238')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK240-1-2.jpg', N'APHTK240')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK240-2-2.jpg', N'APHTK240')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK240-3-2.jpg', N'APHTK240')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK240-4.jpg', N'APHTK240')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK240-5.jpg', N'APHTK240')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK240-6.jpg', N'APHTK240')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK240-7.jpg', N'APHTK240')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK240-8.jpg', N'APHTK240')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK240-9.jpg', N'APHTK240')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK245-1.jpg', N'APHTK245')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK245-3.jpg', N'APHTK245')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK245-4.jpg', N'APHTK245')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK250-1.jpg', N'APHTK250')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK250-2.jpg', N'APHTK250')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK250-3.jpg', N'APHTK250')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK250-4.jpg', N'APHTK250')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK260-1.jpg', N'APHTK260')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK260-2.jpg', N'APHTK260')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APHTK260-3.jpg', N'APHTK260')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APLTK023-1.jpg', N'APLTK023')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APLTK023-2.jpg', N'APLTK023')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-1.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-1-1.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-2.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-2-1.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-2-2.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-3.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-3-1.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-3-2.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-4.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-8.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK210-9.jpg', N'APMTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-1.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-1-2.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-2.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-2-2.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-3.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-3-2.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-4.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-4-1.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-5.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-5-1.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-6.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-6-1.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-7.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-7-1.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-8.jpg', N'APMTK211')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-8-1.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK211-9-1.jpg', N'APMTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-1.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-10.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-11.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-1-1.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-12.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-1-2.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-2.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-2-1.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-2-2.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-3.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-3-1.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-3-2.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-4.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-4-1.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-4-2.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-5.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-6.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-7.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-8.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK212-9.jpg', N'APMTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK254-1.jpg', N'APMTK254')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK254-2.jpg', N'APMTK254')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK254-3.jpg', N'APMTK254')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APMTK254-4.jpg', N'APMTK254')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK202.jpg', N'APTTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK202-2.jpg', N'APTTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK202-3.jpg', N'APTTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK202-4.jpg', N'APTTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK203.jpg', N'APTTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'APTTK203-2.jpg', N'APTTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK101-1.jpg', N'ATDTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK101-3.jpg', N'ATDTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-1.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-10.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-11.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-1-1.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-12.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-13.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-14.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-15.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-16.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-17.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-18.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-2.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-2-1.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-3.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-4.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-5.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-6.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-7.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-8.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK102-9.jpg', N'ATDTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK103.jpg', N'ATDTK103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'ATDTK103-2.jpg', N'ATDTK103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'BONTK104-1.jpg', N'BONTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'BONTK104-2.jpg', N'BONTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'BONTK104-3.jpg', N'BONTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'BONTK104-4.jpg', N'BONTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'BONTK104-5.jpg', N'BONTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1568-2.jpg', N'C1568')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1568-3.jpg', N'C1568')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1568-4.jpg', N'C1568')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1568-5.jpg', N'C1568')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1568-6.jpg', N'C1568')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1568-7.jpg', N'C1568')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1568-8.jpg', N'C1568')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1568-9.jpg', N'C1568')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1569-2.jpg', N'C1569')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1569-3.jpg', N'C1569')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1569-4.jpg', N'C1569')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1569-5.jpg', N'C1569')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1569-6.jpg', N'C1569')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1573-2.jpg', N'C1573')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1573-3.jpg', N'C1573')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1573-4.jpg', N'C1573')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1573-5.jpg', N'C1573')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1573-6.jpg', N'C1573')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1752-2.jpg', N'C1752')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1752-3.jpg', N'C1752')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1764-2.jpg', N'C1752')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C1764-3.jpg', N'C1752')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C9021B-2.jpg', N'C9021B')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C9021B-3.jpg', N'C9021B')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C9024-2.jpg', N'C9024')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'C9024-3.jpg', N'C9024')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIA046001-2.jpg', N'GIA046001')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIA675001-2.jpg', N'GIA675001')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIA675001-3.jpg', N'GIA675001')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN101.jpg', N'GIACN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN101-1.jpg', N'GIACN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN101-2.jpg', N'GIACN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN101-3.jpg', N'GIACN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN101-5.jpg', N'GIACN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN101-6.jpg', N'GIACN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN101-7.jpg', N'GIACN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN101-8.jpg', N'GIACN101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN102-2.jpg', N'GIACN102')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN102-3.jpg', N'GIACN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN102-4.jpg', N'GIACN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN102-5.jpg', N'GIACN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN102-6.jpg', N'GIACN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN102-7.jpg', N'GIACN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN102-8.jpg', N'GIACN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN102-9.jpg', N'GIACN102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN103-10.jpg', N'GIACN103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN103-2.jpg', N'GIACN103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN103-3.jpg', N'GIACN103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN103-4.jpg', N'GIACN103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN103-5.jpg', N'GIACN103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN103-6.jpg', N'GIACN103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN103-7.jpg', N'GIACN103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN103-8.jpg', N'GIACN103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN103-9.jpg', N'GIACN103')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN104-1.jpg', N'GIACN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN104-2.jpg', N'GIACN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN104-3.jpg', N'GIACN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN104-4.jpg', N'GIACN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN104-5.jpg', N'GIACN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN104-6.jpg', N'GIACN104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN105-2.jpg', N'GIACN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN105-3.jpg', N'GIACN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN105-4.jpg', N'GIACN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN105-5.jpg', N'GIACN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN105-6.jpg', N'GIACN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN105-7.jpg', N'GIACN105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-1.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-10.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-2.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-3.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-4.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-5.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-6.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-7.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-8.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN107-9.jpg', N'GIACN107')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN109-1.jpg', N'GIACN109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN109-2.jpg', N'GIACN109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN109-3.jpg', N'GIACN109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN109-4.jpg', N'GIACN109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN111-2.jpg', N'GIACN111')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN111-3.jpg', N'GIACN111')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN111-4.jpg', N'GIACN111')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN111-5.jpg', N'GIACN111')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-1.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-10.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-11.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-2.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-3.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-4.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-5.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-6.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-7.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-8.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN112-9.jpg', N'GIACN112')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN113-1.jpg', N'GIACN113')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN113-2.jpg', N'GIACN113')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN113-3.jpg', N'GIACN113')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN113-4.jpg', N'GIACN113')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN113-5.jpg', N'GIACN113')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN114-1.jpg', N'GIACN114')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN114-2.jpg', N'GIACN114')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN114-3.jpg', N'GIACN114')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN115-1.jpg', N'GIACN115')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN115-2.jpg', N'GIACN115')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN115-3.jpg', N'GIACN115')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN115-4.jpg', N'GIACN115')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN116.jpg', N'GIACN116')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN118-2.jpg', N'GIACN118')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN118-3.jpg', N'GIACN118')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN118-4.jpg', N'GIACN118')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN118-5.jpg', N'GIACN118')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN137-1.jpg', N'GIACN137')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN137-2.jpg', N'GIACN137')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN137-3.jpg', N'GIACN137')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN137-4.jpg', N'GIACN137')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN137-5.jpg', N'GIACN137')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN137-6.jpg', N'GIACN137')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN137-7.jpg', N'GIACN137')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN137-8.jpg', N'GIACN137')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN201-1.jpg', N'GIACN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN201-2.jpg', N'GIACN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN201-3.jpg', N'GIACN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN201-4.jpg', N'GIACN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN201-5.jpg', N'GIACN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN201-6.jpg', N'GIACN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN201-7.jpg', N'GIACN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN201-8.jpg', N'GIACN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN202-1.jpg', N'GIACN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN202-2.jpg', N'GIACN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN202-3.jpg', N'GIACN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN202-4.jpg', N'GIACN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN202-5.jpg', N'GIACN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN202-6.jpg', N'GIACN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN202-7.jpg', N'GIACN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN202-8.jpg', N'GIACN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN203-1.jpg', N'GIACN203')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN203-2.jpg', N'GIACN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN203-3.jpg', N'GIACN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN203-4.jpg', N'GIACN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN203-5.jpg', N'GIACN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN203-6.jpg', N'GIACN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN203-7.jpg', N'GIACN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN203-8.jpg', N'GIACN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN204.jpg', N'GIACN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN204-1.jpg', N'GIACN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN204-2.jpg', N'GIACN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN204-3.jpg', N'GIACN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN204-4.jpg', N'GIACN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN204-5.jpg', N'GIACN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN204-6.jpg', N'GIACN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN204-7.jpg', N'GIACN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN204-8.jpg', N'GIACN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN205-1.jpg', N'GIACN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN205-2.jpg', N'GIACN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN205-3.jpg', N'GIACN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN205-4.jpg', N'GIACN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN205-5.jpg', N'GIACN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN205-6.jpg', N'GIACN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN205-7.jpg', N'GIACN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN205-8.jpg', N'GIACN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN205-9.jpg', N'GIACN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN206-1.jpg', N'GIACN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN206-2.jpg', N'GIACN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN206-3.jpg', N'GIACN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN206-4.jpg', N'GIACN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN206-5.jpg', N'GIACN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN206-6.jpg', N'GIACN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN206-7.jpg', N'GIACN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN206-8.jpg', N'GIACN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN207-1.jpg', N'GIACN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN207-2.jpg', N'GIACN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN207-3.jpg', N'GIACN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN207-4.jpg', N'GIACN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN207-5.jpg', N'GIACN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN208-1.jpg', N'GIACN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN208-2.jpg', N'GIACN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN208-3.jpg', N'GIACN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN208-4.jpg', N'GIACN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN208-5.jpg', N'GIACN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN208-6.jpg', N'GIACN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN208-7.jpg', N'GIACN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN208-8.jpg', N'GIACN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN209-1.jpg', N'GIACN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN209-2.jpg', N'GIACN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN209-3.jpg', N'GIACN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN209-4.jpg', N'GIACN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN210-1.jpg', N'GIACN210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN210-2.jpg', N'GIACN210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN210-3.jpg', N'GIACN210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN210-4.jpg', N'GIACN210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN211-1.jpg', N'GIACN211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN211-2.jpg', N'GIACN211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN211-3.jpg', N'GIACN211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN211-4.jpg', N'GIACN211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN211-5.jpg', N'GIACN211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN211-6.jpg', N'GIACN211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN211-7.jpg', N'GIACN211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN211-8.jpg', N'GIACN211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN212-1.jpg', N'GIACN212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN212-2.jpg', N'GIACN212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN212-3.jpg', N'GIACN212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN212-4.jpg', N'GIACN212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'GIACN212-5.jpg', N'GIACN212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'J8233-1-1.jpg', N'J8233')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'J8233-2.jpg', N'J8233')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'J8233-2-1.jpg', N'J8233')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'J8233-3.jpg', N'J8233')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'J8233-3-1.jpg', N'J8233')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'J8233-4.jpg', N'J8233')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'JKTTK102-1.jpg', N'JKTTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'JKTTK102-2.jpg', N'JKTTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'JSTTK108-1.jpg', N'JSTTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'JSTTK108-2.jpg', N'JSTTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'JSTTK108-3.jpg', N'JSTTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KIN0075-1-2.jpg', N'KIN0075-1')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'00150-2.jpg', N'KIN150')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KNMTK102-10.jpg', N'KNMTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KNMTK102-2.jpg', N'KNMTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KNMTK102-3.jpg', N'KNMTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KNMTK102-4.jpg', N'KNMTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KNMTK102-5.jpg', N'KNMTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KNMTK102-6.jpg', N'KNMTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KNMTK102-7.jpg', N'KNMTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KNMTK102-8.jpg', N'KNMTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'KNMTK102-9.jpg', N'KNMTK102')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-1.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-10.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-11.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-12.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-13.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-14.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-15.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-16.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-17.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-18.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-19.jpg', N'POMTK201')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-2.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-20.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-21.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-22.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-23.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-24.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-25.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-26.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-27.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-28.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-29.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-3.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-30.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-31.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-32.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-33.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-4.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-5.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-6.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-7.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-8.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK201-9.jpg', N'POMTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-10.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-10-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-11.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-1-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-11-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-12.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-12-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-13.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-14.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-15.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-16.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-17.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-18.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-19.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-2.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-20.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-21.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-2-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-22.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-23.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-24.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-25.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-26.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-27.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-28.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-29.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-3.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-30.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-31.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-3-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-4.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-4-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-5.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-5-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-6.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-6-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-7.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-7-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-8.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-8-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-9.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK202-9-1.jpg', N'POMTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-10.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-10-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-10-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-11.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-1-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-11-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-12.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-1-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-12-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-2-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-2-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-3.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-3-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-3-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-4.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-4-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-4-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-5.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-5-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-5-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-6.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-6-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-6-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-7.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-7-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-7-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-8.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-8-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-9.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-9-1.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POMTK203-9-2.jpg', N'POMTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-1.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-10-2.jpg', N'POTTK214')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-11-1.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-1-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-12-1.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-13.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-2-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-25.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-26.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-27.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-3.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-3-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-4.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-4-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-5.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-5-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-6.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-6-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-7.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-7-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-8.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-8-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-9.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK214-9-2.jpg', N'POTTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-1.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-10-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-11-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-1-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-12-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-13.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-13-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-14.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-14-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-15.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-15-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-16.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-16-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-17.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-18.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-18-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-19.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-20.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-21.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-2-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-3.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-3-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-4.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-4-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-5.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-5-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-6.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-6-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-7.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-7-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-8.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-8-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-9.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'POTTK217-9-2.jpg', N'POTTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QA79-6.jpg', N'QA79-6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK105-1.jpg', N'QACTK105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK105-2.jpg', N'QACTK105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK105-3.jpg', N'QACTK105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK202.jpg', N'QACTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-1.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-10.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-11.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-12.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-13.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-14.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-15.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-16.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-17.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-18.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-19.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-2.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-20.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-21.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-22.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-23.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-24.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-25.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-26.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-27.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-3.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-4.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-4-1.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-5.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-5-1.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-6.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-6-1.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-7.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-8.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QACTK203-9.jpg', N'QACTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'AUTK003.jpg', N'QAUTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK003.jpg', N'QAUTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK007-2.jpg', N'QAUTK007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK007-3.jpg', N'QAUTK007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK007-4.jpg', N'QAUTK007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK007-5.jpg', N'QAUTK007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK009-1.jpg', N'QAUTK009')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK009-2.jpg', N'QAUTK009')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK010-2.jpg', N'QAUTK010')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK010-3.jpg', N'QAUTK010')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK010-4.jpg', N'QAUTK010')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK010-5.jpg', N'QAUTK010')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK010-6.jpg', N'QAUTK010')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK010-7.jpg', N'QAUTK010')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK010-8.jpg', N'QAUTK010')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK012-1.jpg', N'QAUTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK012-2.jpg', N'QAUTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK012-3.jpg', N'QAUTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK016-2.jpg', N'QAUTK016')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK317-1.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK317-1-1.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK317-2.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK317-2-1.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK317-3.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK317-3-1.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK317-4.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK317-1.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK317-2.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK317-3.jpg', N'QAUTK317')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-1.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-10.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-11.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-1-1.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-12.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-2-1.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-3.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-3-1.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-4.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-4-1.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-5.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-6.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-7.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-8.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK320-9.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK320-1.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK320-2.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK320-3.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK320-4.jpg', N'QAUTK320')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-10.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-11.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-12.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-2.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-3.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-4.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-5.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-6.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-7.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-8.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK321-9.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK321-1.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK321-2.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK321-3.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QUATK321-4.jpg', N'QAUTK321')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK355-2.jpg', N'QAUTK355')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QAUTK355-3.jpg', N'QAUTK355')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QBKTK201-1.jpg', N'QBKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QBKTK201-2.jpg', N'QBKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QBKTK201-3.jpg', N'QBKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGGTK104-1.jpg', N'QGGTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGGTK104-2.jpg', N'QGGTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGGTK104-3.jpg', N'QGGTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGKTK101-10.jpg', N'QGKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGKTK101-2.jpg', N'QGKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGKTK101-3.jpg', N'QGKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGKTK101-4.jpg', N'QGKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGKTK101-5.jpg', N'QGKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGKTK101-6.jpg', N'QGKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGKTK101-7.jpg', N'QGKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGKTK101-8.jpg', N'QGKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGKTK101-9.jpg', N'QGKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGNTK105.jpg', N'QGNTK105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QGNTK105-2.jpg', N'QGNTK105')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK007-1.jpg', N'QJDTK007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK007-2.jpg', N'QJDTK007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK007-3.jpg', N'QJDTK007')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK008-2-3.jpg', N'QJDTK008')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK008-2-4.jpg', N'QJDTK008')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK008-3-3.jpg', N'QJDTK008')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK008-3-4.jpg', N'QJDTK008')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK008-4-1.jpg', N'QJDTK008')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK009-2.jpg', N'QJDTK009')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK009-3.jpg', N'QJDTK009')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK011.jpg', N'QJDTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK011-2-2.jpg', N'QJDTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK011-3-2.jpg', N'QJDTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK011-4-1.jpg', N'QJDTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK011-5.jpg', N'QJDTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK011-6.jpg', N'QJDTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK011-7.jpg', N'QJDTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK012-1.jpg', N'QJDTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK012-2.jpg', N'QJDTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK012-3.jpg', N'QJDTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK016-2.jpg', N'QJDTK016')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK016-3.jpg', N'QJDTK016')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK101-1.jpg', N'QJDTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK101-2.jpg', N'QJDTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK134.jpg', N'QJDTK134')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK139.jpg', N'QJDTK139')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK140-1.jpg', N'QJDTK140')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK140-2.jpg', N'QJDTK140')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK141.jpg', N'QJDTK141')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK141.png', N'QJDTK141')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-1-1.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-1-2.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-2.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-2-1.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-2-2.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-3.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-3-1.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-4.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-4-1.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-5.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK1905-6.jpg', N'QJDTK1905')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK202.jpg', N'QJDTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK207-1.jpg', N'QJDTK207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK207-2.jpg', N'QJDTK207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK207-3.jpg', N'QJDTK207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK207-4.jpg', N'QJDTK207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK207-5.jpg', N'QJDTK207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK208-1.jpg', N'QJDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK208-2.jpg', N'QJDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK208-3.jpg', N'QJDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK208-4.jpg', N'QJDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK210-1.jpg', N'QJDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK210-2.jpg', N'QJDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK210-3.jpg', N'QJDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK212.jpg', N'QJDTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QJDTK213.jpg', N'QJDTK23')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-10-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-1-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-11-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-1-2.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-12-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-1-3.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-13-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-14-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-15-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-16-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-2-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-2-2.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-2-3.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-3-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-3-2.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-4-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-4-2.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-5-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-5-2.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-6-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-6-2.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-7-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-7-2.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-8-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-8-2.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-9.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKBTK202-9-1.jpg', N'QKBTK202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK101.jpg', N'QKKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK101-1.jpg', N'QKKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK101-2.jpg', N'QKKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK101-3.jpg', N'QKKTK101')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK702.jpg', N'QKKTK702')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK702-1.jpg', N'QKKTK702')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK702-2.jpg', N'QKKTK702')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK702-2-1.jpg', N'QKKTK702')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK702-2-2.jpg', N'QKKTK702')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK702-3.jpg', N'QKKTK702')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK702-3-1.jpg', N'QKKTK702')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK702-3-2.jpg', N'QKKTK702')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK702-4.jpg', N'QKKTK702')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QKKTK704.jpg', N'QKKTK704')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QS888-2.jpg', N'QS888')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QS888-3.jpg', N'QS888')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QS888-4.jpg', N'QS888')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QS888-5.jpg', N'QS888')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QS888-6.jpg', N'QS888')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN002-1.jpg', N'QSJCN002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN002-2.jpg', N'QSJCN002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN002-3.jpg', N'QSJCN002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN002-4.jpg', N'QSJCN002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN003-2.jpg', N'QSJCN003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN003-3.jpg', N'QSJCN003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN003-4.jpg', N'QSJCN003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN004-2.jpg', N'QSJCN004')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN004-3.jpg', N'QSJCN004')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN004-4.jpg', N'QSJCN004')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN004-5.jpg', N'QSJCN004')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN004-6.jpg', N'QSJCN004')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN011-1.jpg', N'QSJCN011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN011-2.jpg', N'QSJCN011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN011-3.jpg', N'QSJCN011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN011-4.jpg', N'QSJCN011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN016-1.jpg', N'QSJCN016')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN016-2.jpg', N'QSJCN016')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN016-3.jpg', N'QSJCN016')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN016-4.jpg', N'QSJCN016')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN017-11.jpg', N'QSJCN017')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN017-12.jpg', N'QSJCN017')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN017-13.jpg', N'QSJCN017')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN017-14.jpg', N'QSJCN017')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN018-1.jpg', N'QSJCN018')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN018-2.jpg', N'QSJCN018')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN018-3.jpg', N'QSJCN018')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN018-4.jpg', N'QSJCN018')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN201-1.jpg', N'QSJCN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN201-2.jpg', N'QSJCN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN201-3.jpg', N'QSJCN201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN202.jpg', N'QSJCN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN202-1.jpg', N'QSJCN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN202-1-1.jpg', N'QSJCN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN202-2.jpg', N'QSJCN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN202-2-1.jpg', N'QSJCN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN202-3.jpg', N'QSJCN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN202-3-1.jpg', N'QSJCN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN202-4.jpg', N'QSJCN202')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN203.jpg', N'QSJCN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN203-1.jpg', N'QSJCN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN203-1-1.jpg', N'QSJCN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN203-2.jpg', N'QSJCN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN203-2-1.jpg', N'QSJCN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN203-3.jpg', N'QSJCN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN203-3-1.jpg', N'QSJCN203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN204.jpg', N'QSJCN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN204-1.jpg', N'QSJCN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN204-1-1.jpg', N'QSJCN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN204-2.jpg', N'QSJCN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN204-2-1.jpg', N'QSJCN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN204-3.jpg', N'QSJCN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN204-3-1.jpg', N'QSJCN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN204-4.jpg', N'QSJCN204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN205.jpg', N'QSJCN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN205-1.jpg', N'QSJCN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN205-1-1.jpg', N'QSJCN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN205-2.jpg', N'QSJCN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN205-2-1.jpg', N'QSJCN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN205-3.jpg', N'QSJCN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN205-4.jpg', N'QSJCN205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-1.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-1-1.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-1-2.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-2.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-2-1.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-2-2.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-3.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-3-1.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-3-2.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN206-4.jpg', N'QSJCN206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN207.jpg', N'QSJCN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN207-1.jpg', N'QSJCN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN207-2.jpg', N'QSJCN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN207-3.jpg', N'QSJCN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN207-4.jpg', N'QSJCN207')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN208.jpg', N'QSJCN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN208-1.jpg', N'QSJCN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN208-1-1.jpg', N'QSJCN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN208-2.jpg', N'QSJCN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN208-2-1.jpg', N'QSJCN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN208-3.jpg', N'QSJCN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN208-3-1.jpg', N'QSJCN208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN209.jpg', N'QSJCN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN209-1.jpg', N'QSJCN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN209-2.jpg', N'QSJCN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN209-3.jpg', N'QSJCN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN209-4.jpg', N'QSJCN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSJCN209-5.jpg', N'QSJCN209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'DSC_9199.jpg', N'QSKKTK002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK201.jpg', N'QSKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK201-1.jpg', N'QSKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK201-2.jpg', N'QSKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK201-3.jpg', N'QSKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK201-4.jpg', N'QSKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK201-5.jpg', N'QSKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK201-6.jpg', N'QSKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK201-7.jpg', N'QSKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK201-8.jpg', N'QSKTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-1.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-10.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-11.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-12.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-13.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-14.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-15.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-16.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-17.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-18.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-19.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-2.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-20.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-21.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-22.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-23.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-3.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-4.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-5.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-6.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-7.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-8.jpg', N'QSKTK203')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK203-9.jpg', N'QSKTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-1.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-10.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-11.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-12.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-2.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-3.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-4.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-6.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-7.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-8.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSKTK204-9.jpg', N'QSKTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK003.jpg', N'QSVTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK003-2.jpg', N'QSVTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK003-3.jpg', N'QSVTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK003-4.jpg', N'QSVTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK003-5.jpg', N'QSVTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SVTK003-1.jpg', N'QSVTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SVTK003-2.jpg', N'QSVTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SVTK003-3.jpg', N'QSVTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SVTK003-4.jpg', N'QSVTK003')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'DSC09314.jpg', N'QSVTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'DSC09329.jpg', N'QSVTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK205-1.jpg', N'QSVTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK205-2.jpg', N'QSVTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK205-3.jpg', N'QSVTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK205-4.jpg', N'QSVTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK205-5.jpg', N'QSVTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-1.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-10.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-11.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-12.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-1-2.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-13.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-14.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-15.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-16.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-17.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-2-2.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-4.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-5.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-6.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-7.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-8.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK206-9.jpg', N'QSVTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK209.jpg', N'QSVTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK209-1.jpg', N'QSVTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK209-2.jpg', N'QSVTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK209-2-1.jpg', N'QSVTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK209-3.jpg', N'QSVTK209')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'QSVTK805.jpg', N'QSVTK805')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-10.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-11.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-12.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-13.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-14.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-15.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-2.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-3.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-4.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-5.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-6.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-7.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-8.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK109-9.jpg', N'SDKTK109')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK110-2.jpg', N'SDKTK110')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK110-3.jpg', N'SDKTK110')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK110-4.jpg', N'SDKTK110')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK110-6.jpg', N'SDKTK110')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK110-7.jpg', N'SDKTK110')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SDKTK110-8.jpg', N'SDKTK110')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK210-1.jpg', N'SHDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK210-2.jpg', N'SHDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK210-3.jpg', N'SHDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK210-4.jpg', N'SHDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK210-5.jpg', N'SHDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK210-6.jpg', N'SHDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK210-7.jpg', N'SHDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK210-8.jpg', N'SHDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK210-9.jpg', N'SHDTK210')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-10.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-11.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-1-1.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-11-1.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-12.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-12-1.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-13.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-14.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-15.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-16.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-17.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-18.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-19.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-20.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-21.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-2-1.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-22.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-23.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-3-1.jpg', N'SHDTK220')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-4.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-4-1.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-5.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-5-1.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-6.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-6-1.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-7.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-8.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK220-9.jpg', N'SHDTK220')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-10.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-11.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-1-1.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-12.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-19.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-20.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-21.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-2-1.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-22.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-3-1.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-4.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-4-1.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-5.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-5-1.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-6.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-6-1.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-7.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-7-1.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-8.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-8-1.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-9.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHDTK221-9-1.jpg', N'SHDTK221')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK212-1.jpg', N'SHNTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK212-2.jpg', N'SHNTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK212-3.jpg', N'SHNTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK212-4.jpg', N'SHNTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK212-5.jpg', N'SHNTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK212-6.jpg', N'SHNTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK212-7.jpg', N'SHNTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK212-8.jpg', N'SHNTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK212-9.jpg', N'SHNTK212')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-1-1.jpg', N'SHNTK218-1')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-1-1-1.jpg', N'SHNTK218-1')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-1-2.jpg', N'SHNTK218-1')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-1-2-1.jpg', N'SHNTK218-1')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-1-3.jpg', N'SHNTK218-1')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-1-3-1.jpg', N'SHNTK218-1')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-1-4.jpg', N'SHNTK218-1')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-4-1.jpg', N'SHNTK218-4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-4-1-1.jpg', N'SHNTK218-4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-4-2.jpg', N'SHNTK218-4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-4-2-1.jpg', N'SHNTK218-4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-4-3.jpg', N'SHNTK218-4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-4-3-1.jpg', N'SHNTK218-4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-4-4.jpg', N'SHNTK218-4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-6-1.jpg', N'SHNTK218-6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-6-1-1.jpg', N'SHNTK218-6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-6-2.jpg', N'SHNTK218-6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-6-2-1.jpg', N'SHNTK218-6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-6-3.jpg', N'SHNTK218-6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-6-3-1.jpg', N'SHNTK218-6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK218-6-4.jpg', N'SHNTK218-6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK234-1-1.jpg', N'SHNTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK234-2-1.jpg', N'SHNTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK234-3-1.jpg', N'SHNTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SHNTK234-4-1.jpg', N'SHNTK234')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-10.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-11.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-12.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-13.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-14.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-15.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-16.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-17.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-18.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-19.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-2.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-20.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-3.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-4.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-5.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-6.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-7.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-8.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK104-9.jpg', N'SKDTK104')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-10.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-11.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-12.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-13.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-2.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-3.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-4.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-5.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-6.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-7.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK103-8.jpg', N'SKDTK106')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKDTK203.jpg', N'SKDTK203')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'DSC01199.jpg', N'SKKTK010')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'DSC01200.jpg', N'SKKTK010')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-10.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-11.jpg', N'SKKTK851')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-12.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-13.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-14.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-15.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-16.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-17.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-2.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-3.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-4.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-5.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-6.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-7.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-8.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK851-9.jpg', N'SKKTK851')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SKKTK852.jpg', N'SKKTK852')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SM710-2.jpg', N'SM710')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SM710-3.jpg', N'SM710')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SM710-4.jpg', N'SM710')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SM710-5.jpg', N'SM710')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMD5055-2.jpg', N'SMD5055')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMD5055-3.jpg', N'SMD5055')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMD5055-4.jpg', N'SMD5055')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMD5055-5.jpg', N'SMD5055')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMD5055-6.jpg', N'SMD5055')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMD5055-7.jpg', N'SMD5055')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN004-2.jpg', N'SMDCN004')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN004-3.jpg', N'SMDCN004')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN004-4.jpg', N'SMDCN004')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN006-2.jpg', N'SMDCN006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN006-3.jpg', N'SMDCN006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN006-4.jpg', N'SMDCN006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN012-1.jpg', N'SMDCN012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN012-2.jpg', N'SMDCN012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN012-3.jpg', N'SMDCN012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN012-4.jpg', N'SMDCN012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDCN012-5.jpg', N'SMDCN012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-10.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-11.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-12.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-13.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-2.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-3.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-4.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-5.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-6.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-7.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-8.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK006-9.jpg', N'SMDTK006')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK011-2.jpg', N'SMDTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK011-3.jpg', N'SMDTK011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK012-2.jpg', N'SMDTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK012-3.jpg', N'SMDTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK012-4.jpg', N'SMDTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK012-5.jpg', N'SMDTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMDTK012-6.jpg', N'SMDTK012')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK001-2.jpg', N'SMNTK001')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK001-3.jpg', N'SMNTK001')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK001-4.jpg', N'SMNTK001')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK001-5.jpg', N'SMNTK001')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK002-1.jpg', N'SMNTK002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK002-2.jpg', N'SMNTK002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK002-3.jpg', N'SMNTK002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK002-4.jpg', N'SMNTK002')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK114-2.jpg', N'SMNTK114')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK114-3.jpg', N'SMNTK114')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK114-4.jpg', N'SMNTK114')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'SMNTK114-5.jpg', N'SMNTK114')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'G1011-750k-2-copy-Copy.jpg', N'SPORTYG1011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'G1011-750k-3-copy-Copy.jpg', N'SPORTYG1011')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-10.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-11.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-12.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-13.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-14.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-15.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-16.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-17.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-18.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-19.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-2.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-20.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-21.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-22.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-23.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-3.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-4.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-5.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-6.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-7.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-8.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK108-9.jpg', N'STDTK108')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK117-1.jpg', N'STDTK117')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK117-2.jpg', N'STDTK117')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK117-3.jpg', N'STDTK117')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK201-1.jpg', N'STDTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK201-2.jpg', N'STDTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK201-3.jpg', N'STDTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK201-4.jpg', N'STDTK201')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK204-1.jpg', N'STDTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK204-2.jpg', N'STDTK204')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK204-3.jpg', N'STDTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK204-4.jpg', N'STDTK204')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK205-1.jpg', N'STDTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK205-1-1.jpg', N'STDTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK205-2.jpg', N'STDTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK205-2-1.jpg', N'STDTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK205-3.jpg', N'STDTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK205-3-1.jpg', N'STDTK205')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK206.jpg', N'STDTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK206-1.jpg', N'STDTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK206-2.jpg', N'STDTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK206-2-1.jpg', N'STDTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK206-3.jpg', N'STDTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK206-4.jpg', N'STDTK206')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-10.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-10-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-11.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-1-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-11-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-12.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-12-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-13.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-13-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-14.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-14-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-15.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-15-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-16.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-17.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-18.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-19.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-2.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-20.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-21.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-2-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-22.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-23.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-24.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-25.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-26.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-3.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-3-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-4.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-4-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-5.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-5-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-6.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-6-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-7.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-7-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-8.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-8-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-9.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK208-9-1.jpg', N'STDTK208')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-1.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-10.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-11.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-12.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-13.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-14.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-15.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-16.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-17.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-18.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-19.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-2.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-20.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-3.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-4.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-5.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-6.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-7.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-8.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STDTK211-9.jpg', N'STDTK211')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-1.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-10.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-11.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-12.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-13.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-14.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-15.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-2.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-3.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-4.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-5.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-6.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-7.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-8.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK214-9.jpg', N'STNTK214')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-10.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-10-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-11.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-1-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-11-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-12.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-12-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-13.jpg', N'STNTK216')
GO
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-14.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-15.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-16.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-2.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-2-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-3.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-3-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-4.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-4-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-5.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-5-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-6.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-6-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-7.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-7-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-8.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-8-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-9.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK216-9-1.jpg', N'STNTK216')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-1.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-10.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-11.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-12.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-13.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-14.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-2.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-4.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-5.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-6.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-7.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-8.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'STNTK217-9.jpg', N'STNTK217')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'2a.jpg', N'VD0350_2')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'2b.jpg', N'VD0350_2')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'1-1.jpg', N'VD0350_4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'1a.jpg', N'VD0350_4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'1c.jpg', N'VD0350_4')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'5-1.jpg', N'VD0350_5')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'5a.jpg', N'VD0350_5')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'5c.jpg', N'VD0350_5')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'6-1.jpg', N'VD0350_6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'6b.jpg', N'VD0350_6')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'7-1.jpg', N'VD0350_7')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'7a.jpg', N'VD0350_7')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'7c.jpg', N'VD0350_7')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'VESTK503.jpg', N'VESTK503')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'VESTK503-2.jpg', N'VESTK503')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'VESTK503-3.jpg', N'VESTK503')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'VESTK503-4.jpg', N'VESTK503')
INSERT [dbo].[DanhMucHinh] ([TenHinh], [MaSanPham]) VALUES (N'VESTK503-5.jpg', N'VESTK503')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (N'DMSPAN20210509', N'Áo Nam', N'Khác với việc thiết kế nội thất shop thời trang nữ, chủ cửa hàng có thể lựa chọn và kết hợp nhiều màu sắc từ hồng, vàng đến xanh, tím để thu hút sự chú ý của các quý cô thì khi thiết kế cửa hàng quần áo nam số lượng màu sắc các bạn có thể sử dụng hạn chế hơn. Những màu sắc bạn nên lựa chọn phải mang nét nam tính, hoặc mang sự đơn giản như đen, trắng, nâu, xám, xanh… Các tủ, kệ trưng bày sản phẩm cũng nên có thiết kế đơn giản, cứng cáp và mang nét nam tính. Sau đây chúng tôi sẽ hướng dẫn cụ thể các cách thiết kế nội thất shop thời trang theo hai phong cách chính là hiện đại, trẻ trung và sang trọng, lịch lãm.')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (N'DMSPGDN20210509', N'Giày Dép Nam', N'Khác với việc thiết kế nội thất shop thời trang nữ, chủ cửa hàng có thể lựa chọn và kết hợp nhiều màu sắc từ hồng, vàng đến xanh, tím để thu hút sự chú ý của các quý cô thì khi thiết kế cửa hàng quần áo nam số lượng màu sắc các bạn có thể sử dụng hạn chế hơn. Những màu sắc bạn nên lựa chọn phải mang nét nam tính, hoặc mang sự đơn giản như đen, trắng, nâu, xám, xanh… Các tủ, kệ trưng bày sản phẩm cũng nên có thiết kế đơn giản, cứng cáp và mang nét nam tính. Sau đây chúng tôi sẽ hướng dẫn cụ thể các cách thiết kế nội thất shop thời trang theo hai phong cách chính là hiện đại, trẻ trung và sang trọng, lịch lãm.')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (N'DMSPPKN20210509', N'Phụ Kiện Nam', N'Khác với việc thiết kế nội thất shop thời trang nữ, chủ cửa hàng có thể lựa chọn và kết hợp nhiều màu sắc từ hồng, vàng đến xanh, tím để thu hút sự chú ý của các quý cô thì khi thiết kế cửa hàng quần áo nam số lượng màu sắc các bạn có thể sử dụng hạn chế hơn. Những màu sắc bạn nên lựa chọn phải mang nét nam tính, hoặc mang sự đơn giản như đen, trắng, nâu, xám, xanh… Các tủ, kệ trưng bày sản phẩm cũng nên có thiết kế đơn giản, cứng cáp và mang nét nam tính. Sau đây chúng tôi sẽ hướng dẫn cụ thể các cách thiết kế nội thất shop thời trang theo hai phong cách chính là hiện đại, trẻ trung và sang trọng, lịch lãm.')
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (N'DMSPQN20210509', N'Quần Nam', N'Khác với việc thiết kế nội thất shop thời trang nữ, chủ cửa hàng có thể lựa chọn và kết hợp nhiều màu sắc từ hồng, vàng đến xanh, tím để thu hút sự chú ý của các quý cô thì khi thiết kế cửa hàng quần áo nam số lượng màu sắc các bạn có thể sử dụng hạn chế hơn. Những màu sắc bạn nên lựa chọn phải mang nét nam tính, hoặc mang sự đơn giản như đen, trắng, nâu, xám, xanh… Các tủ, kệ trưng bày sản phẩm cũng nên có thiết kế đơn giản, cứng cáp và mang nét nam tính. Sau đây chúng tôi sẽ hướng dẫn cụ thể các cách thiết kế nội thất shop thời trang theo hai phong cách chính là hiện đại, trẻ trung và sang trọng, lịch lãm.')
INSERT [dbo].[DMManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH001', N'Màn hình mua bán sản phẩm')
INSERT [dbo].[DMManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH002', N'Quản lý hóa đơn')
INSERT [dbo].[DonNhapHang] ([MaDonNhapHang], [MaNhanVien], [MaNhaCungCap], [NgayGui], [TienCoc], [TongTienPhaiTra], [TrangThai], [GhiChu]) VALUES (N'DNH20210511         1', N'NV004', N'NCC002', CAST(0xEE400B00 AS Date), 3000000, NULL, 1, NULL)
INSERT [dbo].[DonNhapHang] ([MaDonNhapHang], [MaNhanVien], [MaNhaCungCap], [NgayGui], [TienCoc], [TongTienPhaiTra], [TrangThai], [GhiChu]) VALUES (N'DNH20210511         2', N'NV004', N'NCC004', CAST(0x35410B00 AS Date), 3000000, NULL, 1, NULL)
INSERT [dbo].[DonNhapHang] ([MaDonNhapHang], [MaNhanVien], [MaNhaCungCap], [NgayGui], [TienCoc], [TongTienPhaiTra], [TrangThai], [GhiChu]) VALUES (N'DNH20210511         3', N'NV005', N'NCC003', CAST(0x9B410B00 AS Date), 3000000, NULL, 1, NULL)
INSERT [dbo].[DonNhapHang] ([MaDonNhapHang], [MaNhanVien], [MaNhaCungCap], [NgayGui], [TienCoc], [TongTienPhaiTra], [TrangThai], [GhiChu]) VALUES (N'DNH20210511         4', N'NV005', N'NCC003', CAST(0xAC410B00 AS Date), 3000000, NULL, 1, NULL)
INSERT [dbo].[DonNhapHang] ([MaDonNhapHang], [MaNhanVien], [MaNhaCungCap], [NgayGui], [TienCoc], [TongTienPhaiTra], [TrangThai], [GhiChu]) VALUES (N'DNH20210511         5', N'NV006', N'NCC002', CAST(0x28420B00 AS Date), 3000000, NULL, 1, NULL)
INSERT [dbo].[DonNhapHang] ([MaDonNhapHang], [MaNhanVien], [MaNhaCungCap], [NgayGui], [TienCoc], [TongTienPhaiTra], [TrangThai], [GhiChu]) VALUES (N'DNH20210511         6', N'NV006', N'NCC001', CAST(0x56420B00 AS Date), 3000000, NULL, 1, NULL)
INSERT [dbo].[DonNhapHang] ([MaDonNhapHang], [MaNhanVien], [MaNhaCungCap], [NgayGui], [TienCoc], [TongTienPhaiTra], [TrangThai], [GhiChu]) VALUES (N'DNH20210511         7', N'NV006', N'NCC004', CAST(0x84420B00 AS Date), 3000000, NULL, 0, N'Hàng còn thêm 1 đợt giao khác')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN212', N'Giày nam GIACN212', 720000, NULL, 50, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN211', N'Giày nam GIACN211', 690000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN210', N'Giày nam GIACN210', 890000, NULL, 90, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN209', N'Giày nam GIACN209', 820000, NULL, 80, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Da phối vải – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN208', N'Giày nam GIACN208', 530000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Da phối vải – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN207', N'Giày nam GIACN207', 720000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN206', N'Giày nam GIACN206', 720000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN205', N'Giày nam GIACN205', 530000, NULL, 10, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: da phối vải – Kiểu dáng: Giày nam cách điệu – Màu sắc: xám, trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN204', N'Giày nam GIACN204', 520000, NULL, 60, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: xám nhạt, xám đậm. – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN203', N'Giày nam GIACN203', 520000, NULL, 20, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN202', N'GIÀY NAM GIACN202', 720000, NULL, 30, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN201', N'GIÀY NAM GIACN201', 520000, NULL, 50, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: xám, trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN137', N'GIÀY NAM GIACN137', 520000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: xanh navy, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN118', N'GIÀY NAM GIACN118', 720000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN116', N'GIÀY NAM GIACN116', 699000, NULL, 60, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN115', N'GIÀY NAM GIACN115', 750000, NULL, 90, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN212', N'Giày nam GIACN212', 720000, NULL, 50, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN210', N'Giày nam GIACN210', 890000, NULL, 90, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN207', N'Giày nam GIACN207', 720000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN114', N'GIÀY NAM GIACN114', 750000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN113', N'GIÀY NAM GIACN113', 750000, NULL, 10, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN112', N'GIÀY NAM GIACN112', 720000, NULL, 30, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN111', N'GIÀY NAM GIACN111', 550000, NULL, 90, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN109', N'GIÀY NAM GIACN109', 650000, NULL, 70, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN107', N'GIÀY NAM GIACN107', 620000, NULL, 50, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN105', N'GIÀY NAM GIACN105', 650000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN104', N'GIÀY NAM GIACN104', 650000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN103', N'GIÀY NAM GIACN103', 520000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN102', N'GIÀY NAM GIACN102', 650000, NULL, 30, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN101', N'GIÀY NAM GIACN101', 650000, NULL, 50, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIA675001', N'GIÀY NAM GIA675001', 780000, NULL, 70, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ ', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIA046001', N'GIÀY NAM GIA046001', 750000, NULL, 20, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống ', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'SPORTYG1011', N'GIÀY SNEKER SPORTY G1011', 750000, NULL, 10, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày thể thao cách điệu – Màu sắc: Đen – Size: 39 – 43 – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN211', N'Giày nam GIACN211', 690000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN209', N'Giày nam GIACN209', 820000, NULL, 80, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Da phối vải – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN203', N'Giày nam GIACN203', 520000, NULL, 20, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN202', N'GIÀY NAM GIACN202', 720000, NULL, 30, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN208', N'Giày nam GIACN208', 530000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Da phối vải – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN206', N'Giày nam GIACN206', 720000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN205', N'Giày nam GIACN205', 530000, NULL, 10, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: da phối vải – Kiểu dáng: Giày nam cách điệu – Màu sắc: xám, trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN204', N'Giày nam GIACN204', 520000, NULL, 60, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: xám nhạt, xám đậm. – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN201', N'GIÀY NAM GIACN201', 520000, NULL, 50, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: xám, trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN137', N'GIÀY NAM GIACN137', 520000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: xanh navy, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN118', N'GIÀY NAM GIACN118', 720000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN116', N'GIÀY NAM GIACN116', 699000, NULL, 60, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN115', N'GIÀY NAM GIACN115', 750000, NULL, 90, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN114', N'GIÀY NAM GIACN114', 750000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN113', N'GIÀY NAM GIACN113', 750000, NULL, 10, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN112', N'GIÀY NAM GIACN112', 720000, NULL, 30, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN111', N'GIÀY NAM GIACN111', 550000, NULL, 90, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN109', N'GIÀY NAM GIACN109', 650000, NULL, 70, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN107', N'GIÀY NAM GIACN107', 620000, NULL, 50, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN105', N'GIÀY NAM GIACN105', 650000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN104', N'GIÀY NAM GIACN104', 650000, NULL, 40, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN103', N'GIÀY NAM GIACN103', 520000, NULL, 100, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN102', N'GIÀY NAM GIACN102', 650000, NULL, 30, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIACN101', N'GIÀY NAM GIACN101', 650000, NULL, 50, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIA675001', N'GIÀY NAM GIA675001', 780000, NULL, 70, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ ', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'GIA046001', N'GIÀY NAM GIA046001', 750000, NULL, 20, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống ', N'NCC004')
INSERT [dbo].[GN] ([id], [Name], [Price], [Sale Price], [Number], [IDCaterogy], [Size], [status], [Decription], [IDNCC]) VALUES (N'SPORTYG1011', N'GIÀY SNEKER SPORTY G1011', 750000, NULL, 10, N'LSPGIAYNAM20210509', NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày thể thao cách điệu – Màu sắc: Đen – Size: 39 – 43 – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'NCC004')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN210', N'GIACN210-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN210', N'GIACN210-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN210', N'GIACN210-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN210', N'GIACN210-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN209', N'GIACN209-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN209', N'GIACN209-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN209', N'GIACN209-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN209', N'GIACN209-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN118', N'GIACN118-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN118', N'GIACN118-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN118', N'GIACN118-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN118', N'GIACN118-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN115', N'GIACN115-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN115', N'GIACN115-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN115', N'GIACN115-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN115', N'GIACN115-2.jpg')
GO
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN114', N'GIACN114-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN114', N'GIACN114-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN114', N'GIACN114-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-11.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-10.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN111', N'GIACN111-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN111', N'GIACN111-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN111', N'GIACN111-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN111', N'GIACN111-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN109', N'GIACN109-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN109', N'GIACN109-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN109', N'GIACN109-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN109', N'GIACN109-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-10.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-10.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIA675001', N'GIA675001-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIA675001', N'GIA675001-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIA046001', N'GIA046001-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'SPORTYG1011', N'G1011-750k-2-copy-Copy.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'SPORTYG1011', N'G1011-750k-3-copy-Copy.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN212', N'GIACN212-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN211', N'GIACN211-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN210', N'GIACN210-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN210', N'GIACN210-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN210', N'GIACN210-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN210', N'GIACN210-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN209', N'GIACN209-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN209', N'GIACN209-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN209', N'GIACN209-3.jpg')
GO
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN209', N'GIACN209-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN208', N'GIACN208-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN207', N'GIACN207-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN206', N'GIACN206-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN205', N'GIACN205-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN204', N'GIACN204-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN203', N'GIACN203-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN202', N'GIACN202-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN201', N'GIACN201-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN137', N'GIACN137-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN118', N'GIACN118-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN118', N'GIACN118-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN118', N'GIACN118-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN118', N'GIACN118-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN115', N'GIACN115-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN115', N'GIACN115-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN115', N'GIACN115-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN115', N'GIACN115-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN114', N'GIACN114-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN114', N'GIACN114-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN114', N'GIACN114-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN113', N'GIACN113-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-11.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-10.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN112', N'GIACN112-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN111', N'GIACN111-2.jpg')
GO
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN111', N'GIACN111-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN111', N'GIACN111-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN111', N'GIACN111-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN109', N'GIACN109-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN109', N'GIACN109-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN109', N'GIACN109-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN109', N'GIACN109-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-10.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN107', N'GIACN107-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN105', N'GIACN105-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN104', N'GIACN104-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-10.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN103', N'GIACN103-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-9.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-4.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN102', N'GIACN102-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-1.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-7.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-6.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-5.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIACN101', N'GIACN101-8.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIA675001', N'GIA675001-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIA675001', N'GIA675001-3.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'GIA046001', N'GIA046001-2.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'SPORTYG1011', N'G1011-750k-2-copy-Copy.jpg')
INSERT [dbo].[H1] ([IdSanPham], [NoiLuu]) VALUES (N'SPORTYG1011', N'G1011-750k-3-copy-Copy.jpg')
INSERT [dbo].[HoaDonBanHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayTao], [ThanhTien], [KhuyenMai], [TrangThai], [GhiChu]) VALUES (N'HD001', N'KH001', N'NV001', CAST(0xBE420B00 AS Date), 680000, 0, 1, NULL)
INSERT [dbo].[HoaDonBanHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayTao], [ThanhTien], [KhuyenMai], [TrangThai], [GhiChu]) VALUES (N'HD002', N'KH001', N'NV001', CAST(0xC0420B00 AS Date), 680000, 0, 1, NULL)
INSERT [dbo].[HoaDonBanHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayTao], [ThanhTien], [KhuyenMai], [TrangThai], [GhiChu]) VALUES (N'HD003', N'KH001', N'NV001', CAST(0xC0420B00 AS Date), 680000, 0, 1, NULL)
INSERT [dbo].[HoaDonBanHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayTao], [ThanhTien], [KhuyenMai], [TrangThai], [GhiChu]) VALUES (N'HD004', N'KH001', N'NV001', CAST(0xC0420B00 AS Date), 680000, 0, 1, NULL)
INSERT [dbo].[HoaDonBanHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayTao], [ThanhTien], [KhuyenMai], [TrangThai], [GhiChu]) VALUES (N'HD005', N'KH001', N'NV001', CAST(0xC0420B00 AS Date), 680000, 0, 1, NULL)
INSERT [dbo].[HoaDonBanHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayTao], [ThanhTien], [KhuyenMai], [TrangThai], [GhiChu]) VALUES (N'HD006', N'KH001', N'NV001', CAST(0xC0420B00 AS Date), 2720000, 0, 1, NULL)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [NgaySinh], [HinhAnh], [GioiTinh], [Email], [SDT], [DiaChi]) VALUES (N'KH001', N'suong', NULL, NULL, N'1', NULL, NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPAHOODIE20210509', N'Áo Hoodie', NULL, N'hoodie.png', N'DMSPAN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPAKHOAC20210509', N'Áo Khoác', NULL, N'jacket.png', N'DMSPAN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPALEN20210509', N'Áo Len', NULL, N'sweater.png', N'DMSPAN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPAPHONG20210509', N'Áo Phông', NULL, N'tshirt.png', N'DMSPAN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPAPOLO20210509', N'Áo Polo', NULL, N'polo-shirt.png', N'DMSPAN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPASOMI20210509', N'Áo Sơ Mi', NULL, N'shirt.png', N'DMSPAN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPAVEST20210509', N'Áo Vest', NULL, N'vest.png', N'DMSPAN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPBALO20210509', N'Balo Túi Cheo', NULL, N'backpack.png', N'DMSPPKN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPGIAYNAM20210509', N'Giày Nam', NULL, N'sneakers.png', N'DMSPGDN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPKINH20210509', N'Kính', NULL, N'sunglasses.png', N'DMSPPKN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPMU20210509', N'Mũ', NULL, N'cap.png', N'DMSPPKN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPQAU20210509', N'Quần Âu', NULL, N'pants.png', N'DMSPQN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPQJEANS20210509', N'Quần Jeans', NULL, N'jeans.png', N'DMSPQN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPQJOGGER20210509', N'Quần Jogger', NULL, N'jogger-pants.png', N'DMSPQN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPQKAKI20210509', N'Quần Kaki', NULL, N'kaki.png', N'DMSPQN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPQSHORT20210509', N'Quần Short', NULL, N'shorts.png', N'DMSPQN20210509')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [MoTa], [HinhAnh], [MaDanhMuc]) VALUES (N'LSPVIDA20210509', N'Ví Da', NULL, N'wallet.png', N'DMSPPKN20210509')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email]) VALUES (N'NCC001', N'Công Ty TNHH Chuyên cung cấp áo thời trang nam', N'111 Quận 7 TpHCM', N'11222233', N'ncc1@gmail')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email]) VALUES (N'NCC002', N'Công Ty TNHH Chuyên cung cấp quần thời trang nam', N'1 Quận 2 TP HCM', N'71212821', N'ncc2@gmail')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email]) VALUES (N'NCC003', N'Công Ty TNHH Chuyên cung cấp phụ kiện thời trang nam', N'12 Quận Tân Bình TPHCM', N'78999911', N'ncc3@gmail')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email]) VALUES (N'NCC004', N'Công Ty TNHH Chuyên cung cấp giày dép thời trang nam', N'26 CMT8 Quận Tân Bình TPHCM', N'28839991', N'ncc4@gmail')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email]) VALUES (N'NCC005', N'Công Ty TNHH Chuyên sỉ lẻ thời trang nội địa TPHCM', N'11 CN1 TPHCM', N'78129192', N'ncc5@gmail')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV001', N'Trần Hữu Tính', CAST(0x12240B00 AS Date), NULL, N'38   7509260', N'Nam', CAST(0x80420B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'12 TânPhú', N'84  26425950', N'Thu ngân', 5000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV002', N'Phan Thành Lợi', CAST(0xCB220B00 AS Date), NULL, N'38  10975130', N'Nam', CAST(0x80420B00 AS Date), N'NghiViec', N'th121t@gmail.com', N'31 TânPhú', N'84  99307100', N'Thu ngân', 5000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV003', N'Nguyễn Minh Thư', CAST(0xD6220B00 AS Date), NULL, N'38  49256120', N'Nữ', CAST(0xC1400B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'132 TânPhú', N'84  29399590', N'Kho', 4000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV004', N'Trần Ngọc Bích', CAST(0xF8220B00 AS Date), NULL, N'38  57408330', N'Nữ', CAST(0xC1400B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'11 TânPhú', N'84  38326430', N'Kho', 4000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV005', N'La Minh Thành', CAST(0x29230B00 AS Date), NULL, N'38  26411700', N'Nam', CAST(0xC1400B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'23 TânPhú', N'84  17415220', N'Kho', 4000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV006', N'Nguyễn Hữu Tiến', CAST(0xF6210B00 AS Date), NULL, N'38  75209960', N'Nam', CAST(0xE73D0B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'35 TânPhú', N'84  35839690', N'Kho', 6000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV007', N'Đỗ Ngọc Nữ', CAST(0x3E210B00 AS Date), NULL, N'38  41578200', N'Nữ', CAST(0x543F0B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'122/12 TânPhú', N'84  36227150', N'Bán hàng', 5000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV008', N'La Kim Nhã', CAST(0x78210B00 AS Date), NULL, N'38  57363990', N'Nữ', CAST(0x543F0B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'21 TânPhú', N'84  69335170', N'Bán hàng', 5000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV009', N'Nguyễn Minh Ngọc', CAST(0x6D130B00 AS Date), NULL, N'38  37250790', N'Nữ', CAST(0x0C3B0B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'34 TânPhú', N'84   6949380', N'Quản lý', NULL)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV010', N'Nguyễn Thúy Kiều', CAST(0x21190B00 AS Date), NULL, N'38  31077240', N'Nữ', CAST(0x543F0B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'199 TânPhú', N'84  17809310', N'Bán hàng', 5000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV011', N'Kim Thăng', CAST(0x21180B00 AS Date), NULL, N'38  77132570', N'Nam', CAST(0x543F0B00 AS Date), N'DangHoatDong', N'th121t@gmail.com', N'24 TânPhú', N'84  33753220', N'Bán hàng', 5000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [HinhAnh], [CMND], [GioiTinh], [NgayVaoLam], [TinhTrang], [Email], [DiaChi], [SoDienThoai], [ChucVu], [Luong]) VALUES (N'NV012', N'Nguyễn Hữu Nga', CAST(0x06210B00 AS Date), NULL, N'38  15221870', N'Nữ', CAST(0x543F0B00 AS Date), N'XinPhep', N'th121t@gmail.com', N'46 TânPhú', N'84  35897880', N'Thu ngân', 6000000)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'16HM180D', N'Mũ Thời Trang Nam Caps Đen 16HM180D', 10, 180000, NULL, N'38,39,40,41,42,43', 1, N'– Màu sắc: Xám, cam, trắng – Chất liệu: Vải cao cấp – Kiểu dáng: Snapback thời trang, phối màu cá tính – Đặc điểm: Chỉ thêu đẹp, tỉ mỉ – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'16HM180DO', N'Mũ Thời Trang Nam Caps Đỏ 16HM180DO', 30, 180000, NULL, N'38,39,40,41,42,43', 1, N'– Màu sắc: Cam, hồng – Chất liệu: Vải cao cấp – Kiểu dáng: Snapback thời trang, phối màu cá tính – Đặc điểm: Chỉ thêu đẹp, tỉ mỉ – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'16HM180H', N'Mũ Thời Trang Nam Caps Hồng 16HM180H', 90, 180000, NULL, N'38,39,40,41,42,43', 1, N'– Màu sắc: Đen, hồng – Chất liệu: Vải cao cấp – Kiểu dáng: Snapback thời trang, phối màu cá tính – Đặc điểm: Chỉ thêu đẹp, tỉ mỉ – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'16HM180N', N'Mũ Thời Trang Nam Caps Nâu 16HM180N', 50, 180000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Da cao cấp – Màu: đen – Thiết kế: Leather – Ví gập ngang – Kiểu dáng: Thời trang – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'16HM180t', N'Mũ Thời Trang Nam Caps Tím 16HM180T', 90, 180000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Da cao cấp – Màu: đen – Thiết kế: Leather – Ví gập ngang – Kiểu dáng: Thời trang – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'16HM180tr', N'Mũ Thời Trang Nam Caps Trắng 16HM180Tr', 100, 180000, NULL, N'38,39,40,41,42,43', 1, N'– Màu sắc: Trắng, đen – Chất liệu: Vải cao cấp – Kiểu dáng: Snapback thời trang, phối màu cá tính – Đặc điểm: Chỉ thêu đẹp, tỉ mỉ – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'16HM180TRD', N'Mũ Thời Trang Nam Trắng đỏ Caps 16HM180', 10, 180000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Da cao cấp – Màu: đen – Thiết kế: Leather – Ví gập ngang – Kiểu dáng: Thời trang – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'16HM180TRS', N'Mũ Thời Trang Nam Caps Trắng Sữa 16HM180TRS', 90, 180000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Da cao cấp – Màu: đen – Thiết kế: Leather – Ví gập ngang – Kiểu dáng: Thời trang – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'16HM180X', N'Mũ Thời Trang Nam Caps Xám 16HM180X', 30, 180000, NULL, N'38,39,40,41,42,43', 1, N'– Màu sắc: Trắng, đen – Chất liệu: Vải cao cấp – Kiểu dáng: Snapback thời trang, phối màu cá tính – Đặc điểm: Chỉ thêu đẹp, tỉ mỉ – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'18EM250', N'Mũ Thời Trang Nam Panama 18EM250', 20, 250000, NULL, N'38,39,40,41,42,43', 1, N'– Màu sắc: Đen, tím – Chất liệu: Vải cao cấp – Kiểu dáng: Snapback thời trang, phối màu cá tính – Đặc điểm: Chỉ thêu đẹp, tỉ mỉ – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'18EM280', N'Mũ Thời Trang Nam Panama 18EM280', 70, 280000, NULL, N'38,39,40,41,42,43', 1, N'– Màu sắc: Đen – Chất liệu: Vải cao cấp – Kiểu dáng: Snapback thời trang, phối màu cá tính – Đặc điểm: Chỉ thêu đẹp, tỉ mỉ – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPMU20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'AHHTK104', N'ÁO HOODIE NAM AHHTK104', 70, 340000, 187950, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: xám, nâu, trắng, đen– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và Shopee.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img class="lazyloaded" data-src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d" src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPAHOODIE20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'AKBCN101', N'ÁO KHOÁC NAM AKBCN101', 40, 320000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: đen– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/QU%E1%BA%A6N-%C3%82u-NamTK322-i.88678739.2087164206"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a>', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'AKBCN102', N'ÁO KHOÁC NAM AKBCN102', 50, 399000, NULL, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: xanh indigo, trắng– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a>', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'AKBCN104', N'ÁO KHOÁC NAM AKBCN104', 40, 320000, NULL, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: xanh indigo, trắng– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a>', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'AKBCN105', N'ÁO KHOÁC NAM AKBCN105', 50, 280000, NULL, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: trắng, xanh navy, xanh da trời– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a>', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'AKBCN106', N'ÁO KHOÁC NAM AKBCN106', 10, 490000, NULL, N'38,39,40,41,42,43', 1, N'– Kiểu dáng: Sơ mi tay dài– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: trắng– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a>', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'AKITK101', N'ÁO KHOÁC NAM AKITK101', 70, 990000, NULL, N'38,39,40,41,42,43', 1, N'– Kiểu dáng: Sơ mi nam– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: vàng– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a>', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ANHTK104', N'ÁO NI NAM ANHTK104', 88, 340000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: be, trắng, đen– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và Shopee.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img class="lazyloaded" data-src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d" src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPALEN20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ANHTK108', N'ÁO NI NAM ANHTK108', 20, 419000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: trắng, đen, xám– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và Shopee.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img class="lazyloaded" data-src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d" src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPALEN20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ANHTK115', N'ÁO NI NAM ANHTK115', 90, 380000, NULL, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: xám, xanh navy– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPALEN20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ANHTK120', N'ÁO NI NAM ANHTK120', 60, 380000, NULL, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: be, trắng, xanh indigo– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPALEN20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ANHTK124', N'ÁO NI NAM ANHTK124', 10, 395000, NULL, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: xanh indigo, xanh da trời, xanh navy– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPALEN20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ANHTK128', N'ÁO NI NAM ANHTK128', 50, 419000, NULL, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: xám, xanh indigo– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPALEN20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ANHTK130', N'ÁO NI NAM ANHTK130', 80, 425000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: trắng, đen, xanh rêu– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và Shopee.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img class="lazyloaded" data-src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d" src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPALEN20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHCN002', N'ÁO PHÔNG NAM APHCN002', 40, 279000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu:  60% COTTON, 20% RAYON, 20% POLYESTER– Màu sắc: xanh da trời, hông, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHCN003', N'ÁO PHÔNG NAM APHCN003', 20, 250000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 49% RAYON, 49% NYLON, 2% SPANDEX– Đặc tính: Chất Rayon có ưu điểm nhẹ, thấm hút mồ hôi. Nhược điểm dễ nhăn. Tuy nhiên mẫu sơ mi này có pha nylon nên đã khắc phục được nhược điểm này.– Màu sắc: đen, nâu nhạt, be, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHCN005', N'ÁO PHÔNG NAM APHCN005', 70, 279000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu:  97 % COTTON, 3% SPANDEX– Màu sắc: xanh navy, xanh navy, trắng– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHCN006', N'ÁO PHÔNG NAM APHCN006', 20, 350000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% cotton, hình in cao su– Phom: Regular– Màu: Cam đậm, be, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHCN007', N'ÁO PHÔNG NAM APHCN007', 60, 350000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% cotton, hình in cao su– Phom: Regular– Màu: xanh ngọc, hồng vỏ đỗ, đen– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHCN008', N'ÁO PHÔNG NAM APHCN008', 40, 270000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% cotton, hình in cao su– Phom: Regular– Màu: xanh nhạt, xám nhạt– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHCN011', N'ÁO PHÔNG NAM APHCN011', 50, 289000, NULL, N'38,39,40,41,42,43', 1, N'<div class="current-comment js-friendly-links js-open-card"><p style="padding-left: 30px;">– Chất liệu: COTTON + SPANDEX– Đặc tính: CỒ VÀ TAY PHỐI BO KHÁC MÀU, Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: trắng phối đỏ, trắng phối xanh, xanh nhạt, đỏ– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK025', N'ÁO PHÔNG NAM APHTK025', 90, 260000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 93% MODAL , 7% SPANDEX– Đặc tính: Chất liệu Modal có khả năng thấm hút cao hơn cotton đến khoảng 25%, Các sản phẩm từ chất liệu Modal sau quá trình sử dụng, giặt là vẫn giữ nguyên được Form dáng, không gặp phải tình trạng biến dạng như chất liệu Cotton vẫn thường gặp phải– Phom: SLIMFIT– Màu: hồng đào, tiêu nhạt, tiêu đâm, đen, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK051', N'ÁO PHÔNG NAM APHTK051', 50, 255000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 95% cotton, 5 % Spandex– Phom: Regular– Màu: xanh ngọc, nâu nhạt, đen, xanh da trời– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK052', N'ÁO PHÔNG NAM APHTK052', 40, 270000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 95% cotton, 5 % Spandex– Phom: Regular– Màu: Xám đậm, xanh da trời– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK055', N'ÁO PHÔNG NAM APHTK055', 50, 250000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính: HÌNH IN CAO BẢN– Phom: Regular– Màu: đen, be, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK056', N'ÁO PHÔNG NAM APHTK056', 70, 249000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 28% COTTON, 36% RAYON, 36% POLYESTER– Đặc tính: ÁO DÀI TAY, CỔ ĐỨC .– Kiểu dáng: REGULAR– Màu sắc: trắng– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK057', N'ÁO PHÔNG NAM APHTK057', 20, 270000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 49% RAYON, 49% NYLON, 2% SPANDEX– Màu sắc: xanh da trời, xanh indigo– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK201', N'ÁO PHÔNG NAM APHTK201', 40, 249000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: đen, xám nhat, vàng– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK204', N'ÁO PHÔNG NAM APHTK204', 50, 245000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: RELAX– Màu: vàng, be, xám đậm– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK205', N'ÁO PHÔNG NAM APHTK205', 60, 215000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 49% COTTON, 47% POLY, 4% SPANDEX– Đặc tính:– Phom: REGULAR FIT– Màu: xanhnavy, xanh cổ vịt, xám nhạt, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK206', N'ÁO PHÔNG NAM APHTK206', 70, 219000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính: In thấm– Phom: Regular– Màu: đen, xám nhạt, be– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK207', N'ÁO PHÔNG NAM APHTK207', 60, 199000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính: In phồng– Phom: Regular– Màu: đen,cam, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK208', N'ÁO PHÔNG NAM APHTK208', 100, 580000, 399000, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK209', N'ÁO PHÔNG NAM APHTK209', 40, 270000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính: HÌNH THÊU NÉT– Phom: BOXY– Màu: vàng nhat, xám đậm, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK213', N'ÁO PHÔNG NAM APHTK213', 30, 245000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính: HÌNH IN CAO BẢN– Phom: Regular– Màu: đen, vàng, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK214', N'ÁO PHÔNG NAM APHTK214', 10, 260000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính: HÌNH IN CAO BẢN– Phom: Regular– Màu: xanh rêu, trắng, be– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK215', N'ÁO PHÔNG NAM APHTK215', 100, 205000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: đen,vàng nhạt trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK216', N'ÁO PHÔNG NAM APHTK216', 10, 190000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK217', N'ÁO PHÔNG NAM APHTK217', 100, 260000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính: HÌNH IN CAO BẢN– Phom: Regular– Màu: xanh rêu, đen, be, hồng vỏ đỗ– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK218', N'Áo phông nam APHTK218', 40, 215000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: hồng vỏ đỗ, be , vàng, trắng– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK220', N'Áo phông nam APHTK220', 90, 230000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK221', N'Áo phông nam APHTK221', 80, 229000, 129000, N'38,39,40,41,42,43', 1, N'– Chất liệu: 89% COTTON– Đặc tính:– Phom: OVERSIZED– Màu: Xanh cốm, vàng cam, nâu đậm– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK222', N'Áo phông nam APHTK222', 20, 229000, 129000, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: vàng, đen, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK223', N'Áo phông nam APHTK223', 20, 229000, 129000, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: vàng, cam, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK225', N'Áo phông nam APHTK225', 20, 195000, 129000, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: Xanh cốm, đen, trắng– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK227', N'Áo phông nam APHTK227', 20, 229000, 129000, N'38,39,40,41,42,43', 1, N'– Chất liệu: 60% COTTON– Đặc tính:– Phom: Relax– Màu: đen, cam, xanh nhạt– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK228', N'Áo phông nam APHTK228', 20, 229000, 129000, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: đen, trắng– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK230', N'Áo phông nam APHTK230', 60, 380000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 97 % COTTON, 3% SPANDEX– Đặc tính: ÁO DÀI TAY , CỔ ĐỨC, CÓ LY SÚP THÂN SAU– Kiểu dáng: REGULAR– Màu sắc: xanh ngọc, be, trắng kem, đen– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK231', N'Áo phông nam APHTK231', 80, 380000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Kiểu dáng: Relax– Màu sắc: cam nhat, đen, be, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK232', N'Áo phông nam APHTK232', 80, 380000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 97 % COTTON, 3% SPANDEX– Đặc tính: ÁO DÀI TAY , CỔ ĐỨC, CÓ LY SÚP THÂN SAU– Kiểu dáng: REGULAR– Màu sắc: nâu đậm, xám nhạt, be, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK234', N'Áo phông nam APHTK234', 60, 220000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK235', N'Áo phông nam APHTK235', 40, 220000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK236', N'Áo phông nam APHTK236', 10, 229000, 129000, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: vàng, đen, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK238', N'Áo phông nam APHTK238', 20, 385000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Màu sắc: xanh da trời, xám nhạt, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK240', N'Áo phông nam APHTK240', 70, 360000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 97 % COTTON, 3% SPANDEX– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: xám xanh, xám nhạt, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK245', N'Áo phông nam APHTK245', 50, 389000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100 % COTTON– Đặc tính: sơ mi ngắn tai cổ tàu, thêu trên ngực trái– Kiểu dáng: REGULAR FIT– Màu sắc: tím phớt, xanh da trời xám đậm– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK250', N'Áo phông nam APHTK250', 90, 360000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100 % COTTON– Đặc tính:– Kiểu dáng: Relax– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APHTK260', N'Áo phông nam APHTK260', 30, 399000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Dáng: Regular– Màu sắc: vàng nhạt, đen, be, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APLTK023', N'ÁO PHÔNG POLO NAM APLTK023', 30, 260000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính: IN CAO SU TRÊN TÚI– Phom: Regular– Màu: Xám đậm, be, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APMTK210', N'ÁO PHÔNG NAM APMTK210', 80, 249000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 60% COTTON, 40% POLY– Đặc tính:– Phom: Regular– Màu: đen, cam, be, xám đậm, xám nhạt, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APMTK211', N'Áo phông nam APMTK211', 10, 219000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: đen,xám đậm, trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APMTK212', N'Áo phông nam APMTK212', 100, 229000, 129000, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính:– Phom: Regular– Màu: đen, trắng– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APMTK254', N'Áo phông nam APMTK254', 110, 519000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 55% LINEN, 45% VISCOSE– Dáng: Regular– Màu sắc: đen, be, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APTTK202', N'ÁO PHÔNG NAM APTTK202', 90, 225000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 60% COTTON, 40% POLY– Đặc tính:– Phom: Regular– Màu: nâu, đen, tiêu đậm– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'APTTK203', N'ÁO PHÔNG NAM APTTK203', 90, 229000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ATDTK101', N'ÁO THUN NAM DÀI TAY ATDTK101', 30, 249000, NULL, N'38,39,40,41,42,43', 1, N'<div class="current-comment js-friendly-links js-open-card"><p style="padding-left: 30px;">– Chất liệu: COTTON + SPANDEX– Đặc tính: CỒ VÀ TAY PHỐI BO KHÁC MÀU– Màu: tiêu nhạt, đỏ, xanh rêu, trắng kem– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ATDTK102', N'ÁO THUN NAM DÀI TAY ATDTK102', 10, 250000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: OXFORD – 100% COTTON– Màu sắc: xanh da trời, xanh indigo, xám, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'ATDTK103', N'ÁO THUN NAM DÀI TAY ATDTK103', 20, 250000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% COTTON– Đặc tính: IN CAO SU– Phom: Regular– Màu: vàng, xám nhạt, trắng– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAPHONG20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'BONTK104', N'BỘ NỈ NAM BONTK104', 100, 350000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: xanh rêu, trắng, đen– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và Shopee.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img class="lazyloaded" data-src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d" src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'C1568', N'BALO THỜI TRANG C1568', 20, 650000, NULL, N'38,39,40,41,42,43', 1, N'– Màu sắc: Cam, trắng – Chất liệu: Vải cao cấp – Kiểu dáng: Snapback thời trang, phối màu cá tính – Đặc điểm: Chỉ thêu đẹp, tỉ mỉ – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPBALO20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'C1569', N'BALO THỜI TRANG C1569', 80, 680000, NULL, N'38,39,40,41,42,43', 1, N'– Màu sắc: Hồng – Chất liệu: Vải cao cấp – Kiểu dáng: Snapback thời trang, phối màu cá tính – Đặc điểm: Chỉ thêu đẹp, tỉ mỉ – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPBALO20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'C1573', N'BALO THỜI TRANG C1573', 70, 750000, NULL, N'38,39,40,41,42,43', 1, N'Chất liệu: Cói –  Thiết kế: Rộng vành –  Màu sắc: Xám sữa, Cam sữa –  Kiểu dáng: Thời trang –  Thích hợp: Sử dụng đi du lịch –  Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPBALO20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'C1752', N'BALO THỜI TRANG C1752', 30, 720000, NULL, N'38,39,40,41,42,43', 1, N'Chất liệu: Cói –  Thiết kế: Rộng vành –  Màu sắc: Cam –  Kiểu dáng: Thời trang –  Thích hợp: Sử dụng đi du lịch –  Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPBALO20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'C9021B', N'BALO THỜI TRANG C9021B', 80, 720000, NULL, N'38,39,40,41,42,43', 1, N'– Gọng: Cao cấp – Kiểu dáng: Thời trang – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPBALO20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'C9024', N'BALO THỜI TRANG C9024', 30, 450000, NULL, N'38,39,40,41,42,43', 1, N'– Gọng: Cao cấp – Kiểu dáng: Thời trang ', N'LSPBALO20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIA046001', N'GIÀY NAM GIA046001', 20, 750000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống ', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIA675001', N'GIÀY NAM GIA675001', 70, 780000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ ', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN101', N'GIÀY NAM GIACN101', 50, 650000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN102', N'GIÀY NAM GIACN102', 30, 650000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN103', N'GIÀY NAM GIACN103', 100, 520000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN104', N'GIÀY NAM GIACN104', 40, 650000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN105', N'GIÀY NAM GIACN105', 40, 650000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN107', N'GIÀY NAM GIACN107', 50, 620000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN109', N'GIÀY NAM GIACN109', 70, 650000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN111', N'GIÀY NAM GIACN111', 90, 550000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN112', N'GIÀY NAM GIACN112', 30, 720000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN113', N'GIÀY NAM GIACN113', 10, 750000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN114', N'GIÀY NAM GIACN114', 40, 750000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN115', N'GIÀY NAM GIACN115', 90, 750000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN116', N'GIÀY NAM GIACN116', 60, 699000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN118', N'GIÀY NAM GIACN118', 100, 720000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN137', N'GIÀY NAM GIACN137', 40, 520000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày nam cách điệu – Màu sắc: xanh navy, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN201', N'GIÀY NAM GIACN201', 50, 520000, NULL, NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: xám, trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN202', N'GIÀY NAM GIACN202', 30, 720000, NULL, NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN203', N'Giày nam GIACN203', 20, 520000, NULL, NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: be, trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN204', N'Giày nam GIACN204', 60, 520000, NULL, NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: xám nhạt, xám đậm. – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN205', N'Giày nam GIACN205', 10, 530000, NULL, NULL, 1, N'– Chất liệu: da phối vải – Kiểu dáng: Giày nam cách điệu – Màu sắc: xám, trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN206', N'Giày nam GIACN206', 40, 720000, NULL, NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN207', N'Giày nam GIACN207', 100, 720000, NULL, NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN208', N'Giày nam GIACN208', 100, 530000, NULL, NULL, 1, N'– Chất liệu: Da phối vải – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, xám – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN209', N'Giày nam GIACN209', 80, 820000, NULL, NULL, 1, N'– Chất liệu: Da phối vải – Kiểu dáng: Giày nam cách điệu – Màu sắc: đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN210', N'Giày nam GIACN210', 90, 890000, NULL, NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN211', N'Giày nam GIACN211', 100, 690000, NULL, NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng, đen – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'GIACN212', N'Giày nam GIACN212', 50, 720000, NULL, NULL, 1, N'– Chất liệu: DAPU – Kiểu dáng: Giày nam cách điệu – Màu sắc: trắng – Size: 39 – 43 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'J8233', N'QUẦN JEANS NAM J8233#', 10, 360000, 272000, N'38,39,40,41,42,77', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: đen– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'JKTTK102', N'QUẦN JEANS NAM JKTTK102', 60, 430000, 199000, N'38,39,40,41,42,68', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  xám– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'JSTTK108', N'QUẦN JEANS NAM JSTTK108', 30, 320000, NULL, N'38,39,40,41,42,67', 1, N'– Chất liệu: KAKI– Đặc tính: QUẦN THIẾT KẾ BẢN CẠP 4CM CÓ CHUN, DÂY QUẦN DẸT BẢN 1CM– Kiểu dáng: BAGGY– Màu sắc: đen, xám nhạt, xám đậm, be, xanh rêu, xanh da trời– Kiểu dáng: Ống Suông– Size: 29 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong></p><p> </p></div>', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'KIN0075-1', N'KÍNH MẮT THỜI TRANG KIN0075-1', 60, 290000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp – Thiết kế: đơn giản – Màu: Đen – Kiểu dáng: Thời trang – Thích hợp: Sử dụng đi học, đi du lịch – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPKINH20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'KIN150', N'Kính Mắt Thời Trang 00150', 50, 150000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp – Thiết kế: đơn giản – Màu: Đen – Kiểu dáng: Thời trang – Thích hợp: Sử dụng đi học, đi du lịch – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPKINH20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'KNMTK102', N'ÁO KHOÁC NAM KNMTK102', 80, 399000, NULL, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: trắng, đen, xanh navy– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'POMTK201', N'Áo polo nam POMTK201', 40, 580000, 399000, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'POMTK202', N'ÁO POLO NAM POMTK202', 50, 580000, 399000, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'POMTK203', N'Áo polo nam POMTK203', 20, 450000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'POTTK214', N'Áo polo nam POTTK214', 30, 580000, 399000, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'POTTK217', N'Áo polo nam POTTK217', 90, 580000, 399000, N'38,39,40,41,42,43', 1, N'– Chất liệu: COTTON– Phom dáng: RELAX– Màu sắc:– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPAKHOAC20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QA79-6', N'Quần Âu Tây Nam QA79-6', 90, 340000, 245000, N'38,39,40,41,42,56', 1, N'– Chất liệu: Jeans– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: xanh indigo– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QACTK105', N'QUẦN ÂU NAM QACTK105', 40, 350000, 245000, N'38,39,40,41,42,45', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh da trời– Kiểu dáng: Slimfit– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QACTK202', N'QUẦN ÂU NAM QACTK202', 30, 350000, 245000, N'38,39,40,41,42,44', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh da trời– Kiểu dáng: Regular– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QACTK203', N'QUẦN ÂU NAM QACTK203', 90, 350000, 245000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xám– Kiểu dáng: Slimfit– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK003', N'QUẦN ÂU NAM QAUTK003', 70, 425000, 245000, N'38,39,40,41,42,51', 1, N'– Chất liệu: Cotton– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  nâu nhat, xám nhạt, xám đậm, đen, tiêu đâm, xanh indigo, be– Kiểu dáng: slim crop– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK007', N'QUẦN ÂU NAM QAUTK007', 80, 335000, 245000, N'38,39,40,41,42,50', 1, N'– Chất liệu: 97% Cotton– Màu sắc: đen, be, xám nhạt, nâu nhạt, xanh than– Kiểu dáng: Slimfit– Size: 29 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK009', N'QUẦN ÂU NAM QAUTK009', 60, 335000, 245000, N'38,39,40,41,42,49', 1, N'– Chất liệu: sợi vỉa tổng hợp– Đặc tính:– Kiểu dáng: Slimfit– Màu sắc: xám đậm, đen, xám nhạt– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK010', N'QUẦN ÂU NAM QAUTK010', 30, 419000, 245000, N'38,39,40,41,42,48', 1, N'– Chất liệu: sợi vỉa tổng hợp– Đặc tính:– Kiểu dáng: Slimfit– Màu sắc: xám đậm, xám– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK012', N'QUẦN ÂU NAM QAUTK012', 20, 419000, 245000, N'38,39,40,41,42,47', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xám– Kiểu dáng: Slimfit– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK016', N'QUẦN ÂU NAM QAUTK016', 40, 350000, 245000, N'38,39,40,41,42,46', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh indigo– Kiểu dáng: Slimfit– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK317', N'QUẦN ÂU NAM QAUTK317', 80, 340000, 245000, N'38,39,40,41,42,55', 1, N'– Chất liệu: Jeans– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: xanh indigo– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK320', N'QUẦN ÂU NAM QAUTK320', 50, 425000, NULL, N'38,39,40,41,42,54', 1, N'– Chất liệu: Jeans– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: xanh indigo– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK321', N'QUẦN ÂU NAM QAUTK321', 80, 425000, NULL, N'38,39,40,41,42,53', 1, N'– Chất liệu: Jeans– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: đen– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QAUTK355', N'QUẦN ÂU NAM QAUTK355', 10, 425000, 245000, N'38,39,40,41,42,52', 1, N'– Chất liệu: Jeans– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: xanh indigo– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QBKTK201', N'QUẦN KAKI NAM QBKTK201', 50, 360000, 288000, N'38,39,40,41,42,83', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  xanh da trời, cam, xám– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QGGTK104', N'QUẦN JOGGER KAKI NAM QGGTK104', 50, 320000, 256000, N'38,39,40,41,42,78', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: đen– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QGKTK101', N'QUẦN JOGGER KAKI NAM QGKTK101', 100, 320000, 288000, N'38,39,40,41,42,80', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  đen– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QGNTK105', N'QUẦN JOGGER NAM QGNTK105', 30, 320000, 256000, N'38,39,40,41,42,79', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  Rêu, be, vang, đen– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK007', N'QUẦN JEANS NAM QJDTK007', 20, 360000, 288000, N'38,39,40,41,42,70', 1, N'– Chất liệu: Vải Kaki– Màu sắc: xanh da trời, xám đâm, đen, be, xanh cổ vịt– Kiểu dáng: Ống ôm thời trang– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK008', N'QUẦN JEANS NAM QJDTK008', 50, 360000, 272000, N'38,39,40,41,42,76', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh da trời– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK009', N'QUẦN JEANS NAM QJDTK009#', 70, 350000, 280000, N'38,39,40,41,42,75', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  tiêu đậm, xanh tím than, đen– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK011', N'QUẦN JEANS NAM QJDTK011', 60, 350000, 280000, N'38,39,40,41,42,74', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh da trời– Kiểu dáng: Slimfit– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK012', N'QUẦN JEANS NAM QJDTK012', 100, 380000, 304000, N'38,39,40,41,42,72', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh da trời– Kiểu dáng: Slimfit– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK016', N'QUẦN JEANS NAM QJDTK016', 40, 360000, 288000, N'38,39,40,41,42,71', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh da trời– Kiểu dáng: Slimfit– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK101', N'QUẦN JEANS NAM QJDTK101', 40, 430000, 199000, N'38,39,40,41,42,69', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  xám đậm, xám nhạt– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK134', N'QUẦN JEANS NAM QJDTK134', 80, 350000, 245000, N'38,39,40,41,42,62', 1, N'– Chất liệu: VẢI T/R – SỢI VẢI TỔNG HỢP– Đặc tính: QUẦN CẠP CHUN, GẤU GẬP LƠ – VÊ 2,5CM TÚI QUẦN THIẾT KẾ CHÉO– Kiểu dáng: SLIMFIT– Màu sắc: xám đậm, xám nhạt, đen– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK139', N'QUẦN JEANS NAM QJDTK139', 50, 419000, 245000, N'38,39,40,41,42,65', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh da trời– Kiểu dáng: Slimfit– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK140', N'QUẦN JEANS NAM QJDTK140', 50, 320000, NULL, N'38,39,40,41,42,66', 1, N'– Chất liệu: KAKI GIÓ– Đặc tính: QUẦN BO GẤU 65CM , TÚI HỘP CÓ NẮP IN CHỮ NEON– Kiểu dáng: SLIMFIT– Màu sắc: đen, xanh indigo, be– Kiểu dáng: Ống ôm– Size: 28->32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong></p><p> </p></div>', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK141', N'QUẦN JEANS NAM QJDTK141', 10, 419000, 245000, N'38,39,40,41,42,64', 1, N'– Chất liệu: Vải cao cấp– Màu sắc: đen, xám đạm, vàng bò– Kiểu dáng: Ống Suông– Size: 29 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK1905', N'QUẦN JEANS NAM QJDTK1905#', 10, 380000, 304000, N'38,39,40,41,42,73', 1, N'– Chất liệu: Jeans cotton– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: đen– Kiểu dáng: Slimfit– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK202', N'QUẦN JEANS NAM QJDTK202', 40, 350000, 245000, N'38,39,40,41,42,63', 1, N'– Chất liệu: 97% COTTON, 3% SPANDEX– Kiểu dáng: REGULAR– Màu sắc: đen, be– Kiểu dáng: Ống ôm thời trang– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK207', N'Quần jeans nam QJDTK207', 20, 340000, 245000, N'38,39,40,41,42,61', 1, N'– Chất liệu: KAKI– Đặc tính:– Kiểu dáng: CHINO– Màu sắc: xám đậm, xám nhạt, vàng nhạt, đen, cam nhạt, be– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK208', N'Quần jeans nam QJDTK208', 20, 340000, 245000, N'38,39,40,41,42,60', 1, N'– Chất liệu: Jeans– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: trắng– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK210', N'Quần jeans nam QJDTK210', 40, 340000, 245000, N'38,39,40,41,42,59', 1, N'– Chất liệu: Jeans– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: xám– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK212', N'Quần jeans nam QJDTK212', 10, 340000, 245000, N'38,39,40,41,42,58', 1, N'– Chất liệu: Jeans– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: xanh da trời– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QJDTK23', N'Quần jeans nam QJDTK23', 20, 360000, NULL, N'38,39,40,41,42,57', 1, N'– Chất liệu: Jeans– Đặc tính:– Kiểu dáng: REGULAR– Màu sắc: xanh indigo– Size: 28 – 29 – 30 – 31 – 32 – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQAU20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QKBTK202', N'QUẦN KAKI NAM QKBTK202', 60, 320000, 288000, N'38,39,40,41,42,81', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  xanh da trời, be– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QKKTK101', N'QUẦN KAKI NAM QKKTK101', 60, 360000, 288000, N'38,39,40,41,42,82', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  xanh inavy, trắng, đen, nâu– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QKKTK702', N'QUẦN ÂU KAKI NAM QKKTK702', 10, 360000, 288000, N'38,39,40,41,42,85', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh indigo– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QKKTK704', N'QUẦN ÂU KAKI NAM QKKTK704', 100, 380000, NULL, N'38,39,40,41,42,84', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xám– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJEANS20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QS888', N'Quần Short Nam QS888', 40, 280000, 156455, N'38,39,40,41,42,115', 1, N'– Chất liệu: 100% COTTON– Đặc tính: In hình cao su– Phom: Regular– Màu: hồng vỏ đỗ, đen, trắng– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</p><h2>-HƯỚNG DẪN CHỌN SIZE</h2><p>Size M: 50-57kg / Cao 1m53 – 1m68Size L: 58-64kg / Cao 1m57 – 1m70Size XL: 65-70kg / Cao 1m66 – 1m76Size XXL: 71-76kg / Cao 1m70 – 1m85Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc</p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN002', N'QUẦN SHORT NAM QSJCN002', 80, 290000, 203000, N'38,39,40,41,42,110', 1, N'– Chất liệu: Vải cao cấp– Màu sắc: đen, xanh da trời, xám– Kiểu dáng: Ống Suông– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/Qu%E1%BA%A7n-%C3%82u-Nam-c%C3%B3-3-m%C3%A0u-X%C3%A1m-%C4%90en-Xanh-da-tr%E1%BB%9DiTK321-i886787392087168735"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN003', N'QUẦN SHORT NAM QSJCN003', 20, 295000, 206500, N'38,39,40,41,42,109', 1, N'– Chất liệu: cao cấp– Màu sắc: đen– Kiểu dáng: Ống ôm thời trang– Size: 28 – 29 – 30 – 31 – 32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN004', N'QUẦN SHORT NAM QSJCN004', 70, 295000, 206500, N'38,39,40,41,42,108', 1, N'– Chất liệu: Vải denim skinny– Màu sắc: đen– Kiểu dáng: Ống ôm– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN011', N'QUẦN SHORT NAM QSJCN011', 90, 379000, 265300, N'38,39,40,41,42,105', 1, N'– Chất liệu: Vải denim skinny– Màu sắc: Xanh đen– Kiểu dáng: Ống ôm– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN016', N'QUẦN SHORT NAM QSJCN016', 50, 299000, 209300, N'38,39,40,41,42,107', 1, N'– Chất liệu: Vải denim skinny– Màu sắc: đen– Kiểu dáng: Ống ôm– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN017', N'QUẦN SHORT NAM QSJCN017', 100, 379000, 265300, N'38,39,40,41,42,106', 1, N'– Chất liệu: Vải denim skinny– Màu sắc: đen– Kiểu dáng: Ống ôm– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN018', N'QUẦN SHORT NAM QSJCN018', 60, 329000, 230300, N'38,39,40,41,42,104', 1, N'– Chất liệu: cao cấp– Màu sắc: đen, xanh navy, xanh indigo, be, xanh rêu– Kiểu dáng: Ống ôm thời trang– Size: 28 – 29 – 30 – 31 – 32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN201', N'Quần short nam QSJCN201', 60, 280000, 156450, N'38,39,40,41,42,89', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xám– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQKAKI20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN202', N'Quần short nam QSJCN202', 100, 380000, 266000, N'38,39,40,41,42,96', 1, N'– Chất liệu: cao cấp– Màu sắc: xám, đen, xanh lá– Kiểu dáng: Ống ôm thời trang– Size: 28 – 29 – 30 – 31 – 32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN203', N'Quần short nam QSJCN203', 70, 380000, 266000, N'38,39,40,41,42,95', 1, N'– Chất liệu: Vải denim skinny– Màu sắc: đen– Kiểu dáng: Ống ôm– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN204', N'Quần short nam QSJCN204', 30, 310000, 217000, N'38,39,40,41,42,94', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  xám– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN205', N'Quần short nam QSJCN205', 20, 310000, 217000, N'38,39,40,41,42,93', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  đen, xám, xanh indigo, xanh anvy– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN206', N'Quần short nam QSJCN206', 70, 200000, 149000, N'38,39,40,41,42,92', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  đen, xám, xanh navy, xanh indigo– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN207', N'Quần short nam QSJCN207', 10, 200000, 149000, N'38,39,40,41,42,91', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: đen– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN208', N'Quần short nam QSJCN208', 80, 280000, 156450, N'38,39,40,41,42,90', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh indigo– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQKAKI20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSJCN209', N'Quần short nam QSJCN209', 30, 290000, NULL, N'38,39,40,41,42,88', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh navy– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJOGGER20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSKKTK002', N'QUẦN SHORT NAM QSKKTK002', 60, 329000, 230300, N'38,39,40,41,42,101', 1, N'– Chất liệu: Vải denim skinny– Màu sắc: xanh– Kiểu dáng: Ống ôm– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSKTK201', N'QUẦN SHORT NAM QSKTK201', 70, 399000, 279000, N'38,39,40,41,42,100', 1, N'– Chất liệu: Vải denim skinny– Màu sắc: xanh– Kiểu dáng: Ống ôm– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSKTK203', N'QUẦN SHORT NAM QSKTK203', 70, 380000, 266000, N'38,39,40,41,42,97', 1, N'– Chất liệu: Vải cao cấp– Màu sắc:  xám– Kiểu dáng: Ống Suông– Size: 29 – 32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và Shopee<a href="https://shopeevn/QU%E1%BA%A6N-%C3%82u-NamTK322-i886787392087164206"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSKTK204', N'QUẦN SHORT NAM QSKTK204', 80, 399000, 279000, N'38,39,40,41,42,99', 1, N'– Chất liệu: Vải cao cấp– Màu sắc: đen, xám, xanh navy– Kiểu dáng: Ống Suông– Size: 29 – 32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/QU%E1%BA%A6N-%C3%82u-NamTK322-i886787392087164206"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSVTK003', N'QUẦN SHORT NAM QSVTK003', 60, 260000, 156450, N'38,39,40,41,42,111', 1, N'– Chất liệu: Vải cao cấp– Màu sắc: đen, xanh navy, xám– Kiểu dáng: Ống Suông– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/Qu%E1%BA%A7n-%C3%A2u-nam-c%C3%B3-3-m%C3%A0u-%C4%90en-X%C3%A1m-Xanh-navy-TK320-i886787392087160931"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSVTK011', N'QUẦN SHORT NAM QSVTK011', 100, 329000, 230300, N'38,39,40,41,42,103', 1, N'– Chất liệu: cao cấp– Màu sắc: xanh indigo, xanh rêu, be, xanh navy– Kiểu dáng: Ống ôm thời trang– Size: 28 – 29 – 30 – 31 – 32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/360boutiquefashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSVTK205', N'QUẦN SHORT NAM QSVTK205', 90, 380000, 266000, N'38,39,40,41,42,98', 1, N'<span style="color: #848484; font-family: Helvetica, Arial, sans-serif;">– Chất liệu: Vải cao cấp</span><br style="box-sizing: border-box; color: #848484; font-family: Helvetica, Arial, sans-serif;"/><span style="color: #848484; font-family: Helvetica, Arial, sans-serif;">– Màu sắc:  xám</span><br style="box-sizing: border-box; color: #848484; font-family: Helvetica, Arial, sans-serif;"/><span style="color: #848484; font-family: Helvetica, Arial, sans-serif;">– Kiểu dáng: Ống Suông</span><br style="box-sizing: border-box; color: #848484; font-family: Helvetica, Arial, sans-serif;"/><span style="color: #848484; font-family: Helvetica, Arial, sans-serif;">– Size: 29 – 32</span><br style="box-sizing: border-box; color: #848484; font-family: Helvetica, Arial, sans-serif;"/><span style="color: #848484; font-family: Helvetica, Arial, sans-serif;">– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và </span><span style="box-sizing: border-box; font-weight: bold; color: #848484; font-family: Helvetica, Arial, sans-serif;">Shopee</span><span style="color: #848484; font-family: Helvetica, Arial, sans-serif;"></span><br style="box-sizing: border-box; color: #848484; font-family: Helvetica, Arial, sans-serif;"/><a href="https://shopeevn/QU%E1%BA%A6N-%C3%82u-NamTK322-i886787392087164206" style="box-sizing: border-box; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #848484; text-decoration-line: none; transition: all 04s ease 0s; font-family: Helvetica, Arial, sans-serif;"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSVTK206', N'Quần short nam QSVTK206', 90, 369000, 258300, N'38,39,40,41,42,87', 1, N'– Chất liệu: Vải denim skinny– Đặc tính: có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc: xanh da trời– Kiểu dáng: Ống ôm– Size: 28->32 – Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJOGGER20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSVTK209', N'Quần short nam QSVTK209', 80, 360000, 288000, N'38,39,40,41,42,86', 1, N'– Chất liệu: Vải cao cấp– Đặc tính : Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát– Màu sắc:  đen, xám, xám nhạt– Kiểu dáng: Ống Suông– Size: 29 – 32 -Hướng dẫn sử dụng-Giặt ở nhiệt độ bình thường, với đồ có màu tương tự– Không được dùng hóa chất tẩy– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường – Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPQJOGGER20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'QSVTK805', N'QUẦN SHORT NAM QSVTK805', 70, 280000, 156455, N'38,39,40,41,42,114', 1, N'– Chất liệu: Thun– Màu sắc: Xanh Rêu, xanh dương– Kiểu dáng: Ống ôm thời trang– Size: S – M – L – XL – XXL– Sản phẩm có mặt tại tất cả các shop trên hệ thống</p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SDKTK109', N'ÁO SƠ MI NAM SDKTK109', 80, 450000, 360000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu:  tiêu nhạt, tiêu đậm, xanh tím than, đen– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SDKTK110', N'ÁO SƠ MI NAM SDKTK110', 60, 340000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu:  trắng, vàng, đen– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SHDTK210', N'Áo sơ mi nam SHDTK210', 70, 320000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% cotton, hình in cao su– Phom: Regular– Màu: Vàng, be, trắng kem– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SHDTK220', N'Áo sơ mi nam SHDTK220', 90, 299000, 229000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: đen, be, xanh lá– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SHDTK221', N'Áo sơ mi nam SHDTK221', 40, 280000, 229000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: đen,xanh indigo, hồng đào– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SHNTK212', N'Áo sơ mi nam SHNTK212', 40, 329000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% cotton, hình in cao su– Phom: Regular– Màu: trắng kem– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SHNTK218-1', N'Áo sơ mi nam họa tiết SHNTK218-1', 10, 350000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% cotton, hình in cao su– Phom: Regular– Màu: trắng kem, be, cam, xám đâm, đen, xanh tím than, tiêu nhạt– Size: S – M– L – XL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPASOMI20210509', N'NCC001')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SHNTK218-4', N'Áo sơ mi nam họa tiết SHNTK218-4', 70, 245000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 97 % COTTON, 3% SPANDEX– Đặc tính: ÁO DÀI TAY , CỔ ĐỨC, CÓ LY SÚP THÂN SAU– Kiểu dáng: REGULAR– Màu sắc: xanh navy, xám, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SHNTK218-6', N'Áo sơ mi nam họa tiết SHNTK218-6', 10, 250000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu:  27% LINEN, 23% COTTON, 25% RAYON, 25% POLYESTER– Màu sắc: xanh indigo, xanh da trời, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SHNTK234', N'Áo sơ mi họa tiết nam SHNTK234', 30, 349000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: 100% cotton, hình in cao su– Phom: Regular– Màu: hồng vỏ độ, xanh indigo, trắng kem– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SKDTK104', N'ÁO SƠ MI NAM SKDTK104', 90, 429000, 343200, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: trắng, tiêu nhạt, đen– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SKDTK106', N'ÁO SƠ MI NAM SKDTK106', 60, 419000, NULL, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: Đỏ boocdo, xanh lá, đen– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SKDTK203', N'ÁO SƠ MI NAM SKDTK203', 30, 299000, 229000, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: xanh nhạt, xám đậm, cam nhạt– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SKKTK010', N'QUẦN SHORT NAM SKKTK010', 30, 329000, 230300, N'38,39,40,41,42,102', 1, N'– Chất liệu: Vải cao cấp– Màu sắc: đen, be, xanh rêu, xanh indigo, nâu– Kiểu dáng: Ống Suông– Size: 29 – 32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/QU%E1%BA%A6N-%C3%82u-NamTK322-i886787392087164206"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SKKTK851', N'QUẦN SHORT KAKI NAM SKKTK851', 70, 310000, 217000, N'38,39,40,41,42,113', 1, N'– Chất liệu: Vải denim skinny– Màu sắc: Xanh– Kiểu dáng: Ống ôm– Size: 28->32– Sản phẩm có mặt tại tất cả các shop trên hệ thống</p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SKKTK852', N'QUẦN SHORT NAM SKKTK852', 20, 260000, 156450, N'38,39,40,41,42,112', 1, N'– Chất liệu: Vải cao cấp– Màu sắc: nâu– Kiểu dáng: Ống Suông– Size: 28->32– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và  Shopee</strong><a href="https://shopeevn/Qu%E1%BA%A7n-%C3%82u-Nam-TK317-i886787392087147071"><img src="https://cfshopeevn/file/d0a531148f265973be3c274237e6252d"/></a></p></div>', N'LSPQSHORT20210509', N'NCC002')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SM710', N'ÁO SƠ MI SM710', 30, 369000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: trắng, đen, nâu– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và Shopee.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img class="lazyloaded" data-src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d" src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMD5055', N'ÁO SƠ MI NAM SMD5055', 20, 250000, 183750, N'38,39,40,41,42,43', 1, N'<div class="current-comment js-friendly-links js-open-card"><p style="line-height: 1.71429; margin-bottom: 1.71429rem;">– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: vàng– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a></p><h2 style="margin-top: 1.71429rem; margin-bottom: 1.71429rem; font-size: 1.28571rem;">HƯỚNG DẪN CHỌN SIZE</h2><p style="line-height: 1.71429; margin-bottom: 1.71429rem;">Size M: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.</p><p><span style="font-size: 1rem;">Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc</span><span style="font-size: 1rem;"> </span>', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMDCN004', N'ÁO SƠ MI NAM SMDCN004', 70, 339000, 237300, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: đỏ, trắng, đen– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMDCN006', N'ÁO SƠ MI NAM SMDCN006', 60, 350000, 245000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: be, hồng– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMDCN012', N'ÁO SƠ MI NAM SMDCN012', 20, 380000, 237300, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: xanh indigo, trắng, đen– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMDTK006', N'ÁO SƠ MI NAM SMDTK006', 60, 290000, 203000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: đen– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMDTK011', N'ÁO SƠ MI NAM SMDTK011', 80, 339000, 237300, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: xám, đen– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMDTK012', N'ÁO SƠ MI NAM SMDTK012', 90, 339000, 237300, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: trắng, be– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMNTK001', N'ÁO SƠ MI NAM SMNTK001', 90, 319000, 223300, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: xanh indigo, trắng, đen– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMNTK002', N'ÁO SƠ MI NAM SMNTK002', 80, 349000, 193589, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: cam, đen, xanh– Có đầy đủ các size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SMNTk114', N'ÁO SƠ MI SMNTk114', 90, 390000, 273000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: trắng, đen, xám– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và Shopee.<a href="https://shopee.vn/360boutique.fashion?fbclid=IwAR3AC_2m5fxiYJijSlQB_nlD9YLvRo9Lm8J7ty0GfAA1xYwwhC9jTn23HHQ"><img class="lazyloaded" data-src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d" src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc thoải mái.', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'SPORTYG1011', N'GIÀY SNEKER SPORTY G1011', 10, 750000, NULL, NULL, 1, N'– Chất liệu: Vải mềm co giãn – Kiểu dáng: Giày thể thao cách điệu – Màu sắc: Đen – Size: 39 – 43 – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPGIAYNAM20210509', N'NCC004')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STDTK108', N'ÁO SƠ MI NAM STDTK108', 40, 360000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu:  Vàng, trắng– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STDTK117', N'ÁO SƠ MI NAM STDTK117', 100, 299000, 229000, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: vàng bò, xanh indigo– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STDTK201', N'ÁO SƠ MI NAM STDTK201', 70, 380000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: trắng, đỏ, đen– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STDTK204', N'ÁO SƠ MI NAM STDTK204', 40, 450000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.– Màu: trắng, tiêu nhạt, đen– Size: M – L – XL – XXL+ Hướng dẫn sử dụng:– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.– Không được dùng hóa chất tẩy.– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống. - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STDTK205', N'ÁO SƠ MI NAM STDTK205', 50, 390000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu:  xanh indigo– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STDTK206', N'ÁO SƠ MI NAM STDTK206', 40, 450000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu:  xanh indigo– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STDTK208', N'ÁO SƠ MI NAM STDTK208', 20, 450000, 360000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu:  vàng úa, cam đậm, be, đen– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STDTK211', N'Áo sơ mi nam STDTK211', 80, 280000, 229000, N'38,39,40,41,42,43', 1, N'– Vải cao cấp, khả năng thấm hút mồ hôi cực tốt– Màu sắc: xanh tím than, xanh indigo, nâu nhạt, xanh nhạt, trắng kem– Có đầy đủ các size: M – L – XL – XXL– <strong>Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống</strong> - SizeM: 50-57kg / Cao 1m53 – 1m68 Size L: 58-64kg / Cao 1m57 – 1m70 Size XL: 65-70kg / Cao 1m66 – 1m76 Size XXL: 71-76kg / Cao 1m70 – 1m85.Tùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STNTK214', N'Áo sơ mi nam STNTK214', 50, 299000, 229000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: đỏ, be, xám đậm– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STNTK216', N'Áo sơ mi nam STNTK216', 40, 320000, 229000, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: đen, be, nâu nhạt– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPASOMI20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'STNTK217', N'Áo sơ mi nam STNTK217', 70, 349000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: Xám đậm, cam đậm, vàng cam– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.', N'LSPAPOLO20210509', N'NCC001')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'VD0350_2', N'Ví Da Thời Trang Nam VD0350_2', 90, 350000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp – Thiết kế: đơn giản – Màu: Đen – Kiểu dáng: Thời trang – Thích hợp: Sử dụng đi học, đi du lịch – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPVIDA20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'VD0350_4', N'Ví Da Thời Trang Nam VD0350_4', 40, 350000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp – Thiết kế: đơn giản – Màu: Đen – Kiểu dáng: Thời trang – Thích hợp: Sử dụng đi học, đi du lịch – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPVIDA20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'VD0350_5', N'Ví Da Thời Trang Nam VD0350_5', 60, 350000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp – Thiết kế: đơn giản – Màu: Đen, nâu – Kiểu dáng: Thời trang – Thích hợp: Sử dụng đi học, đi du lịch – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPVIDA20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'VD0350_6', N'Ví Da Thời Trang Nam VD0350_6', 80, 350000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp – Thiết kế: đơn giản – Màu: Đen, nâu – Kiểu dáng: Thời trang – Thích hợp: Sử dụng đi học, đi du lịch – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPVIDA20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'VD0350_7', N'Ví Da Thời Trang Nam VD0350_7', 50, 350000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp – Thiết kế: đơn giản – Màu: Đen, nâu – Kiểu dáng: Thời trang – Thích hợp: Sử dụng đi học, đi du lịch – Sản phẩm có mặt tại tất cả các shop trên hệ thống.', N'LSPVIDA20210509', N'NCC003')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [SoLuongTon], [DonGia], [GiaSale], [Size], [TrangThai], [MoTa], [MaLoaiSanPham], [MaNhaCungCap]) VALUES (N'VESTK503', N'ÁO VEST NAM VESTK503', 20, 340000, NULL, N'38,39,40,41,42,43', 1, N'– Chất liệu: Vải cao cấp– Màu: đen– Size: M – L – XL – XXL– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống và <strong>Shopee</strong>.<a href="https://shopee.vn/QU%E1%BA%A6N-%C3%82u-NamTK322-i.88678739.2087164206"><img src="https://cf.shopee.vn/file/d0a531148f265973be3c274237e6252d"/></a>', N'LSPAVEST20210509', N'NCC001')
INSERT [dbo].[TaiKhoanNhanVien] ([MaNhanVien], [TenTaiKhoan], [MatKhau], [NgayTao], [HoatDong]) VALUES (N'NV001', N'suong', N'1234567', CAST(0x60430B00 AS Date), 1)
ALTER TABLE [dbo].[BangPhanCong]  WITH CHECK ADD  CONSTRAINT [fk_BPC_CT] FOREIGN KEY([MaCaTruc])
REFERENCES [dbo].[CaTruc] ([MaCaTruc])
GO
ALTER TABLE [dbo].[BangPhanCong] CHECK CONSTRAINT [fk_BPC_CT]
GO
ALTER TABLE [dbo].[BangPhanCong]  WITH CHECK ADD  CONSTRAINT [fk_BPC_NV] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[BangPhanCong] CHECK CONSTRAINT [fk_BPC_NV]
GO
ALTER TABLE [dbo].[BangPhanCong]  WITH CHECK ADD  CONSTRAINT [fk_BPC_PQ] FOREIGN KEY([MaPhanQuyen])
REFERENCES [dbo].[BangPhanQuyen] ([maPhanQuyen])
GO
ALTER TABLE [dbo].[BangPhanCong] CHECK CONSTRAINT [fk_BPC_PQ]
GO
ALTER TABLE [dbo].[ChiTietDonBanHang]  WITH CHECK ADD  CONSTRAINT [fk_CTDBH_DBH] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[HoaDonBanHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonBanHang] CHECK CONSTRAINT [fk_CTDBH_DBH]
GO
ALTER TABLE [dbo].[ChiTietDonBanHang]  WITH CHECK ADD  CONSTRAINT [fk_CTDBH_SP] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonBanHang] CHECK CONSTRAINT [fk_CTDBH_SP]
GO
ALTER TABLE [dbo].[ChiTietDonBaoHanh]  WITH CHECK ADD  CONSTRAINT [fk_CTHDBH_SP] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonBaoHanh] CHECK CONSTRAINT [fk_CTHDBH_SP]
GO
ALTER TABLE [dbo].[ChiTietDonNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_CTDNH_SP] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonNhapHang] CHECK CONSTRAINT [fk_CTDNH_SP]
GO
ALTER TABLE [dbo].[ChiTietPhanQuyen]  WITH CHECK ADD  CONSTRAINT [fk_CTPQ_BPQ] FOREIGN KEY([MaPhanQuyen])
REFERENCES [dbo].[BangPhanQuyen] ([maPhanQuyen])
GO
ALTER TABLE [dbo].[ChiTietPhanQuyen] CHECK CONSTRAINT [fk_CTPQ_BPQ]
GO
ALTER TABLE [dbo].[ChiTietPhanQuyen]  WITH CHECK ADD  CONSTRAINT [fk_CTPQ_DMMH] FOREIGN KEY([MaManHinh])
REFERENCES [dbo].[DMManHinh] ([MaManHinh])
GO
ALTER TABLE [dbo].[ChiTietPhanQuyen] CHECK CONSTRAINT [fk_CTPQ_DMMH]
GO
ALTER TABLE [dbo].[DanhMucHinh]  WITH CHECK ADD  CONSTRAINT [fk_DMH_SP] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DanhMucHinh] CHECK CONSTRAINT [fk_DMH_SP]
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD  CONSTRAINT [fk_DH_BD] FOREIGN KEY([MaBieuDo])
REFERENCES [dbo].[BieuDoThongKe] ([MaBieuDo])
GO
ALTER TABLE [dbo].[DoanhThu] CHECK CONSTRAINT [fk_DH_BD]
GO
ALTER TABLE [dbo].[DonNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_DNH_NCC] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[DonNhapHang] CHECK CONSTRAINT [fk_DNH_NCC]
GO
ALTER TABLE [dbo].[DonNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_DNH_NV] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DonNhapHang] CHECK CONSTRAINT [fk_DNH_NV]
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [fk_DBH_KH] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDonBanHang] CHECK CONSTRAINT [fk_DBH_KH]
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [fk_DBH_NV] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDonBanHang] CHECK CONSTRAINT [fk_DBH_NV]
GO
ALTER TABLE [dbo].[HoaDonBaoHanh]  WITH CHECK ADD  CONSTRAINT [fk_HDBH_KH] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDonBaoHanh] CHECK CONSTRAINT [fk_HDBH_KH]
GO
ALTER TABLE [dbo].[HoaDonBaoHanh]  WITH CHECK ADD  CONSTRAINT [fk_HDBH_NV] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDonBaoHanh] CHECK CONSTRAINT [fk_HDBH_NV]
GO
ALTER TABLE [dbo].[LoaiSanPham]  WITH CHECK ADD  CONSTRAINT [fk_DM_LSP] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMucSanPham] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[LoaiSanPham] CHECK CONSTRAINT [fk_DM_LSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_SP_LSP] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_SP_LSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_SP_NCC] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_SP_NCC]
GO
ALTER TABLE [dbo].[TaiKhoanKhachHang]  WITH CHECK ADD  CONSTRAINT [fk_TKKH_KH] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[TaiKhoanKhachHang] CHECK CONSTRAINT [fk_TKKH_KH]
GO
ALTER TABLE [dbo].[TaiKhoanNhanVien]  WITH CHECK ADD  CONSTRAINT [fk_TKNV_NV] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoanNhanVien] CHECK CONSTRAINT [fk_TKNV_NV]
GO
