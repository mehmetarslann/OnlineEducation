USE [master]
GO
/****** Object:  Database [OnlineEgitim]    Script Date: 17.06.2021 20:16:28 ******/
CREATE DATABASE [OnlineEgitim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineEgitim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OnlineEgitim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineEgitim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OnlineEgitim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OnlineEgitim] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineEgitim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineEgitim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineEgitim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineEgitim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineEgitim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineEgitim] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineEgitim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineEgitim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineEgitim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineEgitim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineEgitim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineEgitim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineEgitim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineEgitim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineEgitim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineEgitim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineEgitim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineEgitim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineEgitim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineEgitim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineEgitim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineEgitim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineEgitim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineEgitim] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineEgitim] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineEgitim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineEgitim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineEgitim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineEgitim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineEgitim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineEgitim] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OnlineEgitim] SET QUERY_STORE = OFF
GO
USE [OnlineEgitim]
GO
/****** Object:  Table [dbo].[Egitmenler]    Script Date: 17.06.2021 20:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitmenler](
	[egt_id] [int] IDENTITY(1,1) NOT NULL,
	[egt_ad] [nvarchar](50) NOT NULL,
	[egt_soyad] [nvarchar](50) NOT NULL,
	[egt_eposta] [nvarchar](50) NOT NULL,
	[egt_sifre] [nvarchar](50) NOT NULL,
	[egt_tel] [nvarchar](50) NOT NULL,
	[egt_puan] [int] NULL,
	[egt_video] [int] NULL,
 CONSTRAINT [PK_Egitmenler] PRIMARY KEY CLUSTERED 
(
	[egt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 17.06.2021 20:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[kat_id] [int] IDENTITY(1,1) NOT NULL,
	[kat_ad] [nvarchar](50) NOT NULL,
	[kat_resim] [nvarchar](150) NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[kat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenciler]    Script Date: 17.06.2021 20:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenciler](
	[ogr_id] [int] IDENTITY(1,1) NOT NULL,
	[ogr_ad] [nvarchar](50) NOT NULL,
	[ogr_soyad] [nvarchar](50) NOT NULL,
	[ogr_eposta] [nvarchar](50) NOT NULL,
	[ogr_sifre] [nvarchar](50) NOT NULL,
	[ogr_tel] [nvarchar](50) NOT NULL,
	[ogr_video] [int] NULL,
 CONSTRAINT [PK_Ogrenciler] PRIMARY KEY CLUSTERED 
(
	[ogr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puanlar]    Script Date: 17.06.2021 20:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puanlar](
	[puan_id] [int] IDENTITY(1,1) NOT NULL,
	[puan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Puanlar] PRIMARY KEY CLUSTERED 
(
	[puan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sepet]    Script Date: 17.06.2021 20:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sepet](
	[sepet_id] [int] IDENTITY(1,1) NOT NULL,
	[fiyat] [nvarchar](50) NOT NULL,
	[video_id] [int] NULL,
 CONSTRAINT [PK_Sepet] PRIMARY KEY CLUSTERED 
(
	[sepet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparis]    Script Date: 17.06.2021 20:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis](
	[SiparisId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NOT NULL,
	[EgitmenId] [int] NOT NULL,
	[SiparisTarih] [datetime] NOT NULL,
	[video_id] [int] NULL,
 CONSTRAINT [PK_Siparis] PRIMARY KEY CLUSTERED 
(
	[SiparisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videolar]    Script Date: 17.06.2021 20:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videolar](
	[vid_id] [int] IDENTITY(1,1) NOT NULL,
	[vid_ad] [nvarchar](50) NOT NULL,
	[vid_link] [nvarchar](50) NOT NULL,
	[kat_ad] [int] NOT NULL,
	[vid_puan] [int] NOT NULL,
	[egt_id] [int] NOT NULL,
 CONSTRAINT [PK_Videolar] PRIMARY KEY CLUSTERED 
(
	[vid_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Egitmenler]  WITH CHECK ADD  CONSTRAINT [FK_Egitmenler_Puanlar] FOREIGN KEY([egt_puan])
REFERENCES [dbo].[Puanlar] ([puan_id])
GO
ALTER TABLE [dbo].[Egitmenler] CHECK CONSTRAINT [FK_Egitmenler_Puanlar]
GO
ALTER TABLE [dbo].[Egitmenler]  WITH CHECK ADD  CONSTRAINT [FK_Egitmenler_Videolar] FOREIGN KEY([egt_video])
REFERENCES [dbo].[Videolar] ([vid_id])
GO
ALTER TABLE [dbo].[Egitmenler] CHECK CONSTRAINT [FK_Egitmenler_Videolar]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_Videolar1] FOREIGN KEY([ogr_video])
REFERENCES [dbo].[Videolar] ([vid_id])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_Videolar1]
GO
ALTER TABLE [dbo].[Sepet]  WITH CHECK ADD  CONSTRAINT [FK_Sepet_Videolar] FOREIGN KEY([video_id])
REFERENCES [dbo].[Videolar] ([vid_id])
GO
ALTER TABLE [dbo].[Sepet] CHECK CONSTRAINT [FK_Sepet_Videolar]
GO
ALTER TABLE [dbo].[Siparis]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Egitmenler] FOREIGN KEY([EgitmenId])
REFERENCES [dbo].[Egitmenler] ([egt_id])
GO
ALTER TABLE [dbo].[Siparis] CHECK CONSTRAINT [FK_Siparis_Egitmenler]
GO
ALTER TABLE [dbo].[Siparis]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Ogrenciler] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[Ogrenciler] ([ogr_id])
GO
ALTER TABLE [dbo].[Siparis] CHECK CONSTRAINT [FK_Siparis_Ogrenciler]
GO
ALTER TABLE [dbo].[Siparis]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Videolar] FOREIGN KEY([video_id])
REFERENCES [dbo].[Videolar] ([vid_id])
GO
ALTER TABLE [dbo].[Siparis] CHECK CONSTRAINT [FK_Siparis_Videolar]
GO
ALTER TABLE [dbo].[Videolar]  WITH CHECK ADD  CONSTRAINT [FK_Videolar_Egitmenler] FOREIGN KEY([egt_id])
REFERENCES [dbo].[Egitmenler] ([egt_id])
GO
ALTER TABLE [dbo].[Videolar] CHECK CONSTRAINT [FK_Videolar_Egitmenler]
GO
ALTER TABLE [dbo].[Videolar]  WITH CHECK ADD  CONSTRAINT [FK_Videolar_Kategoriler] FOREIGN KEY([kat_ad])
REFERENCES [dbo].[Kategoriler] ([kat_id])
GO
ALTER TABLE [dbo].[Videolar] CHECK CONSTRAINT [FK_Videolar_Kategoriler]
GO
ALTER TABLE [dbo].[Videolar]  WITH CHECK ADD  CONSTRAINT [FK_Videolar_Puanlar] FOREIGN KEY([vid_puan])
REFERENCES [dbo].[Puanlar] ([puan_id])
GO
ALTER TABLE [dbo].[Videolar] CHECK CONSTRAINT [FK_Videolar_Puanlar]
GO
USE [master]
GO
ALTER DATABASE [OnlineEgitim] SET  READ_WRITE 
GO
