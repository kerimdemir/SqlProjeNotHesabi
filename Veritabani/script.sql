
/****** Object:  Table [dbo].[Ders]    Script Date: 16.6.2016 13:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Donemi] [int] NULL,
	[DersAdi] [nvarchar](50) NULL,
	[AktsDegeri] [decimal](9, 2) NOT NULL,
 CONSTRAINT [PK_Ders_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HarfNotu]    Script Date: 16.6.2016 13:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HarfNotu](
	[Harf] [nvarchar](50) NULL,
	[Deger] [decimal](9, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KullanıcıGirisi]    Script Date: 16.6.2016 13:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullanıcıGirisi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nchar](20) NULL,
	[Sifre] [nchar](20) NULL,
 CONSTRAINT [PK_KullanıcıGirisi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notlar]    Script Date: 16.6.2016 13:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciNumarası] [float] NULL,
	[AdSoyad] [varchar](50) NULL,
	[DersAdı] [varchar](50) NULL,
	[Vize] [int] NULL,
	[VizeYuzdesi] [int] NULL,
	[Final] [int] NULL,
	[FinalYuzdesi] [int] NULL,
	[Odev] [int] NULL,
	[OdevYuzdesi] [int] NULL,
	[Ortalama] [decimal](18, 2) NULL,
	[HarfNotu] [varchar](50) NULL,
	[Sonuc] [varchar](50) NULL,
 CONSTRAINT [PK_Notlar_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Ders] ON 

INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (1, 1, N'Atatürk İlk. ve İnk. Tar. I', CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (2, 1, N'Türk Dili I', CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (3, 1, N'Fizik I', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (4, 1, N'Elektrik Devre Temelleri', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (6, 1, N'Matematik I', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (7, 1, N'Bilgisayar Mühendisliğine Giriş', CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (8, 1, N'Bilişim Teknolojileri', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (9, 1, N'Algoritmalar ve Programlama I', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (10, 2, N'Atatürk İlkeleri ve İnkılap Tarihi II', CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (11, 2, N'Türk Dili II', CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (12, 2, N'Fizik II', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (13, 2, N'Matematik II', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (14, 2, N'Algoritmalar ve Programlama II', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (15, 2, N'Web Teknolojileri', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (16, 2, N'Olasılık ve İstatistik', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (17, 3, N'Diferansiyel Denklemler', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (18, 3, N'Lineer Cebir', CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (19, 3, N'Nesneye Dayalı Programlama', CAST(6.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (20, 3, N'Veri Yapıları', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (21, 3, N'Sayısal Analiz', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (22, 3, N'Elektronik', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (23, 4, N'Ayrık İşlemsel Yapılar', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (24, 4, N'Bilgisayar Organizasyonu', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (25, 4, N'Sayısal Elektronik', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (26, 4, N'Nesneye Dayalı Analiz ve Tasarım', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (27, 4, N'Progr. Dillerinin Prensipleri', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (28, 4, N'Mesleki İngilizce', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (29, 5, N'Biçimsel Diller ve Soyut Mak.', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (30, 5, N'İşaretler ve Sistemler', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (31, 5, N'İşletim Sistemleri', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (32, 5, N'Bilgisayar Ağları I', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (33, 5, N'Veritabanı Yönetim Sistemleri', CAST(6.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (34, 6, N'Bilgisayar Ağları II', CAST(6.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (35, 6, N'Mikroişlemciler', CAST(6.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (36, 6, N'Sistem Programlama', CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (37, 6, N'Web Programlama', CAST(6.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (38, 6, N'Yazılım Mühendisliği', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (39, 7, N'Bilgisayar Mühendisliği Proje Tasarımı', CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[Ders] ([id], [Donemi], [DersAdi], [AktsDegeri]) VALUES (40, 8, N'Mezuniyet Tezi', CAST(5.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[Ders] OFF
INSERT [dbo].[HarfNotu] ([Harf], [Deger]) VALUES (N'AA', CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[HarfNotu] ([Harf], [Deger]) VALUES (N'BA', CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[HarfNotu] ([Harf], [Deger]) VALUES (N'BB', CAST(3.25 AS Decimal(9, 2)))
INSERT [dbo].[HarfNotu] ([Harf], [Deger]) VALUES (N'CB', CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[HarfNotu] ([Harf], [Deger]) VALUES (N'CC', CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[HarfNotu] ([Harf], [Deger]) VALUES (N'DC', CAST(2.25 AS Decimal(9, 2)))
INSERT [dbo].[HarfNotu] ([Harf], [Deger]) VALUES (N'DD', CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[HarfNotu] ([Harf], [Deger]) VALUES (N'FD', CAST(1.50 AS Decimal(9, 2)))
INSERT [dbo].[HarfNotu] ([Harf], [Deger]) VALUES (N'FF', CAST(0.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[KullanıcıGirisi] ON 

INSERT [dbo].[KullanıcıGirisi] ([id], [Ad], [Sifre]) VALUES (1, N'admin               ', N'1234                ')
INSERT [dbo].[KullanıcıGirisi] ([id], [Ad], [Sifre]) VALUES (2, N'kullanıcı           ', N'12345               ')
INSERT [dbo].[KullanıcıGirisi] ([id], [Ad], [Sifre]) VALUES (3, N'a                   ', N'1                   ')
SET IDENTITY_INSERT [dbo].[KullanıcıGirisi] OFF
SET IDENTITY_INSERT [dbo].[Notlar] ON 

INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (26, 12, N'f', N'Atatürk Inkılapları', 1, 15, 65, 15, 54, 70, CAST(47.70 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (27, 12, N'f', N'Fizik - 1', 64, 40, 4, 40, 66, 20, CAST(40.40 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (28, 9, N'k', N'Lineer Cebir', 90, 30, 90, 40, 98, 30, CAST(92.40 AS Decimal(18, 2)), N'AA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (29, 1201000, N'ker', N'Seçili Dersler', 42, 60, 59, 40, 59, 0, CAST(48.80 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (30, 1, N'a', N'Lineer Cebir', 50, 50, 50, 50, 50, 50, CAST(50.00 AS Decimal(18, 2)), N'DD', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (31, 12, N'g', N'Seçili Dersler', 32, 25, 67, 25, 86, 50, CAST(67.75 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (32, 21, N'sda', N'adsasd', 43, 20, 23, 20, 43, 60, CAST(39.00 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (33, 1201000100025, N'Keim DEMİR', N'Atatürk İlk. ve İnk. Tar. I', 56, 50, 67, 30, 76, 20, CAST(63.30 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (34, 234324, N'sdsfas', N'Atatürk İlk. ve İnk. Tar. I', 46, 50, 45, 25, 45, 25, CAST(45.50 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (35, 12, N'kje', N'Olasılık ve İstatistik', 42, 0, 37, 40, 76, 60, CAST(60.40 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (36, 123456789, N'K', N'Sayısal Analiz', 90, 10, 90, 90, 0, 0, CAST(90.00 AS Decimal(18, 2)), N'AA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (37, 120100010025, N'Kerim DEMİR', N'Matematik I', 12, 50, 78, 40, 88, 10, CAST(46.00 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (38, 2, N'a', N'Matematik I', 56, 60, 67, 30, 89, 50, CAST(98.20 AS Decimal(18, 2)), N'AA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (39, 2, N'a', N'Matematik I', 56, 60, 67, 30, 89, 10, CAST(62.60 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (40, 2, N'a', N'Matematik I', 56, 60, 67, 30, 89, 10, CAST(62.60 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (41, 2, N'a', N'Matematik I', 56, 60, 67, 30, 89, 10, CAST(62.60 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (42, 120, N'Kerim', N'Türk Dili I', 48, 42, 2, 53, 3, 53, CAST(22.81 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (43, 12, N'kt', N'Matematik I', 45, 20, 53, 50, 65, 30, CAST(55.00 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (44, 45, N'h', NULL, 46, 30, 67, 70, 87, 0, CAST(60.70 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (45, 45, N'f', N'Lineer Cebir', 56, 40, 54, 40, 67, 20, CAST(57.40 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (46, 120100010025, N'Kerim DEMİR', N'Atatürk İlk. ve İnk. Tar. I', 30, 40, 48, 30, 56, 30, CAST(43.20 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (47, 23, N'e', N'İşletim Sistemleri', 34, 55, 57, 45, 87, 0, CAST(44.35 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (48, 43, N'et', N'Nesneye Dayalı Programlama', 36, 60, 67, 40, 76, 0, CAST(48.40 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (49, 324, N'rrrr', N'Mesleki İngilizce', 53, 60, 75, 40, 6, 0, CAST(61.80 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (50, 231, N'VS', N'Elektronik', 50, 50, 50, 50, 0, 0, CAST(50.00 AS Decimal(18, 2)), N'DD', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (51, 324, N'vs', N'Matematik I', 50, 50, 70, 50, 0, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (52, 2, N'g', N'Atatürk İlk. ve İnk. Tar. I', 44, 50, 76, 50, 6, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (53, 2, N'g', N'Bilgisayar Mühendisliğine Giriş', 50, 50, 76, 50, 6, 0, CAST(63.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (54, 12, N'k', N'Diferansiyel Denklemler', 54, 65, 67, 35, 0, 0, CAST(58.55 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (55, 12, N'k', N'Lineer Cebir', 78, 65, 78, 35, 0, 0, CAST(78.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (56, 12, N'k', N'Sayısal Analiz', 67, 65, 45, 35, 56, 0, CAST(59.30 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (57, 12, N'k', N'Veri Yapıları', 90, 100, 90, 0, 56, 0, CAST(90.00 AS Decimal(18, 2)), N'AA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (58, 31641, N'khbfrskhfw', N'Diferansiyel Denklemler', 60, 60, 75, 40, 64, 0, CAST(66.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (59, 435, N'geg', N'Diferansiyel Denklemler', 54, 80, 0, 20, 0, 0, CAST(43.20 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (60, 435, N'geg', N'Elektronik', 78, 70, 78, 30, 8, 0, CAST(78.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (61, 536, N'dnb', N'Biçimsel Diller ve Soyut Mak.', 76, 78, 0, 22, 0, 0, CAST(59.28 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (62, 536, N'dnb', N'İşaretler ve Sistemler', 78, 88, 76, 12, 8, 0, CAST(77.76 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (63, 234242, N'Kerim', N'Diferansiyel Denklemler', 56, 50, 67, 50, 78, 0, CAST(61.50 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (64, 234242, N'Kerim', N'Sayısal Analiz', 89, 30, 78, 50, 90, 20, CAST(83.70 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (65, 1201000100, N'ker', N'Fizik I', 3, 33, 46, 33, 86, 34, CAST(45.41 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (66, 1201000100, N'ker', N'Türk Dili I', 64, 67, 76, 33, 0, 0, CAST(67.96 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (67, 1201000100, N'ker', N'Bilgisayar Mühendisliğine Giriş', 65, 50, 54, 50, 68, 0, CAST(59.50 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (68, 546, N'he', N'Fizik I', 78, 10, 78, 90, 0, 0, CAST(78.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (69, 546, N'he', N'Türk Dili I', 50, 100, 0, 0, 0, 0, CAST(50.00 AS Decimal(18, 2)), N'DD', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (70, 1201000100025, N'Kerim DEMİR', N'Ayrık İşlemsel Yapılar', 85, 100, 0, 0, 0, 0, CAST(85.00 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (71, 1201000100025, N'Kerim DEMİR', N'Bilgisayar Organizasyonu', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (72, 1201000100025, N'Kerim DEMİR', N'Sayısal Elektronik', 80, 100, 0, 0, 0, 0, CAST(80.00 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (73, 1, N'k', N'Sayısal Elektronik', 80, 100, 0, 0, 0, 0, CAST(80.00 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (74, 1, N'k', N'Ayrık İşlemsel Yapılar', 85, 100, 0, 0, 0, 0, CAST(85.00 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (75, 1, N'k', N'Mesleki İngilizce', 58, 100, 0, 0, 0, 0, CAST(58.00 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (76, 1, N'k', N'Bilgisayar Organizasyonu', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (77, 1, N'k', N'Progr. Dillerinin Prensipleri', 60, 100, 0, 0, 0, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (78, 1, N'k', N'Nesneye Dayalı Analiz ve Tasarım', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (79, 12, N'kt', N'Algoritmalar ve Programlama I', 80, 60, 89, 30, 9, 10, CAST(75.60 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (80, 23, N'gr', N'Fizik I', 65, 80, 0, 20, 0, 0, CAST(52.00 AS Decimal(18, 2)), N'DD', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (81, 3, N'f', N'Veri Yapıları', 4, 4, 4, 4, 65, 92, CAST(60.12 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (82, 3, N'fr', N'Atatürk İlk. ve İnk. Tar. I', 43, 50, 76, 50, 57, 0, CAST(59.50 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (83, 32, N'fd', N'Diferansiyel Denklemler', 43, 50, 76, 50, 86, 0, CAST(59.50 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (84, 32, N'ds', N'Nesneye Dayalı Programlama', 42, 50, 76, 50, 66, 0, CAST(59.00 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (85, 4, N'g', N'Bilgisayar Ağları I', 54, 50, 0, 50, 0, 0, CAST(27.00 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (86, 4, N'g', N'Veritabanı Yönetim Sistemleri', 60, 60, 76, 40, 76, 0, CAST(66.40 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (87, 4, N'g', N'Veritabanı Yönetim Sistemleri', 56, 70, 0, 30, 0, 0, CAST(39.20 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (88, 42, N'bd', N'Algoritmalar ve Programlama I', 24, 50, 76, 50, 86, 0, CAST(50.00 AS Decimal(18, 2)), N'DD', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (89, 1, N'f', N'İşletim Sistemleri', 60, 40, 85, 40, 58, 20, CAST(69.60 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (90, 1, N'f', N'İşaretler ve Sistemler', 76, 60, 78, 40, 78, 0, CAST(76.80 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (91, 1, N'f', N'Veritabanı Yönetim Sistemleri', 89, 90, 78, 10, 88, 0, CAST(87.90 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (92, 12010010025, N'Kerim', N'Lineer Cebir', 60, 40, 58, 40, 78, 20, CAST(62.80 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (93, 12010010025, N'Kerim', N'Sayısal Analiz', 89, 50, 78, 50, 76, 0, CAST(83.50 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (94, 120, N'ke', N'Fizik I', 60, 50, 50, 50, 40, 0, CAST(55.00 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (95, 1, N'a', N'Fizik I', 50, 50, 0, 50, 0, 0, CAST(25.00 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (96, 1, N'a', N'Matematik I', 70, 30, 30, 70, 0, 0, CAST(42.00 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (97, 1, N'a', N'Türk Dili I', 60, 40, 100, 60, 0, 0, CAST(84.00 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (98, 1, N'k', N'Matematik I', 70, 70, 0, 30, 0, 0, CAST(49.00 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (99, 1, N'k', N'Türk Dili I', 89, 90, 0, 10, 0, 0, CAST(80.10 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (100, 7, N'kk', N'Matematik I', 70, 30, 30, 30, 40, 40, CAST(46.00 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (101, 1, N'a', N'Matematik I', 60, 100, 60, 0, 60, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (102, 34, N'gf', N'Matematik I', 78, 50, 50, 50, 0, 0, CAST(64.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (103, 2, N'k', N'Matematik I', 60, 60, 60, 40, 0, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (104, 123, N'e', N'Fizik I', 60, 50, 40, 50, 0, 0, CAST(50.00 AS Decimal(18, 2)), N'DD', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (105, 123, N'e', N'Matematik I', 80, 80, 20, 20, 0, 0, CAST(68.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (106, 23, N'kr', N'Fizik I', 60, 0, 60, 100, 40, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (107, 141, N'kerim', N'Matematik I', 60, 40, 60, 40, 60, 20, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (108, 141, N'kerim', N'Türk Dili I', 90, 40, 90, 30, 90, 30, CAST(90.00 AS Decimal(18, 2)), N'AA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (109, 120, N'ker', N'Fizik I', 40, 30, 20, 30, 0, 40, CAST(18.00 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (110, 120, N'ker', N'Türk Dili I', 80, 20, 80, 20, 0, 60, CAST(32.00 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (111, 120, N'ker', N'Matematik I', 70, 100, 70, 0, 70, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (112, 120100010025, N'Kerim Demir', N'Sayısal Elektronik', 80, 100, 0, 0, 0, 0, CAST(80.00 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (113, 120100010025, N'Kerim Demir', N'Ayrık İşlemsel Yapılar', 85, 100, 0, 0, 0, 0, CAST(85.00 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (114, 120100010025, N'Kerim Demir', N'Mesleki İngilizce', 55, 100, 0, 0, 0, 0, CAST(55.00 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (115, 120100010025, N'Kerim Demir', N'Bilgisayar Organizasyonu', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (116, 120100010025, N'Kerim Demir', N'Progr. Dillerinin Prensipleri', 60, 100, 0, 0, 0, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (117, 120100010025, N'Kerim Demir', N'Nesneye Dayalı Analiz ve Tasarım', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (118, 12, N'sw', N'Matematik I', 42, 50, 67, 50, 86, 0, CAST(54.50 AS Decimal(18, 2)), N'DD', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (119, 12, N'sw', N'Türk Dili I', 65, 50, 78, 50, 0, 0, CAST(71.50 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (120, 43, N'd', N'Matematik I', 53, 70, 68, 30, 86, 0, CAST(57.50 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (121, 23414, N'kerim', N'Fizik I', 90, 90, 90, 10, 90, 0, CAST(90.00 AS Decimal(18, 2)), N'AA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (122, 23414, N'kerim', N'Matematik I', 80, 50, 70, 50, 70, 0, CAST(75.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (123, 23414, N'kerim', N'Türk Dili I', 56, 70, 79, 30, 77, 0, CAST(62.90 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (124, 54, N'f', N'Matematik I', 4, 70, 68, 30, 8, 0, CAST(23.20 AS Decimal(18, 2)), N'FF', N'KALDI')
GO
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (125, 54, N'f', N'Türk Dili I', 67, 50, 87, 50, 86, 0, CAST(77.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (126, 42, N'dee', N'Elektronik', 78, 40, 78, 40, 78, 20, CAST(78.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (127, 42, N'dee', N'Veri Yapıları', 67, 60, 68, 40, 78, 0, CAST(67.40 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (128, 12123456, N'ln', N'Fizik I', 89, 60, 89, 40, 0, 0, CAST(89.00 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (129, 12123456, N'ln', N'Fizik I', 90, 90, 54, 10, 87, 0, CAST(86.40 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (130, 131, N'JFWLG', N'Fizik I', 70, 40, 56, 30, 76, 30, CAST(67.60 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (131, 1, N'E', N'Fizik I', 9, 0, 90, 0, 100, 100, CAST(100.00 AS Decimal(18, 2)), N'AA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (132, 1, N'E', N'Matematik I', 89, 40, 94, 40, 88, 20, CAST(90.80 AS Decimal(18, 2)), N'AA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (133, 1, N'E', N'Matematik I', 98, 40, 6, 60, 0, 0, CAST(42.80 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (134, 1, N'E', N'Türk Dili I', 76, 40, 78, 40, 45, 20, CAST(70.60 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (135, 563, N'hde', N'Diferansiyel Denklemler', 78, 50, 67, 30, 78, 20, CAST(74.70 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (136, 563, N'hde', N'Diferansiyel Denklemler', 6, 65, 67, 35, 67, 0, CAST(27.35 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (137, 3, N'hf', N'Matematik I', 56, 50, 67, 30, 67, 20, CAST(61.50 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (138, 45, N'd', N'Lineer Cebir', 56, 50, 56, 50, 0, 0, CAST(56.00 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (139, 4, N'f', N'Fizik I', 45, 50, 0, 50, 0, 0, CAST(22.50 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (140, 4, N'f', N'Fizik I', 45, 50, 79, 50, 0, 0, CAST(62.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (141, 13, N'g', N'Matematik I', 45, 50, 76, 50, 0, 0, CAST(60.50 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (142, 53, N'f', N'Fizik I', 34, 70, 78, 30, 0, 0, CAST(47.20 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (143, 1, N'g', N'Fizik I', 54, 10, 54, 40, 65, 50, CAST(59.50 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (144, 12, N'fr', N'Fizik I', 44, 50, 0, 50, 0, 0, CAST(22.00 AS Decimal(18, 2)), N'FF', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (145, 12, N'fr', N'Fizik I', 44, 50, 89, 50, 0, 0, CAST(66.50 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (146, 75, N'h', N'Fizik I', 76, 20, 44, 76, 44, 4, CAST(50.40 AS Decimal(18, 2)), N'DD', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (147, 75, N'h', N'Fizik I', 76, 76, 75, 24, 86, 0, CAST(75.76 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (148, 75, N'h', N'Fizik I', 87, 78, 78, 12, 86, 10, CAST(85.82 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (149, 3, N'r', N'Ayrık İşlemsel Yapılar', 34, 70, 56, 30, 67, 0, CAST(40.60 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (150, 42, N'krf', N'Lineer Cebir', 33, 50, 78, 30, 59, 20, CAST(51.70 AS Decimal(18, 2)), N'DD', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (151, 42, N'krf', N'Lineer Cebir', 55, 40, 66, 40, 77, 20, CAST(63.80 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (152, 42, N'krf', N'Lineer Cebir', 54, 40, 60, 30, 64, 30, CAST(58.80 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (153, 5330, N'gle', N'Fizik I', 50, 40, 100, 30, 100, 30, CAST(80.00 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (154, 5330, N'gle', N'Matematik I', 98, 40, 45, 30, 55, 30, CAST(69.20 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (155, 5330, N'gle', N'Türk Dili I', 94, 40, 34, 30, 32, 30, CAST(57.40 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (156, 24, N'Kerim', N'Fizik I', 56, 40, 46, 40, 36, 20, CAST(48.00 AS Decimal(18, 2)), N'FD', N'KALDI')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (157, 24, N'Kerim', N'Matematik I', 90, 50, 57, 50, 67, 0, CAST(73.50 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (158, 120100010025, N'Kerim DEMİR', N'Sayısal Elektronik', 80, 100, 0, 0, 0, 0, CAST(80.00 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (159, 120100010025, N'Kerim DEMİR', N'Ayrık İşlemsel Yapılar', 85, 100, 0, 0, 0, 0, CAST(85.00 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (160, 120100010025, N'Kerim DEMİR', N'Mesleki İngilizce', 55, 100, 0, 0, 0, 0, CAST(55.00 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (161, 120100010025, N'Kerim DEMİR', N'Bilgisayar Organizasyonu', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (162, 120100010025, N'Kerim DEMİR', N'Progr. Dillerinin Prensipleri', 60, 100, 0, 0, 0, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (163, 120100010025, N'Kerim DEMİR', N'Nesneye Dayalı Analiz ve Tasarım', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (164, 1201000100025, N'Kerim DEMIR', N'Matematik II', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (165, 1201000100025, N'Kerim DEMIR', N'Sayısal Elektronik', 0, 0, 80, 100, 0, 0, CAST(80.00 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (166, 1201000100025, N'Kerim DEMIR', N'Ayrık İşlemsel Yapılar', 0, 0, 0, 0, 85, 100, CAST(85.00 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (167, 1201000100025, N'Kerim DEMIR', N'Mesleki İngilizce', 55, 100, 0, 0, 0, 0, CAST(55.00 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (168, 1201000100025, N'Kerim DEMIR', N'Bilgisayar Organizasyonu', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (169, 1201000100025, N'Kerim DEMIR', N'Progr. Dillerinin Prensipleri', 60, 100, 0, 0, 0, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (170, 1201000100025, N'Kerim DEMIR', N'Nesneye Dayalı Analiz ve Tasarım', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (171, 1234567876, N'eteş', N'Matematik II', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (172, 1234567876, N'eteş', N'Sayısal Elektronik', 80, 100, 0, 0, 0, 0, CAST(80.00 AS Decimal(18, 2)), N'BB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (173, 1234567876, N'eteş', N'Ayrık İşlemsel Yapılar', 0, 0, 85, 100, 0, 0, CAST(85.00 AS Decimal(18, 2)), N'BA', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (174, 1234567876, N'eteş', N'Mesleki İngilizce', 55, 100, 0, 0, 0, 0, CAST(55.00 AS Decimal(18, 2)), N'DC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (175, 1234567876, N'eteş', N'Bilgisayar Organizasyonu', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (176, 1234567876, N'eteş', N'Progr. Dillerinin Prensipleri', 60, 100, 0, 0, 0, 0, CAST(60.00 AS Decimal(18, 2)), N'CC', N'GEÇTİ')
INSERT [dbo].[Notlar] ([id], [OgrenciNumarası], [AdSoyad], [DersAdı], [Vize], [VizeYuzdesi], [Final], [FinalYuzdesi], [Odev], [OdevYuzdesi], [Ortalama], [HarfNotu], [Sonuc]) VALUES (177, 1234567876, N'eteş', N'Nesneye Dayalı Analiz ve Tasarım', 70, 100, 0, 0, 0, 0, CAST(70.00 AS Decimal(18, 2)), N'CB', N'GEÇTİ')
SET IDENTITY_INSERT [dbo].[Notlar] OFF
