USE [master]
GO
/****** Object:  Database [Account]    Script Date: 02.07.2020 21:29:51 ******/
CREATE DATABASE [Account]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Account', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Account.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Account_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Account_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Account] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Account].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Account] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Account] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Account] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Account] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Account] SET ARITHABORT OFF 
GO
ALTER DATABASE [Account] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Account] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Account] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Account] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Account] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Account] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Account] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Account] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Account] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Account] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Account] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Account] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Account] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Account] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Account] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Account] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Account] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Account] SET RECOVERY FULL 
GO
ALTER DATABASE [Account] SET  MULTI_USER 
GO
ALTER DATABASE [Account] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Account] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Account] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Account] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Account] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Account', N'ON'
GO
ALTER DATABASE [Account] SET QUERY_STORE = OFF
GO
USE [Account]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 02.07.2020 21:29:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 02.07.2020 21:29:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_number] [int] NULL,
	[product_number] [int] NULL,
	[quantity] [int] NULL,
	[order_value] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 02.07.2020 21:29:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[code] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[id_country] [int] NOT NULL,
	[id_type] [int] NOT NULL,
 CONSTRAINT [PK_Produkt] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 02.07.2020 21:29:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[test] [nchar](10) NULL,
	[tes] [nchar](10) NULL,
	[te] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 02.07.2020 21:29:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 02.07.2020 21:29:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Email] [varchar](256) NOT NULL,
	[Password] [varchar](256) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([id], [country]) VALUES (1, N'Polska')
INSERT [dbo].[Country] ([id], [country]) VALUES (2, N'USA')
INSERT [dbo].[Country] ([id], [country]) VALUES (3, N'Niemcy')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
INSERT [dbo].[Order] ([order_number], [product_number], [quantity], [order_value]) VALUES (0, 1003, 4, 13.96)
INSERT [dbo].[Order] ([order_number], [product_number], [quantity], [order_value]) VALUES (0, 1001, 1, 2.41)
INSERT [dbo].[Order] ([order_number], [product_number], [quantity], [order_value]) VALUES (0, 1000, 31, 164.92)
INSERT [dbo].[Order] ([order_number], [product_number], [quantity], [order_value]) VALUES (2, 1000, 3, 15.96)
INSERT [dbo].[Order] ([order_number], [product_number], [quantity], [order_value]) VALUES (1, 1000, 2, 10.64)
INSERT [dbo].[Order] ([order_number], [product_number], [quantity], [order_value]) VALUES (1, 1001, 5, 12.05)
INSERT [dbo].[Order] ([order_number], [product_number], [quantity], [order_value]) VALUES (1, 1003, 3, 10.47)
INSERT [dbo].[Order] ([order_number], [product_number], [quantity], [order_value]) VALUES (1, 1005, 2, 5.98)
INSERT [dbo].[Order] ([order_number], [product_number], [quantity], [order_value]) VALUES (1, 1000, 3, 15.96)
GO
INSERT [dbo].[Product] ([code], [name], [price], [id_country], [id_type]) VALUES (1000, N'Pomidor', 5.32, 1, 1)
INSERT [dbo].[Product] ([code], [name], [price], [id_country], [id_type]) VALUES (1001, N'Marchewka', 2.41, 2, 1)
INSERT [dbo].[Product] ([code], [name], [price], [id_country], [id_type]) VALUES (1003, N'Ogórek', 3.49, 1, 1)
INSERT [dbo].[Product] ([code], [name], [price], [id_country], [id_type]) VALUES (1005, N'Banan', 2.99, 3, 2)
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([id], [type]) VALUES (1, N'Vegetable')
INSERT [dbo].[Type] ([id], [type]) VALUES (2, N'Fruit')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
INSERT [dbo].[User] ([Email], [Password]) VALUES (N'jan@op.pl', N'jan')
INSERT [dbo].[User] ([Email], [Password]) VALUES (N'nowak@op.pl', N'nowak')
INSERT [dbo].[User] ([Email], [Password]) VALUES (N'test@gmail.com', N'test')
INSERT [dbo].[User] ([Email], [Password]) VALUES (N'tytt@onet.pl', N'tytt')
INSERT [dbo].[User] ([Email], [Password]) VALUES (N'test2@gmail.com', N'test2')
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([product_number])
REFERENCES [dbo].[Product] ([code])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Country] FOREIGN KEY([id_country])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Country]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Type] FOREIGN KEY([id_type])
REFERENCES [dbo].[Type] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Type]
GO
USE [master]
GO
ALTER DATABASE [Account] SET  READ_WRITE 
GO
