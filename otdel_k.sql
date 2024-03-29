USE [master]
GO
/****** Object:  Database [otdel_k]    Script Date: 12.10.2023 21:20:33 ******/
CREATE DATABASE [otdel_k]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'otdel_k', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\otdel_k.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'otdel_k_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\otdel_k_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [otdel_k].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [otdel_k] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [otdel_k] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [otdel_k] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [otdel_k] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [otdel_k] SET ARITHABORT OFF 
GO
ALTER DATABASE [otdel_k] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [otdel_k] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [otdel_k] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [otdel_k] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [otdel_k] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [otdel_k] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [otdel_k] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [otdel_k] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [otdel_k] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [otdel_k] SET  DISABLE_BROKER 
GO
ALTER DATABASE [otdel_k] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [otdel_k] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [otdel_k] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [otdel_k] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [otdel_k] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [otdel_k] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [otdel_k] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [otdel_k] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [otdel_k] SET  MULTI_USER 
GO
ALTER DATABASE [otdel_k] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [otdel_k] SET DB_CHAINING OFF 
GO
ALTER DATABASE [otdel_k] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [otdel_k] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'otdel_k', N'ON'
GO
USE [otdel_k]
GO
/****** Object:  Table [dbo].[l_delos]    Script Date: 12.10.2023 21:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[l_delos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[pasport] [varchar](255) NOT NULL,
	[title] [nchar](10) NOT NULL,
	[post] [varchar](255) NOT NULL,
	[book] [varchar](255) NOT NULL,
	[photo] [text] NOT NULL,
 CONSTRAINT [PK_l_delos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otdels]    Script Date: 12.10.2023 21:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otdels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[rukov] [varchar](255) NOT NULL,
 CONSTRAINT [PK_otdels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 12.10.2023 21:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[post] [varchar](255) NOT NULL,
 CONSTRAINT [PK_posts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shtats]    Script Date: 12.10.2023 21:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shtats](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_post] [int] NOT NULL,
	[id_otdel] [int] NOT NULL,
	[vakansii] [int] NOT NULL,
 CONSTRAINT [PK_shtats] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[titles]    Script Date: 12.10.2023 21:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[titles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NOT NULL,
 CONSTRAINT [PK_titles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12.10.2023 21:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[l_delos] ON 

INSERT [dbo].[l_delos] ([id], [name], [pasport], [title], [post], [book], [photo]) VALUES (1, N'Федорчук Максим Александрович', N'2218569632', N'Лейтенант ', N'Дежуный', N'1234567891', N'')
INSERT [dbo].[l_delos] ([id], [name], [pasport], [title], [post], [book], [photo]) VALUES (2, N'Ковалев Дмитрий Алексеевич', N'2218526235', N'Майор     ', N'Следователь', N'1234567891', N'')
SET IDENTITY_INSERT [dbo].[l_delos] OFF
GO
SET IDENTITY_INSERT [dbo].[otdels] ON 

INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (1, N'Отдел кадров', N'Захаров Виктор Александрович')
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (2, N'Дежурная часть', N'Федорчук Максим Александрович')
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (3, N'Уголовный розыск', N'Перевезенцев Владимир Павлович')
SET IDENTITY_INSERT [dbo].[otdels] OFF
GO
SET IDENTITY_INSERT [dbo].[posts] ON 

INSERT [dbo].[posts] ([id], [post]) VALUES (1, N'Следователь')
INSERT [dbo].[posts] ([id], [post]) VALUES (2, N'Участковый')
INSERT [dbo].[posts] ([id], [post]) VALUES (3, N'fggggg')
SET IDENTITY_INSERT [dbo].[posts] OFF
GO
SET IDENTITY_INSERT [dbo].[titles] ON 

INSERT [dbo].[titles] ([id], [title]) VALUES (1, N'Лейтенант')
INSERT [dbo].[titles] ([id], [title]) VALUES (2, N'Майор')
SET IDENTITY_INSERT [dbo].[titles] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [email], [password]) VALUES (2, N'Шемарулин Александр Константинович', N'admin@gmail.com', N'123')
INSERT [dbo].[users] ([id], [name], [email], [password]) VALUES (5, N'Федорчукча Максос Абобусович', N'test', N'123')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[shtats]  WITH CHECK ADD  CONSTRAINT [FK_shtats_otdels] FOREIGN KEY([id_otdel])
REFERENCES [dbo].[otdels] ([id])
GO
ALTER TABLE [dbo].[shtats] CHECK CONSTRAINT [FK_shtats_otdels]
GO
ALTER TABLE [dbo].[shtats]  WITH CHECK ADD  CONSTRAINT [FK_shtats_posts] FOREIGN KEY([id_post])
REFERENCES [dbo].[posts] ([id])
GO
ALTER TABLE [dbo].[shtats] CHECK CONSTRAINT [FK_shtats_posts]
GO
USE [master]
GO
ALTER DATABASE [otdel_k] SET  READ_WRITE 
GO
