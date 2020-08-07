USE [master]
GO
/****** Object:  Database [Goods]    Script Date: 07.08.2020 15:13:36 ******/
CREATE DATABASE [Goods]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Goods', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Goods.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Goods_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Goods_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Goods] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Goods].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Goods] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Goods] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Goods] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Goods] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Goods] SET ARITHABORT OFF 
GO
ALTER DATABASE [Goods] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Goods] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Goods] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Goods] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Goods] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Goods] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Goods] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Goods] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Goods] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Goods] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Goods] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Goods] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Goods] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Goods] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Goods] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Goods] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Goods] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Goods] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Goods] SET  MULTI_USER 
GO
ALTER DATABASE [Goods] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Goods] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Goods] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Goods] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Goods] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Goods] SET QUERY_STORE = OFF
GO
USE [Goods]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 07.08.2020 15:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](128) NOT NULL,
	[parent_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_into_categories]    Script Date: 07.08.2020 15:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_into_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 07.08.2020 15:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](128) NOT NULL,
	[price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Goods] SET  READ_WRITE 
GO
