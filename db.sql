USE [master]
GO
/****** Object:  Database [simplecrudservicedb]    Script Date: 7/16/2015 7:10:42 AM ******/
CREATE DATABASE [simplecrudservicedb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'simplecrudservicedb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\simplecrudservicedb.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'simplecrudservicedb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\simplecrudservicedb_log.ldf' , SIZE = 560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [simplecrudservicedb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [simplecrudservicedb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [simplecrudservicedb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET ARITHABORT OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [simplecrudservicedb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [simplecrudservicedb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [simplecrudservicedb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [simplecrudservicedb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [simplecrudservicedb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [simplecrudservicedb] SET  MULTI_USER 
GO
ALTER DATABASE [simplecrudservicedb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [simplecrudservicedb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [simplecrudservicedb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [simplecrudservicedb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [simplecrudservicedb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [simplecrudservicedb]
GO
/****** Object:  Table [dbo].[userinfo]    Script Date: 7/16/2015 7:10:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userinfo](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[userinfo] ON 

INSERT [dbo].[userinfo] ([userid], [fname], [lname]) VALUES (2, N'Brijesh123', N'Patil123'),(3, N'Brijesh', N'Patil'),(4, N'Yogesh', N'Pande')
SET IDENTITY_INSERT [dbo].[userinfo] OFF
USE [master]
GO
ALTER DATABASE [simplecrudservicedb] SET  READ_WRITE 
GO
