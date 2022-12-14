USE [master]
GO
/****** Object:  Database [DuLich]    Script Date: 3/31/2022 8:50:37 PM ******/
CREATE DATABASE [DuLich]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DuLich', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DuLich.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DuLich_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DuLich_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DuLich] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DuLich].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DuLich] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DuLich] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DuLich] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DuLich] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DuLich] SET ARITHABORT OFF 
GO
ALTER DATABASE [DuLich] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DuLich] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DuLich] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DuLich] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DuLich] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DuLich] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DuLich] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DuLich] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DuLich] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DuLich] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DuLich] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DuLich] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DuLich] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DuLich] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DuLich] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DuLich] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DuLich] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DuLich] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DuLich] SET  MULTI_USER 
GO
ALTER DATABASE [DuLich] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DuLich] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DuLich] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DuLich] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DuLich] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DuLich] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DuLich] SET QUERY_STORE = OFF
GO
USE [DuLich]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/31/2022 8:50:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Roles] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info]    Script Date: 3/31/2022 8:50:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Info] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NavItems]    Script Date: 3/31/2022 8:50:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavItems](
	[Id] [int] NOT NULL,
	[NavName] [nvarchar](50) NULL,
 CONSTRAINT [PK_NavItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/31/2022 8:50:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InfoId] [nvarchar](10) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [FullName], [Email], [Password], [Roles]) VALUES (2, N'Dung', N'Buisyduc2710@gmail.com', N'202cb962ac59075b964b07152d234b70', N'user')
INSERT [dbo].[Customers] ([Id], [FullName], [Email], [Password], [Roles]) VALUES (3, N'Dai', N'Duc@gmail.com', N'202cb962ac59075b964b07152d234b70', N'user')
INSERT [dbo].[Customers] ([Id], [FullName], [Email], [Password], [Roles]) VALUES (4, N'Dung', N'123', N'202cb962ac59075b964b07152d234b70', N'admin')
INSERT [dbo].[Customers] ([Id], [FullName], [Email], [Password], [Roles]) VALUES (5, N'Duc', N'Duc123@gmail.com', N'26af36874cf996693f910fdf53ecbae8', N'user')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[Info] ([Id], [Name], [Country], [UnitPrice], [Image], [Description]) VALUES (N'1', N'dasdasdas', N'dasdas', 988, N'/Content/image/banner.png', NULL)
INSERT [dbo].[Info] ([Id], [Name], [Country], [UnitPrice], [Image], [Description]) VALUES (N'Dung', N'NewYorkdasdasdasdasdaaaaaaaaaaaaaaaaaaaaa', N'China', 5000, N'/Content/image/Rectangle 9.1.png', NULL)
INSERT [dbo].[Info] ([Id], [Name], [Country], [UnitPrice], [Image], [Description]) VALUES (N'IF1', N'Beijing', N'China', 9000, N'/Content/image/pk5.png', NULL)
INSERT [dbo].[Info] ([Id], [Name], [Country], [UnitPrice], [Image], [Description]) VALUES (N'IF2', N'5 day in Nanjing, Wuxi, Suzhou, Hangzhou and ...', N'China', 1200, N'/Content/image/pk6.png', NULL)
INSERT [dbo].[Info] ([Id], [Name], [Country], [UnitPrice], [Image], [Description]) VALUES (N'IF3', N'6 days in Chengdu, Nyingchi, Lhasa, and Shigatse', N'China', 899, N'/Content/image/pk7.png', NULL)
INSERT [dbo].[Info] ([Id], [Name], [Country], [UnitPrice], [Image], [Description]) VALUES (N'IF6', N'7 days in Beijing,Xiao,Guilin and Shanghai', N'China', 1188, N'/Content/image/pk4.png', NULL)
GO
INSERT [dbo].[NavItems] ([Id], [NavName]) VALUES (1, N'HOLIDAYS')
INSERT [dbo].[NavItems] ([Id], [NavName]) VALUES (2, N'DESTIONATIONS')
INSERT [dbo].[NavItems] ([Id], [NavName]) VALUES (3, N'FLIGHTS')
INSERT [dbo].[NavItems] ([Id], [NavName]) VALUES (4, N'HOTELS')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (1, N'IF3', 4, CAST(N'2023-03-29T00:00:00.000' AS DateTime), N'Hanoi', N'dadasda')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (2, N'IF1', 4, CAST(N'2023-03-29T00:00:00.000' AS DateTime), N'Hanoi', N'dasdas')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (5, N'1', 2, CAST(N'2024-03-29T00:00:00.000' AS DateTime), N'Dong anh', N'dasdasd')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (6, N'1', 3, CAST(N'2023-03-29T00:00:00.000' AS DateTime), N'Dong anh', N'dad')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (7, N'1', 2, CAST(N'2025-03-29T00:00:00.000' AS DateTime), N'Dong anh', N'Dung')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (8, N'Dung', 3, CAST(N'2024-03-29T00:00:00.000' AS DateTime), N'Dong anh', N'duc')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (9, N'IF1', 3, CAST(N'2025-03-30T00:00:00.000' AS DateTime), N'Dong anh', N'412312')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (10, N'1', 2, CAST(N'2026-03-29T00:00:00.000' AS DateTime), N'Hanoi', N'dasds')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (14, N'IF2', 3, CAST(N'2023-03-29T00:00:00.000' AS DateTime), N'Hanoi', N'dasdas')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (15, N'1', 2, CAST(N'2024-03-29T00:00:00.000' AS DateTime), N'Hanoi', N'dasda')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (16, N'1', 2, CAST(N'2026-03-29T00:00:00.000' AS DateTime), N'Dong anh', N'đa')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (18, N'IF2', 4, CAST(N'2026-03-29T00:00:00.000' AS DateTime), N'Hanoi', N'da')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (22, N'IF6', 2, CAST(N'2028-03-29T00:00:00.000' AS DateTime), N'Dong anh', N'duc dz vl')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (23, N'IF6', 3, CAST(N'2030-03-29T00:00:00.000' AS DateTime), N'Thanh Hoa', N'hieu')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (24, N'1', 3, CAST(N'2026-03-29T00:00:00.000' AS DateTime), N'Thanh Hoa', N'Hieu3')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (25, N'1', 3, CAST(N'2026-03-29T00:00:00.000' AS DateTime), N'Thanh Hoa', N'Hieu 4')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (26, N'IF6', 2, CAST(N'2026-03-29T00:00:00.000' AS DateTime), N'Hanoi', N'hieu4')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (27, N'Dung', 3, CAST(N'2026-03-29T00:00:00.000' AS DateTime), N'Dong anh', N'dâda')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (28, N'Dung', 3, CAST(N'2022-01-04T00:00:00.000' AS DateTime), N'Vinh Long', N'Vu Beo')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (29, N'IF3', 4, CAST(N'2025-01-04T00:00:00.000' AS DateTime), N'Vinh Long', N'Vu Beo')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (30, N'Dung', 3, CAST(N'2023-04-01T00:00:00.000' AS DateTime), N'Vinh Long', N'Vu Beo')
INSERT [dbo].[Orders] ([Id], [InfoId], [CustomerId], [OrderDate], [Address], [Description]) VALUES (31, N'Dung', 5, CAST(N'2025-01-04T00:00:00.000' AS DateTime), N'Dong anh', N'dadadada')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Info] FOREIGN KEY([InfoId])
REFERENCES [dbo].[Info] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Info]
GO
USE [master]
GO
ALTER DATABASE [DuLich] SET  READ_WRITE 
GO
