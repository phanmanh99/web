USE [Quanlyhoc]
GO
/****** Object:  Table [dbo].[DangKyHoc]    Script Date: 12/9/2020 9:15:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyHoc](
	[MaDK] [int] IDENTITY(1,1) NOT NULL,
	[MaSV] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[NamHK] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DangKyHoc] PRIMARY KEY CLUSTERED 
(
	[MaDK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhoaDaoTao]    Script Date: 12/9/2020 9:15:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaDaoTao](
	[MaKhoa] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhoaDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/9/2020 9:15:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[MaKhoa] [int] NOT NULL,
	[TenMon] [nvarchar](50) NULL,
	[SoTinChi] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/9/2020 9:15:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [int] IDENTITY(1,1) NOT NULL,
	[MaKhoa] [int] NOT NULL,
	[LopBC] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DangKyHoc] ON 

INSERT [dbo].[DangKyHoc] ([MaDK], [MaSV], [MaMon], [NamHK], [GhiChu]) VALUES (1, 1, 1, N'6', NULL)
INSERT [dbo].[DangKyHoc] ([MaDK], [MaSV], [MaMon], [NamHK], [GhiChu]) VALUES (2, 2, 3, N'7', NULL)
INSERT [dbo].[DangKyHoc] ([MaDK], [MaSV], [MaMon], [NamHK], [GhiChu]) VALUES (3, 3, 3, N'7', NULL)
INSERT [dbo].[DangKyHoc] ([MaDK], [MaSV], [MaMon], [NamHK], [GhiChu]) VALUES (4, 4, 2, N'8', NULL)
INSERT [dbo].[DangKyHoc] ([MaDK], [MaSV], [MaMon], [NamHK], [GhiChu]) VALUES (5, 3, 4, N'8', NULL)
INSERT [dbo].[DangKyHoc] ([MaDK], [MaSV], [MaMon], [NamHK], [GhiChu]) VALUES (6, 5, 5, N'9', NULL)
SET IDENTITY_INSERT [dbo].[DangKyHoc] OFF
SET IDENTITY_INSERT [dbo].[KhoaDaoTao] ON 

INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (1, N'CNTT', N'0987032867')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (2, N'Kinh Tế', N'0912879879')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (3, N'GDTH', N'0123345345')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (4, N'Luật ', N'0123456789')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (5, N'Xây dựng', N'0975456785')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (10, N'SPTN', N'09876738678')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (11, N'SPNN', N'09273992888')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (13, N'CN hóa sinh môi trường', N'0123987542')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (14, N'Du lịch', N'0987843314')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (15, N'CNTP', N'0987032867')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (17, N'SPXH', N'0987032867')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (20, N'Kế toán', N'0987032869')
INSERT [dbo].[KhoaDaoTao] ([MaKhoa], [TenKhoa], [Phone]) VALUES (22, N'Quản lý nhà nước', N'0987032829')
SET IDENTITY_INSERT [dbo].[KhoaDaoTao] OFF
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([MaMon], [MaKhoa], [TenMon], [SoTinChi], [GhiChu]) VALUES (1, 1, N'Lập trình Java', 3, NULL)
INSERT [dbo].[MonHoc] ([MaMon], [MaKhoa], [TenMon], [SoTinChi], [GhiChu]) VALUES (2, 2, N'Quản trị marketing', 3, NULL)
INSERT [dbo].[MonHoc] ([MaMon], [MaKhoa], [TenMon], [SoTinChi], [GhiChu]) VALUES (3, 4, N'luật gia đình', 4, NULL)
INSERT [dbo].[MonHoc] ([MaMon], [MaKhoa], [TenMon], [SoTinChi], [GhiChu]) VALUES (4, 3, N'múa', 4, NULL)
INSERT [dbo].[MonHoc] ([MaMon], [MaKhoa], [TenMon], [SoTinChi], [GhiChu]) VALUES (5, 5, N'công trình', 3, NULL)
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
SET IDENTITY_INSERT [dbo].[SinhVien] ON 

INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (1, 3, N'58K2', N'Nguyen Thao Anh', N'23/2/1993', N'vinh')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (2, 2, N'60B1', N'Trần Văn Quân', N'12/1/2000', N'thái hòa')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (3, 10, N'59A1', N'Tran Van Anh', N'23/3/1999', N'nghi lộc')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (4, 4, N'58B2', N'Hoàng Hải Chi', N'12/2/1999', N'vinh')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (5, 5, N'59K1', N'Phạm Quang Nhật', N'22/12/1998', N'quỳnh lưu')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (16, 3, N'60A2', N'Nguyễn Thị Thảo', N'23/2/1999', N'nghi lộc')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (20, 13, N'58K2', N'Nguyễn Văn Thành', N'12/2/1999', N'vinh')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (21, 13, N'58K2', N'Trần Văn Toàn', N'22/2/1999', N'vinh')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (22, 14, N'58B2', N'Nguyễn Hoài Thương', N'11/2/1999', N'hà nội')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (23, 14, N'59K1', N'Nguyễn Thu Uyên', N'23/3/1999', N'vinh')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (24, 1, N'60K2', N'Trần văn tuấn', N'19/9/1998', N'nghi lộc')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (25, 1, N'61K1', N'Nguyễn Thị Hà', N'23/2/1998', N'vinh')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (26, 17, N'58K4', N'Nguyễn Thị ngọc', N'23/2/1999', N'thái hòa')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (27, 20, N'58K3', N'Đỗ Thị Hải', N'23/2/1993', N'thái hòa')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (28, 10, N'58b2', N'Đỗ Thị Hải', N'23/2/1999', N'thái hòa')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (29, 13, N'58K3', N'Nguyễn Thảo Anh', N'23/2/1999', N'thái hòa')
INSERT [dbo].[SinhVien] ([MaSV], [MaKhoa], [LopBC], [HoTen], [NgaySinh], [DiaChi]) VALUES (32, 2, N'58b3', N'Đỗ Thị Hà', N'22/3/2001', N'thanh hóa')
SET IDENTITY_INSERT [dbo].[SinhVien] OFF
ALTER TABLE [dbo].[DangKyHoc]  WITH CHECK ADD  CONSTRAINT [FK_DangKyHoc_MonHoc] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
GO
ALTER TABLE [dbo].[DangKyHoc] CHECK CONSTRAINT [FK_DangKyHoc_MonHoc]
GO
ALTER TABLE [dbo].[DangKyHoc]  WITH CHECK ADD  CONSTRAINT [FK_DangKyHoc_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[DangKyHoc] CHECK CONSTRAINT [FK_DangKyHoc_SinhVien]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_KhoaDaoTao] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KhoaDaoTao] ([MaKhoa])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_KhoaDaoTao]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_KhoaDaoTao] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KhoaDaoTao] ([MaKhoa])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_KhoaDaoTao]
GO
