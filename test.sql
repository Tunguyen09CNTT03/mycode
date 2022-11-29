USE [QLBENHVIEN]
GO
/****** Object:  Table [dbo].[BENHNHAN]    Script Date: 11/29/2022 8:03:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENHNHAN](
	[MABN] [varchar](5) NOT NULL,
	[HOTEN] [varchar](50) NULL,
	[NGAYSINH] [smalldatetime] NULL,
	[GIOITINH] [varchar](50) NULL,
	[SONGAYNV] [smalldatetime] NULL,
	[MAKHOA] [varchar](5) NULL,
 CONSTRAINT [PK_BENHNHAN] PRIMARY KEY CLUSTERED 
(
	[MABN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BENHVIEN]    Script Date: 11/29/2022 8:03:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENHVIEN](
	[MABV] [varchar](5) NOT NULL,
	[TENBENHVIEN] [varchar](50) NULL,
 CONSTRAINT [PK_BENHVIEN] PRIMARY KEY CLUSTERED 
(
	[MABV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOAKHAM]    Script Date: 11/29/2022 8:03:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOAKHAM](
	[MAKHOA] [varchar](5) NOT NULL,
	[TENKHOA] [varchar](50) NULL,
	[SOBENHNHAN] [varchar](50) NULL,
	[MABV] [varchar](5) NULL,
 CONSTRAINT [PK_KHOAKHAM] PRIMARY KEY CLUSTERED 
(
	[MAKHOA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BENHNHAN]  WITH CHECK ADD  CONSTRAINT [FK_BENHNHAN_KHOAKHAM] FOREIGN KEY([MAKHOA])
REFERENCES [dbo].[KHOAKHAM] ([MAKHOA])
GO
ALTER TABLE [dbo].[BENHNHAN] CHECK CONSTRAINT [FK_BENHNHAN_KHOAKHAM]
GO
ALTER TABLE [dbo].[KHOAKHAM]  WITH CHECK ADD  CONSTRAINT [FK_KHOAKHAM_BENHVIEN] FOREIGN KEY([MABV])
REFERENCES [dbo].[BENHVIEN] ([MABV])
GO
ALTER TABLE [dbo].[KHOAKHAM] CHECK CONSTRAINT [FK_KHOAKHAM_BENHVIEN]
GO