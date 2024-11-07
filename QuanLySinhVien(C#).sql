USE [QuanLySinhVien]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 11/7/2024 5:12:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[MaSV] [varchar](10) NOT NULL,
	[MaLopHocPhan] [nvarchar](10) NOT NULL,
	[Diem] [float] NULL,
	[MaHocKi] [int] NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaLopHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 11/7/2024 5:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocKi]    Script Date: 11/7/2024 5:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKi](
	[MaHocKi] [int] IDENTITY(1,1) NOT NULL,
	[TenHocKi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__HocKi__1EB551008C9F4CEB] PRIMARY KEY CLUSTERED 
(
	[MaHocKi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocPhi]    Script Date: 11/7/2024 5:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocPhi](
	[MaHocPhi] [int] IDENTITY(1,1) NOT NULL,
	[MaLopHocPhan] [nvarchar](10) NOT NULL,
	[MaSV] [varchar](10) NOT NULL,
	[MaHocKi] [int] NOT NULL,
	[NgayDong] [date] NULL,
 CONSTRAINT [PK__HocPhi__929232A251739ABB] PRIMARY KEY CLUSTERED 
(
	[MaHocPhi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 11/7/2024 5:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](100) NOT NULL,
	[MaNganh] [varchar](10) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan]    Script Date: 11/7/2024 5:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan](
	[MaLopHocPhan] [nvarchar](10) NOT NULL,
	[MaMonHoc] [nvarchar](10) NULL,
	[DiaDiem] [nvarchar](100) NULL,
	[MaGV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLopHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 11/7/2024 5:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaHP] [nvarchar](10) NOT NULL,
	[TenHP] [nvarchar](100) NOT NULL,
	[SoTinChi] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
 CONSTRAINT [PK__MonHoc__2725DFD96D890F3F] PRIMARY KEY CLUSTERED 
(
	[MaHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 11/7/2024 5:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[MaNganh] [varchar](10) NOT NULL,
	[TenNganh] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 11/7/2024 5:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [nvarchar](100) NULL,
	[SDT] [nvarchar](15) NULL,
	[MaLop] [varchar](10) NOT NULL,
 CONSTRAINT [PK__SinhVien__2725081A5EC470D4] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien_LopHocPhan]    Script Date: 11/7/2024 5:12:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien_LopHocPhan](
	[MaSV] [varchar](10) NOT NULL,
	[MaLopHocPhan] [nvarchar](10) NOT NULL,
	[MaHocKi] [int] NULL,
 CONSTRAINT [PK__SinhVien__AF0089D7A13C37ED] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaLopHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [DF__SinhVien__GioiTi__7D439ABD]  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_HocKi1] FOREIGN KEY([MaHocKi])
REFERENCES [dbo].[HocKi] ([MaHocKi])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_HocKi1]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_LopHocPhan] FOREIGN KEY([MaLopHocPhan])
REFERENCES [dbo].[LopHocPhan] ([MaLopHocPhan])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_LopHocPhan]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_SinhVien]
GO
ALTER TABLE [dbo].[HocPhi]  WITH CHECK ADD  CONSTRAINT [FK_HocPhi_HocKi] FOREIGN KEY([MaHocKi])
REFERENCES [dbo].[HocKi] ([MaHocKi])
GO
ALTER TABLE [dbo].[HocPhi] CHECK CONSTRAINT [FK_HocPhi_HocKi]
GO
ALTER TABLE [dbo].[HocPhi]  WITH CHECK ADD  CONSTRAINT [FK_HocPhi_SinhVien_LopHocPhan] FOREIGN KEY([MaSV], [MaLopHocPhan])
REFERENCES [dbo].[SinhVien_LopHocPhan] ([MaSV], [MaLopHocPhan])
GO
ALTER TABLE [dbo].[HocPhi] CHECK CONSTRAINT [FK_HocPhi_SinhVien_LopHocPhan]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Nganh] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[Nganh] ([MaNganh])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Nganh]
GO
ALTER TABLE [dbo].[LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK__LopHocPhan__MaMH__5BE2A6F2] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaHP])
GO
ALTER TABLE [dbo].[LopHocPhan] CHECK CONSTRAINT [FK__LopHocPhan__MaMH__5BE2A6F2]
GO
ALTER TABLE [dbo].[LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[LopHocPhan] CHECK CONSTRAINT [FK_LopHocPhan_GiaoVien]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop1] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop1]
GO
ALTER TABLE [dbo].[SinhVien_LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_LopHocPhan_HocKi] FOREIGN KEY([MaHocKi])
REFERENCES [dbo].[HocKi] ([MaHocKi])
GO
ALTER TABLE [dbo].[SinhVien_LopHocPhan] CHECK CONSTRAINT [FK_SinhVien_LopHocPhan_HocKi]
GO
ALTER TABLE [dbo].[SinhVien_LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_LopHocPhan_LopHocPhan] FOREIGN KEY([MaLopHocPhan])
REFERENCES [dbo].[LopHocPhan] ([MaLopHocPhan])
GO
ALTER TABLE [dbo].[SinhVien_LopHocPhan] CHECK CONSTRAINT [FK_SinhVien_LopHocPhan_LopHocPhan]
GO
ALTER TABLE [dbo].[SinhVien_LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_LopHocPhan_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[SinhVien_LopHocPhan] CHECK CONSTRAINT [FK_SinhVien_LopHocPhan_SinhVien]
GO
