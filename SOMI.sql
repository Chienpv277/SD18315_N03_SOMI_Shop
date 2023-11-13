USE [DB_Nhom3_09_11]
GO
/****** Object:  Table [dbo].[anh]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anh](
	[id_hinh_anh] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_Anh] PRIMARY KEY CLUSTERED 
(
	[id_hinh_anh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chat_lieu]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

select id_chat_lieu, ma, ten from chat_lieu

CREATE TABLE [dbo].[chat_lieu](
	[id_chat_lieu] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[id_chat_lieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_san_pham]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_san_pham](
	[id_chi_tiet_san_pham] [int] IDENTITY(1,1) NOT NULL,
	[id_san_pham] [int] NULL,
	[id_mau_sac] [int] NULL,
	[id_hang] [int] NULL,
	[id_size] [int] NULL,
	[id_chat_lieu] [int] NULL,
	[id_co_ao] [int] NULL,
	[id_dang_ao] [int] NULL,
	[id_co_tay] [int] NULL,
	[id_hinh_anh] [int] NULL,
	[so_luong_ton] [int] NULL,
	[gia] [float] NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[id_chi_tiet_san_pham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_vu](
	[id_chuc_vu] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[id_chuc_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[co_ao]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[co_ao](
	[id_co_ao] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_CoAo] PRIMARY KEY CLUSTERED 
(
	[id_co_ao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[co_tay]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[co_tay](
	[id_co_tay] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_CoTay] PRIMARY KEY CLUSTERED 
(
	[id_co_tay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dang_ao]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dang_ao](
	[id_dang_ao] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_DangAo] PRIMARY KEY CLUSTERED 
(
	[id_dang_ao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hang]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hang](
	[id_hang] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hang] PRIMARY KEY CLUSTERED 
(
	[id_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id_hoa_don] [int] IDENTITY(1,1) NOT NULL,
	[id_nhan_vien] [int] NULL,
	[id_khach_hang] [int] NULL,
	[id_voucher] [int] NULL,
	[ngay_thanh_toan] [date] NULL,
	[sdt] [nvarchar](max) NULL,
	[dia_chi] [nvarchar](max) NULL,
	[phi_ship] [float] NULL,
	[tong_tien] [float] NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
	[hinh_thuc_thanh_toan] [nvarchar](max) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[id_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[id_chi_tiet_san_pham] [int] NOT NULL,
	[id_hoa_don] [int] NOT NULL,
	[so_luong] [int] NULL,
	[gia] [float] NULL,
	[thanh_tien] [float] NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[id_chi_tiet_san_pham] ASC,
	[id_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_time_line]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_time_line](
	[id_hoa_don_time_line] [int] IDENTITY(1,1) NOT NULL,
	[id_hoa_don] [int] NULL,
	[moc_thoi_gian] [int] NULL,
	[trang_thai] [int] NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_HoaDonTimeLine] PRIMARY KEY CLUSTERED 
(
	[id_hoa_don_time_line] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id_khach_hang] [int] IDENTITY(1,1) NOT NULL,
	[ho_ten] [nvarchar](max) NULL,
	[sdt] [nvarchar](max) NULL,
	[dia_chi] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[update_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[id_khach_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mau_sac]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mau_sac](
	[id_mau_sac] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED 
(
	[id_mau_sac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[id_nhan_vien] [int] IDENTITY(1,1) NOT NULL,
	[id_chuc_vu] [int] NULL,
	[ho_ten] [nvarchar](max) NULL,
	[ngay_sinh] [date] NULL,
	[sdt] [nvarchar](max) NULL,
	[gioi_tinh] [nvarchar](max) NULL,
	[dia_chi] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[so_can_cuoc] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[id_nhan_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id_san_pham] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[id_san_pham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[id_size] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[created_at] [date] NULL,
	[update_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[update_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[id_size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vourcher]    Script Date: 11/10/2023 7:56:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vourcher](
	[id_voucher] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](max) NULL,
	[ten] [nvarchar](max) NULL,
	[ngay_bat_dau] [date] NULL,
	[ngay_ket_thuc] [date] NULL,
	[%_khuyen_mai] [int] NULL,
	[trang_thai] [int] NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [nvarchar](max) NULL,
	[updated_by] [nvarchar](max) NULL,
	[deleted] [nvarchar](max) NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[id_voucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] ADD  CONSTRAINT [DF_HoaDonChiTiet_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_Anh] FOREIGN KEY([id_hinh_anh])
REFERENCES [dbo].[anh] ([id_hinh_anh])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK_ChiTietSanPham_Anh]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_ChatLieu] FOREIGN KEY([id_chat_lieu])
REFERENCES [dbo].[chat_lieu] ([id_chat_lieu])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK_ChiTietSanPham_ChatLieu]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_CoAo] FOREIGN KEY([id_co_ao])
REFERENCES [dbo].[co_ao] ([id_co_ao])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK_ChiTietSanPham_CoAo]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_CoTay] FOREIGN KEY([id_co_tay])
REFERENCES [dbo].[co_tay] ([id_co_tay])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK_ChiTietSanPham_CoTay]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_DangAo] FOREIGN KEY([id_dang_ao])
REFERENCES [dbo].[dang_ao] ([id_dang_ao])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK_ChiTietSanPham_DangAo]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_Hang] FOREIGN KEY([id_hang])
REFERENCES [dbo].[hang] ([id_hang])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK_ChiTietSanPham_Hang]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_MauSac] FOREIGN KEY([id_mau_sac])
REFERENCES [dbo].[mau_sac] ([id_mau_sac])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK_ChiTietSanPham_MauSac]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_SanPham] FOREIGN KEY([id_san_pham])
REFERENCES [dbo].[san_pham] ([id_san_pham])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK_ChiTietSanPham_SanPham]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_Size] FOREIGN KEY([id_size])
REFERENCES [dbo].[size] ([id_size])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK_ChiTietSanPham_Size]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id_khach_hang])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([id_nhan_vien])
REFERENCES [dbo].[nhan_vien] ([id_nhan_vien])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Voucher] FOREIGN KEY([id_voucher])
REFERENCES [dbo].[vourcher] ([id_voucher])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK_HoaDon_Voucher]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_ChiTietSanPham] FOREIGN KEY([id_chi_tiet_san_pham])
REFERENCES [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_ChiTietSanPham]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon] FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[hoa_don] ([id_hoa_don])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon]
GO
ALTER TABLE [dbo].[hoa_don_time_line]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonTimeLine_HoaDon] FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[hoa_don] ([id_hoa_don])
GO
ALTER TABLE [dbo].[hoa_don_time_line] CHECK CONSTRAINT [FK_HoaDonTimeLine_HoaDon]
GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([id_chuc_vu])
REFERENCES [dbo].[chuc_vu] ([id_chuc_vu])
GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
