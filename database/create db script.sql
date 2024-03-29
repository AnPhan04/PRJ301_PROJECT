USE [PRJ301_Database_Project]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/3/2023 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cateID] [int] NOT NULL,
	[cateName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/3/2023 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [int] NOT NULL,
	[userID] [int] NULL,
	[totalPrice] [float] NULL,
	[quantity] [int] NULL,
	[prodID] [nvarchar](500) NULL,
	[price] [numeric](10, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prod_Variant]    Script Date: 3/3/2023 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prod_Variant](
	[size] [int] NULL,
	[stock] [int] NULL,
	[prodID] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/3/2023 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[cateID] [int] NULL,
	[prodID] [varchar](100) NOT NULL,
	[ProdName] [nvarchar](500) NULL,
	[prodImg] [nvarchar](500) NULL,
	[price] [numeric](10, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[prodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/3/2023 12:32:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Ho] [nvarchar](100) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](100) NULL,
	[sdt] [nvarchar](100) NULL,
	[role] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (1, N'MDEP')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (2, N'MRUN')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (3, N'MSC')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (4, N'MSP')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (5, N'MHT')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (6, N'MSD')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (7, N'MTAY')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (8, N'FMDEP')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (9, N'FMDOLL')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (10, N'FMRUN')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (11, N'FMSP')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (12, N'FMHT')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (13, N'FMSD')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (14, N'FMFA')
INSERT [dbo].[Category] ([cateID], [cateName]) VALUES (15, N'FMPUR')
GO
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 7271, N'MDEPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'MDEPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 49246, N'MDEPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 222, N'MDEPBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'MDEPBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 55009, N'MDEPBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1, N'MDEPGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 596, N'MDEPGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 8, N'MDEPGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1915, N'MDEPRED')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'MDEPRED')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 6495, N'MDEPRED')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 0, N'MDEPWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'MDEPWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 342, N'MDEPWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1811, N'MHTBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 21353, N'MHTBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 22, N'MHTBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 7634, N'MHTBLG')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 34, N'MHTBLG')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 5, N'MHTBLG')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 7664, N'MHTBR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 2423, N'MHTBR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 52932, N'MHTBR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 5467, N'MHTRB')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 80279, N'MHTRB')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 0, N'MHTRB')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 50, N'MHTWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 46023, N'MHTWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 413, N'MHTWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 5431, N'MRUNBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 50599, N'MRUNBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 607, N'MRUNBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 3049, N'MRUNGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 25315, N'MRUNGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 9181, N'MRUNGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 77546, N'MRUNNEON')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 53, N'MRUNNEON')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 50414, N'MRUNNEON')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 21491, N'MRUNWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 9, N'MRUNWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 96, N'MRUNWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 87, N'MRUNYELL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 64, N'MRUNYELL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 2088, N'MRUNYELL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1759, N'MSCBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 511, N'MSCBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 5995, N'MSCBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 47875, N'MSCBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 1, N'MSCBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 2903, N'MSCBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 24328, N'MSCNEON')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 90, N'MSCNEON')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 986, N'MSCNEON')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 74, N'MSCRED')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 1, N'MSCRED')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 34, N'MSCRED')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 4842, N'MSCYELL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 56, N'MSCYELL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 74, N'MSCYELL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 958, N'MSDBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 3, N'MSDBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 61, N'MSDBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 420, N'MSDBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 570, N'MSDBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 2206, N'MSDBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 93689, N'MSDBR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 91, N'MSDBR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 52408, N'MSDBR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 66, N'MSDGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 79, N'MSDGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 73, N'MSDGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 7271, N'MSDORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'MSDORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 49246, N'MSDORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 222, N'MSPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'MSPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 55009, N'MSPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1, N'MSPBLUE')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 596, N'MSPBLUE')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 8, N'MSPBLUE')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1915, N'MSPGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'MSPGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 6495, N'MSPGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 0, N'MSPGRD')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'MSPGRD')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 342, N'MSPGRD')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1811, N'MSPWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 21353, N'MSPWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 22, N'MSPWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 7634, N'MTAYBL1')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 34, N'MTAYBL1')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 5, N'MTAYBL1')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 7664, N'MTAYBL2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 2423, N'MTAYBL2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 52932, N'MTAYBL2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 5467, N'MTAYBL3')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 80279, N'MTAYBL3')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 0, N'MTAYBL3')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 50, N'MTAYBR')
GO
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 46023, N'MTAYBR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 413, N'MTAYBR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 5431, N'MTAYBR2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 50599, N'MTAYBR2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 607, N'MTAYBR2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 3049, N'FMDEPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 25315, N'FMDEPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 9181, N'FMDEPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 77546, N'FMDEPPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 53, N'FMDEPPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 50414, N'FMDEPPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 21491, N'FMDOLLBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 9, N'FMDOLLBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 96, N'FMDOLLBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 87, N'FMDOLLCR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 64, N'FMDOLLCR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 2088, N'FMDOLLCR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1759, N'FMDOLLPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 511, N'FMDOLLPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 5995, N'FMDOLLPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 47875, N'FMDOLLPK2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 1, N'FMDOLLPK2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 2903, N'FMDOLLPK2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 24328, N'FMDOLLWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 90, N'FMDOLLWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 986, N'FMDOLLWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 74, N'FMFABL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 1, N'FMFABL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 34, N'FMFABL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 4842, N'FMFABL2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 56, N'FMFABL2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 74, N'FMFABL2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 958, N'FMFABL3')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 3, N'FMFABL3')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 61, N'FMFABL3')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 420, N'FMFAGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 570, N'FMFAGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 2206, N'FMFAGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 93689, N'FMFAYELL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 91, N'FMFAYELL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 52408, N'FMFAYELL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 66, N'FMHTBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 79, N'FMHTBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 73, N'FMHTBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 7271, N'FMHTGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'FMHTGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 49246, N'FMHTGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 222, N'FMHTGRE')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'FMHTGRE')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 55009, N'FMHTGRE')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1, N'FMHTORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 596, N'FMHTORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 8, N'FMHTORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1915, N'FMHTWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'FMHTWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 6495, N'FMHTWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 0, N'FMPURBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 0, N'FMPURBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 342, N'FMPURBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1811, N'FMPURBL2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 21353, N'FMPURBL2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 22, N'FMPURBL2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 7634, N'FMPURCR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 34, N'FMPURCR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 5, N'FMPURCR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 7664, N'FMPURGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 2423, N'FMPURGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 52932, N'FMPURGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 5467, N'FMPURPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 80279, N'FMPURPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 0, N'FMPURPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 50, N'FMRUNBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 46023, N'FMRUNBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 413, N'FMRUNBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 5431, N'FMRUNGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 50599, N'FMRUNGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 607, N'FMRUNGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 3049, N'FMRUNNEON')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 25315, N'FMRUNNEON')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 9181, N'FMRUNNEON')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 77546, N'FMRUNORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 53, N'FMRUNORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 50414, N'FMRUNORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 21491, N'FMRUNPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 9, N'FMRUNPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 96, N'FMRUNPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 87, N'FMSDBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 64, N'FMSDBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 2088, N'FMSDBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 1759, N'FMSDBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 511, N'FMSDBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 5995, N'FMSDBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 47875, N'FMSDORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 1, N'FMSDORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 2903, N'FMSDORA')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 24328, N'FMSDVR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 90, N'FMSDVR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 986, N'FMSDVR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 74, N'FMSDWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 1, N'FMSDWH')
GO
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 34, N'FMSDWH')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 4842, N'FMSPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 56, N'FMSPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 74, N'FMSPBL')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 958, N'FMSPBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 3, N'FMSPBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 61, N'FMSPBLU')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 420, N'FMSPBLU2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 570, N'FMSPBLU2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 2206, N'FMSPBLU2')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 93689, N'FMSPGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 91, N'FMSPGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 52408, N'FMSPGR')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (40, 66, N'FMSPPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (41, 79, N'FMSPPK')
INSERT [dbo].[Prod_Variant] ([size], [stock], [prodID]) VALUES (42, 73, N'FMSPPK')
GO
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (8, N'FMDEPBL', N'Dép Cao Gót Nữ SFW751880DEN (Đen)', N'images/Female/FMDEP/FMDEPBL/1.jpg,images/Female/FMDEP/FMDEPBL/2.jpg,images/Female/FMDEP/FMDEPBL/3.jpg,images/Female/FMDEP/FMDEPBL/4.jpg,images/Female/FMDEP/FMDEPBL/5.jpg,images/Female/FMDEP/FMDEPBL/6.jpg,', CAST(1328484.500 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (8, N'FMDEPPK', N'Dép Cao Gót Nữ SFW751880KED (Kem Đậm)', N'images/Female/FMDEP/FMDEPPK/1.jpg,images/Female/FMDEP/FMDEPPK/2.jpg,images/Female/FMDEP/FMDEPPK/3.jpg,images/Female/FMDEP/FMDEPPK/4.jpg,images/Female/FMDEP/FMDEPPK/5.jpg,images/Female/FMDEP/FMDEPPK/6.jpg,', CAST(1487116.300 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (9, N'FMDOLLBL', N'Giày Búp Bê Nữ DBB010188DEN (Đen)', N'images/Female/FMDOLL/FMDOLLBL/1.jpg,images/Female/FMDOLL/FMDOLLBL/2.jpg,images/Female/FMDOLL/FMDOLLBL/3.jpg,images/Female/FMDOLL/FMDOLLBL/4.jpg,images/Female/FMDOLL/FMDOLLBL/5.jpg,images/Female/FMDOLL/FMDOLLBL/6.jpg,', CAST(855895.570 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (9, N'FMDOLLCR', N'Giày Búp Bê Nữ Biti’s Êmbrace - Ceam White DBW004500KEM (Kem)', N'images/Female/FMDOLL/FMDOLLCR/1.jpg,images/Female/FMDOLL/FMDOLLCR/2.jpg,images/Female/FMDOLL/FMDOLLCR/3.jpg,images/Female/FMDOLL/FMDOLLCR/4.jpg,images/Female/FMDOLL/FMDOLLCR/5.jpg,images/Female/FMDOLL/FMDOLLCR/6.jpg,', CAST(1027515.600 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (9, N'FMDOLLPK', N'Giày Búp Bê Nữ Biti’s Êmbrace - Blush Pink DBW004500HOL (Hồng Lợt)', N'images/Female/FMDOLL/FMDOLLPK/1.jpg,images/Female/FMDOLL/FMDOLLPK/2.jpg,images/Female/FMDOLL/FMDOLLPK/3.jpg,images/Female/FMDOLL/FMDOLLPK/4.jpg,images/Female/FMDOLL/FMDOLLPK/5.jpg,images/Female/FMDOLL/FMDOLLPK/6.jpg,', CAST(551869.590 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (9, N'FMDOLLPK2', N'Giày Búp Bê Nữ SBW005988HOL (Hồng Lợt)', N'images/Female/FMDOLL/FMDOLLPK2/1.jpg,images/Female/FMDOLL/FMDOLLPK2/2.jpg,images/Female/FMDOLL/FMDOLLPK2/3.jpg,images/Female/FMDOLL/FMDOLLPK2/4.jpg,images/Female/FMDOLL/FMDOLLPK2/5.jpg,images/Female/FMDOLL/FMDOLLPK2/6.jpg,', CAST(789255.020 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (9, N'FMDOLLWH', N'Giày Búp Bê Nữ Êmbrace Mint DBW004600XNG (Xanh Ngọc)', N'images/Female/FMDOLL/FMDOLLWH/1.jpg,images/Female/FMDOLL/FMDOLLWH/2.jpg,images/Female/FMDOLL/FMDOLLWH/3.jpg,images/Female/FMDOLL/FMDOLLWH/4.jpg,images/Female/FMDOLL/FMDOLLWH/5.jpg,images/Female/FMDOLL/FMDOLLWH/6.jpg,', CAST(1018628.800 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (14, N'FMFABL', N'Giày Cao Gót Nữ Gosto GFW018488DEN (Đen)', N'images/Female/FMFA/FMFABL/1.jpg,images/Female/FMFA/FMFABL/2.jpg,images/Female/FMFA/FMFABL/3.jpg,images/Female/FMFA/FMFABL/4.jpg,images/Female/FMFA/FMFABL/5.jpg', CAST(1032260.620 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (14, N'FMFABL2', N'Giày Thời Trang Nữ Gosto GFW018788DEN (Đen)', N'images/Female/FMFA/FMFABL2/1.jpg,images/Female/FMFA/FMFABL2/2.jpg,images/Female/FMFA/FMFABL2/3.jpg,images/Female/FMFA/FMFABL2/4.jpg,images/Female/FMFA/FMFABL2/5.jpg', CAST(691299.810 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (14, N'FMFABL3', N'Giày Cao Gót Nữ SFW754880DEN (Đen)', N'images/Female/FMFA/FMFABL3/1.jpg,images/Female/FMFA/FMFABL3/2.jpg,images/Female/FMFA/FMFABL3/3.jpg,images/Female/FMFA/FMFABL3/4.jpg,images/Female/FMFA/FMFABL3/5.jpg', CAST(1819601.610 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (14, N'FMFAGR', N'Giày Cao Gót Nữ SFW754880XAM (Xám)', N'images/Female/FMFA/FMFAGR/1.jpg,images/Female/FMFA/FMFAGR/2.jpg,images/Female/FMFA/FMFAGR/3.jpg,images/Female/FMFA/FMFAGR/4.jpg,images/Female/FMFA/FMFAGR/5.jpg', CAST(709821.770 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (14, N'FMFAYELL', N'Giày Bít Nữ SFW755880VAL (Vàng Lợt)', N'images/Female/FMFA/FMFAYELL/1.jpg,images/Female/FMFA/FMFAYELL/2.jpg,images/Female/FMFA/FMFAYELL/3.jpg,images/Female/FMFA/FMFAYELL/4.jpg,images/Female/FMFA/FMFAYELL/5.jpg', CAST(642073.680 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (12, N'FMHTBL', N'Giày Thể Thao Nữ Hunter X - Dune OTP Real Black edition HSW001200DEN (Đen)', N'images/Female/FMHT/FMHTBL/1.jpg,images/Female/FMHT/FMHTBL/2.jpg,images/Female/FMHT/FMHTBL/3.jpg,images/Female/FMHT/FMHTBL/4.jpg,images/Female/FMHT/FMHTBL/5.jpg,images/Female/FMHT/FMHTBL/6.jpg', CAST(1707884.180 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (12, N'FMHTGR', N'Giày Thể Thao Nữ Hunter Core - Meteor Collection DSWH10800XAM (Xám)', N'images/Female/FMHT/FMHTGR/1.jpg,images/Female/FMHT/FMHTGR/2.jpg,images/Female/FMHT/FMHTGR/3.jpg,images/Female/FMHT/FMHTGR/4.jpg,images/Female/FMHT/FMHTGR/5.jpg ', CAST(1130225.410 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (12, N'FMHTGRE', N'Giày Thể Thao Nữ Hunter Core - Meteor Collection DSWH10800XNG (Xanh Ngọc)', N'images/Female/FMHT/FMHTGRE/1.jpg,images/Female/FMHT/FMHTGRE/2.jpg,images/Female/FMHT/FMHTGRE/3.jpg,images/Female/FMHT/FMHTGRE/4.jpg,images/Female/FMHT/FMHTGRE/5.jpg', CAST(712640.220 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (12, N'FMHTORA', N'Giày Thể Thao Nữ Hunter Core - Gravity Leap collection DSWH10900HOG (Hồng)', N'images/Female/FMHT/FMHTORA/1.jpg,images/Female/FMHT/FMHTORA/2.jpg,images/Female/FMHT/FMHTORA/3.jpg,images/Female/FMHT/FMHTORA/4.jpg,images/Female/FMHT/FMHTORA/5.jpg    ', CAST(692867.220 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (12, N'FMHTWH', N'Giày Thể Thao Nữ Hunter X - Dune OTP Real White edition HSW001201TRG (Trắng)', N'images/Female/FMHT/FMHTWH/1.jpg,images/Female/FMHT/FMHTWH/2.jpg,images/Female/FMHT/FMHTWH/3.jpg,images/Female/FMHT/FMHTWH/4.jpg,images/Female/FMHT/FMHTWH/5.jpg,images/Female/FMHT/FMHTWH/6.jpg', CAST(1680818.570 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (15, N'FMPURBL', N'Túi Xách Da Thật Nữ Gosto GOTW00701DEN (Đen)', N'images/Female/FMPUR/FMPURBL/1.jpg', CAST(707533.630 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (15, N'FMPURBL2', N'Túi Xách Da Thật Nữ Gosto GOTW00701DEN (Đen)', N'images/Female/FMPUR/FMPURBL2/1.jpg', CAST(772809.180 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (15, N'FMPURCR', N'Túi Xách Da Nữ Gosto GOTW00600KEM (Kem)', N'images/Female/FMPUR/FMPURCR/1.jpg', CAST(1263660.580 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (15, N'FMPURGR', N'Túi Xách Nữ Gosto GOTW01000XAM (Xám)', N'images/Female/FMPUR/FMPURGR/1.jpg', CAST(1342335.410 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (15, N'FMPURPK', N'Túi Xách Si Nữ Gosto GOTW00800HOG (Hồng)', N'images/Female/FMPUR\FMPURPK/1.jpg', CAST(898858.180 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (10, N'FMRUNBL', N'Giày Chạy Bộ Nữ Biti''s Hunter Running Black DSWH08300DEN (Đen)', N'images/Female/FMRUN/FMRUNBL/1.jpg,images/Female/FMRUN/FMRUNBL/2.jpg,images/Female/FMRUN/FMRUNBL/3.jpg,images/Female/FMRUN/FMRUNBL/4.jpg,images/Female/FMRUN/FMRUNBL/5.jpg,', CAST(1638269.020 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (10, N'FMRUNNEON', N'Giày Chạy Bộ Nữ Biti''s Hunter Running Neon Green DSWH03900XMN (Xanh Mi Nơ)', N'images/Female/FMRUN/FMRUNNEON/1.jpg,images/Female/FMRUN/FMRUNNEON/2.jpg,images/Female/FMRUN/FMRUNNEON/3.jpg,images/Female/FMRUN/FMRUNNEON/4.jpg,images/Female/FMRUN/FMRUNNEON/5.jpg,', CAST(508196.830 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (10, N'FMRUNORA', N'Giày Chạy Bộ Nữ Biti''s Hunter Running Orange DSWH03900CAM (Cam)', N'images/Female/FMRUN/FMRUNORA/1.jpg,images/Female/FMRUN/FMRUNORA/2.jpg,images/Female/FMRUN/FMRUNORA/3.jpg,images/Female/FMRUN/FMRUNORA/4.jpg,images/Female/FMRUN/FMRUNORA/5.jpg,', CAST(1381967.850 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (10, N'FMRUNPK', N'Giày Đi Bộ Nữ Biti''s Hunter Jogging Soft Pink DSWH05300HOG (HOG)', N'images/Female/FMRUN/FMRUNPK/1.jpg,images/Female/FMRUN/FMRUNPK/2.jpg,images/Female/FMRUN/FMRUNPK/3.jpg,images/Female/FMRUN/FMRUNPK/4.jpg,images/Female/FMRUN/FMRUNPK/5.jpg,', CAST(1120162.990 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (10, N'FMRUNGR', N'Giày Chạy Bộ Nữ Biti''s Hunter Running Gray DSWH10000XAM (Xám)', N'images/Female/FMRUN/FMRUNGR/1.jpg,images/Female/FMRUN/FMRUNGR/2.jpg,images/Female/FMRUN/FMRUNGR/3.jpg,images/Female/FMRUN/FMRUNGR/4.jpg,images/Female/FMRUN/FMRUNGR/5.jpg,', CAST(593979.890 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (13, N'FMSDBL', N'Sandal Cao Gót Nữ Gosto GPW002900DEN (Đen)', N'images/Female/FMSD/FMSDBL/1.jpg,images/Female/FMSD/FMSDBL/2.jpg,images/Female/FMSD/FMSDBL/3.jpg,images/Female/FMSD/FMSDBL/4.jpg,images/Female/FMSD/FMSDBL/5.jpg', CAST(793544.240 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (13, N'FMSDBLU', N'Sandal Nữ Gosto GFW018688XDG (Xanh Dương)', N'images/Female/FMSD/FMSDBLU/1.jpg,images/Female/FMSD/FMSDBLU/2.jpg,images/Female/FMSD/FMSDBLU/3.jpg,images/Female/FMSD/FMSDBLU/4.jpg,images/Female/FMSD/FMSDBLU/5.jpg', CAST(951566.640 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (13, N'FMSDORA', N'Sandal Cao Gót Nữ Gosto GPW002900CAM (Cam)', N'images/Female/FMSD/FMSDORA/1.jpg,images/Female/FMSD/FMSDORA/2.jpg,images/Female/FMSD/FMSDORA/3.jpg,images/Female/FMSD/FMSDORA/4.jpg,images/Female/FMSD/FMSDORA/5.jpg   ', CAST(896416.300 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (13, N'FMSDVR', N'Sandal TPR Nữ DTW011188KEM (Kem)', N'images/Female/FMSD/FMSDVR/1.jpg,images/Female/FMSD/FMSDVR/2.jpg,images/Female/FMSD/FMSDVR/3.jpg,images/Female/FMSD/FMSDVR/4.jpg,images/Female/FMSD/FMSDVR/5.jpg', CAST(1155608.680 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (13, N'FMSDWH', N'Sandal Cao Gót Nữ Gosto GFW018800TRG (Trắng)', N'images/Female/FMSD/FMSDWH/1.jpg,images/Female/FMSD/FMSDWH/2.jpg,images/Female/FMSD/FMSDWH/3.jpg,images/Female/FMSD/FMSDWH/4.jpg,images/Female/FMSD/FMSDWH/5.jpg', CAST(1031979.690 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (11, N'FMSPBL', N'Giày Thể Thao Nữ DSW066800DEN (Đen)', N'images/Female/FMSP/FMSPBL/1.jpg,images/Female/FMSP/FMSPBL/2.jpg,images/Female/FMSP/FMSPBL/3.jpg,images/Female/FMSP/FMSPBL/4.jpg,images/Female/FMSP/FMSPBL/5.jpg', CAST(1262204.840 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (11, N'FMSPBLU', N'Giày Thể Thao Nữ Êmbrace DSW066400XDG (Xanh Dương)', N'images/Female/FMSP/FMSPBLU/1.jpg,images/Female/FMSP/FMSPBLU/2.jpg,images/Female/FMSP/FMSPBLU/3.jpg,images/Female/FMSP/FMSPBLU/4.jpg,images/Female/FMSP/FMSPBLU/5.jpg', CAST(1664095.020 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (11, N'FMSPBLU2', N'Giày Thể Thao Nữ Gosto GFW018500XNH (Xanh Nhớt)', N'images/Female/FMSP/FMSPBLU2/1.jpg,images/Female/FMSP/FMSPBLU2/2.jpg,images/Female/FMSP/FMSPBLU2/3.jpg,images/Female/FMSP/FMSPBLU2/4.jpg,images/Female/FMSP/FMSPBLU2/5.jpg', CAST(1812293.780 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (11, N'FMSPGR', N'Giày Thể Thao Nữ Gosto GFW018500XAM (Xám)', N'images/Female/FMSP/FMSPGR/1.jpg,images/Female/FMSP/FMSPGR/2.jpg,images/Female/FMSP/FMSPGR/3.jpg,images/Female/FMSP/FMSPGR/4.jpg,images/Female/FMSP/FMSPGR/5.jpg', CAST(1669766.360 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (11, N'FMSPPK', N'Giày Thể Thao Nữ Êmbrace DSW066400HOG (Hồng)', N'images/Female/FMSP/FMSPPK/1.jpg,images/Female/FMSP/FMSPPK/2.jpg,images/Female/FMSP/FMSPPK/3.jpg,images/Female/FMSP/FMSPPK/4.jpg,images/Female/FMSP/FMSPPK/5.jpg,images/Female/FMSP/FMSPPK/6.jpg', CAST(1148610.040 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (1, N'MDEPBL', N'Dép Eva Nam BEM000900DEN (Đen)', N'images/Male/MDEPBL/1.jpg,images/male/MDEPBL/2.jpg,images/male/MDEPBL/3.jpg,images/male/MDEPBL/4.jpg,images/male/MDEPBL/5.jpg', CAST(767096.720 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (1, N'MDEPBLU', N'Dép Lào Nam DLM029400XNH (Xanh Nhớt)', N'images/Male/MDEP/MDEPBLU/1.jpg,images/Male/MDEP/MDEPBLU/2.jpg,images/Male/MDEP/MDEPBLU/3.jpg,images/Male/MDEP/MDEPBLU/4.jpg,images/Male/MDEP/MDEPBLU/5.jpg,images/Male/MDEP/MDEPBLU/6.jpg', CAST(1549307.120 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (1, N'MDEPGR', N'Dép Eva Phun Nam Biti''s DEM057010XAM (Xám)', N'images/Male/MDEP/MDEPGR/1.jpg', CAST(1267977.010 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (1, N'MDEPRED', N'Dép Si Cao Su Nam Biti''s DRM042800DOO (Đỏ)', N'images/Male/MDEP/MDEPRED/1.jpg', CAST(1577014.150 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (1, N'MDEPWH', N'Dép Eva Nam BEM000900TRG (Trắng)', N'images/Male/MDEP/MDEPWH/1.jpg,images/Male/MDEP/MDEPWH/2.jpg,images/Male/MDEP/MDEPWH/3.jpg,images/Male/MDEP/MDEPWH/4.jpg,images/Male/MDEP/MDEPWH/5.jpg,images/Male/MDEP/MDEPWH/6.jpg,images/Male/MDEP/MDEPWH/7.jpg', CAST(639183.770 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (5, N'MHTBL', N'Giày Thể Thao Nam Biti''s Hunter X - 2K22 - Midnight III DSUH00502DEN (Đen)', N'images/Male/MHT/MHTBL/1.jpg,images/Male/MHT/MHTBL/2.jpg,images/Male/MHT/MHTBL/3.jpg,images/Male/MHT/MHTBL/4.jpg,images/Male/MHT/MSPWH/5.jpg,images/Male/MHT/MHTBL/6.jpg', CAST(1090178.560 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (5, N'MHTBLG', N'[Phiên Bản Kỷ Niệm 40 Năm] Giày Thể Thao Nam Hunter X DSMH09700DEN (Đen)', N'images/Male/MHT/MHTBL/1.jpg,images/Male/MHT/MHTBL/2.jpg,images/Male/MHT/MHTBL/3.jpg,images/Male/MHT/MHTBL/4.jpg,images/Male/MHT/MSPWH/5.jpg,images/Male/MHT/MHTBL/6.jpg', CAST(1398292.580 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (5, N'MHTBR', N'Giày Thể Thao Nam Biti''s Hunter X 1.0 Festive Armor Brown - Phiên Bản Độc Quyền DSMH07701NAU (Nâu)', N'images/Male/MHT/MHTBLG/1.jpg,images/Male/MHT/MHTBLG/2.jpg,images/Male/MHT/MHTBLG/3.jpg,images/Male/MHT/MHTBLG/4.jpg,images/Male/MHT/MHTBLG/5.jpg,images/Male/MHT/MHTBLG/6.jpg', CAST(1312111.670 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (5, N'MHTWH', N'Giày Thể Thao Nam Hunter Street x VietMax Vietnam Arising DSMH05502TRG (Trắng)', N'images/Male/MHT/MHTWH/1.jpg,images/Male/MHT/MHTWH/2.jpg,images/Male/MHT/MHTWH/3.jpg,images/Male/MHT/MHTWH/4.jpg,images/Male/MHT/MHTWH/5.jpg,images/Male/MHT/MHTWH/6.jpg', CAST(1532841.270 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (5, N'MHTRB', N'Giày Thể Thao Nam Hunter X - Dune OTP Real Black edition HSM001200DEN (Đen)', N'images/Male/MHT/MHTRB/1.jpg,images/Male/MHT/MHTRB/2.jpg,images/Male/MHT/MHTRB/3.jpg,images/Male/MHT/MHTRB/4.jpg,images/Male/MHT/MHTRB/5.jpg,images/Male/MHT/MHTRB/6.jpg', CAST(1111098.740 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (2, N'MRUNBL', N'Giày Chạy Bộ Nam Biti''s Hunter Running Black DSMH08300DEN (Đen)', N'images/Male/MRUN/MRUNBL/1.jpg,images/Male/MRUN/MDEPBLU/2.jpg,images/Male/MRUN/MRUNBL/3.jpg,images/Male/MRUN/MRUNBL/4.jpg,images/Male/MRUN/MRUNBL/5.jpg,images/Male/MRUN/MRUNBL/6.jpg', CAST(957983.830 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (2, N'MRUNNEON', N'Giày Chạy Bộ Nam Biti''s Hunter Running Neon Green DSMH03900XMN (Xanh Mi Nơ)', N'images/Male/MRUN/MRUNNEON/1.jpg,images/Male/MRUN/MRUNNEON/2.jpg,images/Male/MRUN/MRUNNEON/3.jpg,images/Male/MRUN/MRUNNEON/4.jpg,images/Male/MRUN/MRUNNEON/5.jpg,images/Male/MRUN/MRUNNEON/6.jpg', CAST(532742.070 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (2, N'MRUNWH', N'Giày Chạy Bộ Nam Biti''s Hunter Running White DSMH08300TRG (Trắng)', N'images/Male/MRUN/MRUNWH/1.jpg,images/Male/MRUN/MRUNWH/2.jpg,images/Male/MRUN/MRUNWH/3.jpg,images/Male/MRUN/MRUNWH/4.jpg,images/Male/MRUN/MRUNWH/5.jpg,images/Male/MRUN/MRUNWH/6.jpg', CAST(1641300.340 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (2, N'MRUNYELL', N'Giày Chạy Bộ Nam Biti''s Hunter Running Yellow DSMH10000VAG (Vàng)', N'images/Male/MRUN/MRUNYELL/1.jpg,images/Male/MRUN/MRUNYELL/2.jpg,images/Male/MRUN/MRUNYELL/3.jpg,images/Male/MRUN/MRUNYELL/4.jpg,images/Male/MRUN/MRUNYELL/5.jpg,images/Male/MRUN/MRUNYELL/6.jpg', CAST(1839692.150 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (2, N'MRUNGR', N'Giày Chạy Bộ Nam Biti''s Hunter Running Gray DSMH10000XAM (Xám)', N'images/Male/MRUN/MRUNGR/1.jpg,images/Male/MRUN/MRUNGR/2.jpg,images/Male/MRUN/MRUNGR/3.jpg,images/Male/MRUN/MRUNGR/4.jpg,images/Male/MRUN/MRUNGR/5.jpg,images/Male/MRUN/MRUNGR/6.jpg', CAST(1391309.280 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (3, N'MSCBL', N'Giày Bóng Đá Nam Biti''s Hunter Football Futsal DSMH09100DEN (Đen)', N'images/Male/MSC/MSCBL/1.jpg,images/Male/MSC/MSCBL/2.jpg,images/Male/MSC/MSCBL/3.jpg,images/Male/MSC/MSCBL/4.jpg,images/Male/MSC/MSCBL/5.jpg,images/Male/MSC/MSCBL/6.jpg', CAST(1918886.720 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (3, N'MSCBLU', N'Giày Bóng Đá Nam Biti''s Hunter Football DSMH09600XDG (Xanh Dương)', N'images/Male/MSC/MSCBLU/1.jpg,images/Male/MSC/MSCBLU/2.jpg,images/Male/MSC/MSCBLU/3.jpg,images/Male/MSC/MSCBLU/4.jpg,images/Male/MSC/MSCBLU/5.jpg', CAST(1944952.270 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (3, N'MSCNEON', N'Giày Bóng Đá Nam Biti''s Hunter Football DSMH03801XMN (Xanh Mi Nơ)', N'images/Male/MSC/MSCNEON/1.jpg,images/Male/MSC/MSCNEON/2.jpg,images/Male/MSC/MSCNEON/3.jpg,images/Male/MSC/MSCNEON/4.jpg,images/Male/MSC/MSCNEON/5.jpg,images/Male/MSC/MSCNEON/6.jpg', CAST(1277179.630 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (3, N'MSCRED', N'Giày Bóng Đá Nam Hunter Football Futsal DSMH11100DOO (Đỏ)', N'images/Male/MSC/MSCRED/1.jpg,images/Male/MSC/MSCRED/2.jpg,images/Male/MSC/MSCRED/3.jpg,images/Male/MSC/MSCRED/4.jpg,images/Male/MSC/MSCRED/5.jpg,images/Male/MSC/MSCRED/6.jpg', CAST(975686.240 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (3, N'MSCYELL', N'Giày Bóng Đá Nam Biti''s Hunter Football DSMH02401VAG (Vàng)', N'images/Male/MSC/MSCYELL/1.jpg,images/Male/MSC/MSCYELL/2.jpg,images/Male/MSC/MSCYELL/3.jpg,images/Male/MSC/MSCYELL/4.jpg,images/Male/MSC/MSCYELL/5.jpg,images/Male/MSC/MSCYELL/6.jpg', CAST(1308068.900 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (6, N'MSDBL', N'Sandal Si Nam DRM042900DEN (Đen)', N'images/Male/MSD/MSDBL/1.jpg,images/Male/MSD/MSDBL/2.jpg,images/Male/MSD/MSDBL/3.jpg,images/Male/MSD/MSDBL/4.jpg,images/Male/MSD/MSDBL/5.jpg,images/Male/MSD/MSDBL/6.jpg', CAST(1501736.200 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (6, N'MSDBLU', N'Sandal Si Nam DYM009200XNH (Xanh Nhớt)', N'images/Male/MSD/MSDBLU/1.jpg,images/Male/MSD/MSDBLU/2.jpg,images/Male/MSD/MSDBLU/3.jpg,images/Male/MSD/MSDBLU/4.jpg,images/Male/MSD/MSDBLU/5.jpg,images/Male/MSD/MSDBLU/6.jpg', CAST(1752308.250 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (6, N'MSDBR', N'Sandal Nam Hunter X Blazin’ Neon Collection DEMH01300KEM (Kem)', N'images/Male/MSD/MSDBR/1.jpg,images/Male/MSD/MSDBR/2.jpg,images/Male/MSD/MSDBR/3.jpg,images/Male/MSD/MSDBR/4.jpg,images/Male/MSD/MSDBR/5.jpg,images/Male/MSD/MSDBR/6.jpg', CAST(1227518.240 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (6, N'MSDGR', N'Sandal Si Nam DYM009200XAM (Xám)', N'images/Male/MSD/MSDGR/1.jpg,images/Male/MSD/MSDGR/2.jpg,images/Male/MSD/MSDGR/3.jpg,images/Male/MSD/MSDGR/4.jpg,images/Male/MSD/MSDGR/5.jpg,images/Male/MSD/MSDGR/6.jpg', CAST(539060.750 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (6, N'MSDORA', N'Sandal Si Nam DYM009200REU (Rêu)', N'images/Male/MSD/MSDORA/1.jpg,images/Male/MSD/MSDORA/2.jpg,images/Male/MSD/MSDORA/3.jpg,images/Male/MSD/MSDORA/4.jpg,images/Male/MSD/MSDORA/5.jpg,images/Male/MSD/MSDORA/6.jpg', CAST(903553.820 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (4, N'MSPBL', N'Giày Thể Thao Nam DSM076000DEN (Đen)', N'images/Male/MSP/MSPBL/1.jpg,images/Male/MSP/MSPBL/2.jpg,images/Male/MSP/MSPBL/3.jpg,images/Male/MSP/MSPBL/4.jpg,images/Male/MSP/MSPBL/5.jpg,images/Male/MSP/MSPBL/6.jpg', CAST(1596698.130 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (4, N'MSPBLUE', N'Giày Thể Thao Nam DSM075200XNH (Xanh Nhớt)', N'images/Male/MSP/MSPBL/1.jpg,images/Male/MSP/MSPBL/2.jpg,images/Male/MSP/MSPBL/3.jpg,images/Male/MSP/MSPBL/4.jpg,images/Male/MSP/MSPBL/5.jpg,images/Male/MSP/MSPBL/6.jpg', CAST(935164.500 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (4, N'MSPGR', N'Giày Thể Thao Cao Cấp Nam DSMH10201XAM (Xám)', N'images/Male/MSP/MSPBLUE/1.jpg,images/Male/MSP/MSPBLUE/2.jpg,images/Male/MSP/MSPBLUE/3.jpg,images/Male/MSP/MSPBLUE/4.jpg,images/Male/MSP/MSPBLUE/5.jpg,images/Male/MSP/MSPBLUE/6.jpg', CAST(1619651.450 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (4, N'MSPGRD', N'Giày Thể Thao Nam Biti''s DSM074933XDD (Xanh Dương Đậm)', N'images/Male/MSP/MSPGR/1.jpg,images/Male/MSP/MSPGR/2.jpg,images/Male/MSP/MSPGR/3.jpg,images/Male/MSP/MSPGR/4.jpg,images/Male/MSP/MSPGR/5.jpg,images/Male/MSP/MSPGR/6.jpg', CAST(1580196.830 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (4, N'MSPWH', N'Giày Thể Thao Nam DSM075033TRG (Trắng)', N'images/Male/MSP/MSPWH/1.jpg,images/Male/MSP/MSPWH/2.jpg,images/Male/MSP/MSPWH/3.jpg,images/Male/MSP/MSPWH/4.jpg,images/Male/MSP/MSPWH/5.jpg,images/Male/MSP/MSPWH/6.jpg', CAST(856118.710 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (7, N'MTAYBL1', N'Giày Tây Nam Biti''s X DVM289880DEN (Đen)', N'images/Male/MTAY/MTAYBL1/1.jpg,images/Male/MTAY/MTAYBL1/2.jpg,images/Male/MTAY/MTAYBL1/3.jpg,images/Male/MTAY/MTAYBL1/4.jpg,images/Male/MTAY/MTAYBL1/5.jpg,images/Male/MTAY/MTAYBL1/6.jpg', CAST(1647591.540 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (7, N'MTAYBL2', N'Giày Da Nam Biti''s X DMM373880DEN (Đen)', N'images/Male/MTAY/MTAYBL2/1.jpg,images/Male/MTAY/MTAYBL2/2.jpg,images/Male/MTAY/MTAYBL2/3.jpg,images/Male/MTAY/MTAYBL2/4.jpg,images/Male/MTAY/MTAYBL2/5.jpg,images/Male/MTAY/MTAYBL2/6.jpg', CAST(898838.250 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (7, N'MTAYBL3', N'Giày Da Nam Biti''s X DMM372880DEN (Đen)', N'images/Male/MTAY/MTAYBL3/1.jpg,images/Male/MTAY/MTAYBL3/2.jpg,images/Male/MTAY/MTAYBL3/3.jpg,images/Male/MTAY/MTAYBL3/4.jpg,images/Male/MTAY/MTAYBL3/5.jpg,images/Male/MTAY/MTAYBL3/6.jpg', CAST(1832404.760 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (7, N'MTAYBR', N'Giày Da Nam Biti''s X DMM371880VDB (Vàng Da Bò)', N'images/Male/MTAY/MTAYBR/1.jpg,images/Male/MTAY/MTAYBR/2.jpg,images/Male/MTAY/MTAYBR/3.jpg,images/Male/MTAY/MTAYBR/4.jpg,images/Male/MTAY/MTAYBR/5.jpg,images/Male/MTAY/MTAYBR/6.jpg', CAST(631468.650 AS Numeric(10, 3)))
INSERT [dbo].[Product] ([cateID], [prodID], [ProdName], [prodImg], [price]) VALUES (7, N'MTAYBR2', N'Giày Tây Da Nam Cao Cấp Biti''s X DVM274880NAU (Nâu)', N'images/Male/MTAY/MTAYBR2/1.jpg,images/Male/MTAY/MTAYBR2/2.jpg,images/Male/MTAY/MTAYBR2/3.jpg,images/Male/MTAY/MTAYBR2/4.jpg,images/Male/MTAY/MTAYBR2/5.jpg,images/Male/MTAY/MTAYBR2/6.jpg', CAST(1664038.350 AS Numeric(10, 3)))
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Password], [Ho], [Ten], [DOB], [Address], [GioiTinh], [sdt], [role]) VALUES (1, N'huytq', N'huytq12345', N'Trần', N'Huy', CAST(N'2002-02-22' AS Date), N'Hà Nội', N'Nam', NULL, N'admin')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Prod_Variant]  WITH CHECK ADD FOREIGN KEY([prodID])
REFERENCES [dbo].[Product] ([prodID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cateID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD CHECK  ((len([password])>=(5) AND len([password])<=(20)))
GO
