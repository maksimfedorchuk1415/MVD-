USE [master]
GO
/****** Object:  Database [otdel_k]    Script Date: 08.02.2024 22:44:39 ******/
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
/****** Object:  Table [dbo].[l_delos]    Script Date: 08.02.2024 22:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[l_delos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[pasport] [varchar](255) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[post] [varchar](255) NOT NULL,
	[book] [varchar](255) NOT NULL,
	[photo] [text] NULL,
 CONSTRAINT [PK_l_delos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otdels]    Script Date: 08.02.2024 22:44:39 ******/
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
/****** Object:  Table [dbo].[posts]    Script Date: 08.02.2024 22:44:39 ******/
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
/****** Object:  Table [dbo].[roles]    Script Date: 08.02.2024 22:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shtats]    Script Date: 08.02.2024 22:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shtats](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_post] [int] NOT NULL,
	[id_otdel] [int] NOT NULL,
	[vakansii] [varchar](255) NOT NULL,
 CONSTRAINT [PK_shtats] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[titles]    Script Date: 08.02.2024 22:44:39 ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 08.02.2024 22:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[role] [int] NOT NULL,
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
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (4, N'Бухгалтерия', N'Макарова Елизавета Николаевна')
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (5, N'Группа по работе с личным составом', N'Соколов Никита Романович')
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (6, N'Отдел участковых и уполномоченный полиции по делам несовершеннолетних ', N'Романов Филипп Артёмович')
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (7, N'Группа тылового обеспечения', N'Мартынов Иван Богданович')
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (8, N'Отдел уголовного розыска', N'Минин Руслан Дмитриевич')
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (9, N'Следственный отдел', N'Белякова Ксения Артёмовна')
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (10, N'Отдел дознания', N'Егоров Павел Григорьевич')
INSERT [dbo].[otdels] ([id], [name], [rukov]) VALUES (11, N'Отделение охраны и конфоирования подозреваемых и обвииняемых', N'Зайцев Фёдор Денисович')
SET IDENTITY_INSERT [dbo].[otdels] OFF
GO
SET IDENTITY_INSERT [dbo].[posts] ON 

INSERT [dbo].[posts] ([id], [post]) VALUES (1, N'Начальник')
INSERT [dbo].[posts] ([id], [post]) VALUES (2, N'Следователь')
INSERT [dbo].[posts] ([id], [post]) VALUES (3, N'Дознаватель')
INSERT [dbo].[posts] ([id], [post]) VALUES (4, N'Оперуполномоченный')
INSERT [dbo].[posts] ([id], [post]) VALUES (5, N'инспектор по розыску')
INSERT [dbo].[posts] ([id], [post]) VALUES (6, N'Участковый')
INSERT [dbo].[posts] ([id], [post]) VALUES (7, N'Инспектор')
INSERT [dbo].[posts] ([id], [post]) VALUES (8, N'Эксперт')
INSERT [dbo].[posts] ([id], [post]) VALUES (9, N'Бухгалтер')
SET IDENTITY_INSERT [dbo].[posts] OFF
GO
INSERT [dbo].[roles] ([id], [name]) VALUES (0, N'Сотрудник ОМВД РФ "Лукояновский"')
INSERT [dbo].[roles] ([id], [name]) VALUES (1, N'Сотрудник отдела кадров')
INSERT [dbo].[roles] ([id], [name]) VALUES (2, N'Администратор')
GO
SET IDENTITY_INSERT [dbo].[shtats] ON 

INSERT [dbo].[shtats] ([id], [id_post], [id_otdel], [vakansii]) VALUES (1, 1, 2, N'1')
INSERT [dbo].[shtats] ([id], [id_post], [id_otdel], [vakansii]) VALUES (2, 2, 9, N'5')
INSERT [dbo].[shtats] ([id], [id_post], [id_otdel], [vakansii]) VALUES (3, 3, 10, N'5')
INSERT [dbo].[shtats] ([id], [id_post], [id_otdel], [vakansii]) VALUES (4, 9, 4, N'2')
INSERT [dbo].[shtats] ([id], [id_post], [id_otdel], [vakansii]) VALUES (5, 6, 2, N'5')
INSERT [dbo].[shtats] ([id], [id_post], [id_otdel], [vakansii]) VALUES (6, 4, 3, N'6')
INSERT [dbo].[shtats] ([id], [id_post], [id_otdel], [vakansii]) VALUES (7, 1, 3, N'1')
SET IDENTITY_INSERT [dbo].[shtats] OFF
GO
SET IDENTITY_INSERT [dbo].[titles] ON 

INSERT [dbo].[titles] ([id], [title]) VALUES (1002, N'Рядовой')
INSERT [dbo].[titles] ([id], [title]) VALUES (1003, N'Младший сержант')
INSERT [dbo].[titles] ([id], [title]) VALUES (1004, N'Сержант')
INSERT [dbo].[titles] ([id], [title]) VALUES (1005, N'Старший сержант')
INSERT [dbo].[titles] ([id], [title]) VALUES (1006, N'Старшина')
INSERT [dbo].[titles] ([id], [title]) VALUES (1007, N'Прапорщик')
INSERT [dbo].[titles] ([id], [title]) VALUES (1008, N'Старший прапорщик')
INSERT [dbo].[titles] ([id], [title]) VALUES (1009, N'Младший лейтенант')
INSERT [dbo].[titles] ([id], [title]) VALUES (1010, N'Лейтенант')
INSERT [dbo].[titles] ([id], [title]) VALUES (1011, N'Старший лейтенант')
INSERT [dbo].[titles] ([id], [title]) VALUES (1012, N'Капитан')
INSERT [dbo].[titles] ([id], [title]) VALUES (1013, N'Майор')
INSERT [dbo].[titles] ([id], [title]) VALUES (1014, N'Подполковник')
INSERT [dbo].[titles] ([id], [title]) VALUES (1015, N'Полковник')
INSERT [dbo].[titles] ([id], [title]) VALUES (1016, N'Генерал-майор')
INSERT [dbo].[titles] ([id], [title]) VALUES (1017, N'Генерал-лейтенант')
INSERT [dbo].[titles] ([id], [title]) VALUES (1018, N'Генерал-полковник')
SET IDENTITY_INSERT [dbo].[titles] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [email], [password], [role]) VALUES (2, N'Шемарулин Александр Константинович', N'admin', N'123', 2)
INSERT [dbo].[users] ([id], [name], [email], [password], [role]) VALUES (6, N'Ковалев Дмитрий Алексеевич', N'koval', N'123', 1)
INSERT [dbo].[users] ([id], [name], [email], [password], [role]) VALUES (7, N'Федорчук Максим Александрович', N'maks', N'123', 0)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[shtats]  WITH CHECK ADD  CONSTRAINT [FK_shtats_otdels1] FOREIGN KEY([id_otdel])
REFERENCES [dbo].[otdels] ([id])
GO
ALTER TABLE [dbo].[shtats] CHECK CONSTRAINT [FK_shtats_otdels1]
GO
ALTER TABLE [dbo].[shtats]  WITH CHECK ADD  CONSTRAINT [FK_shtats_posts1] FOREIGN KEY([id_post])
REFERENCES [dbo].[posts] ([id])
GO
ALTER TABLE [dbo].[shtats] CHECK CONSTRAINT [FK_shtats_posts1]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([role])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
USE [master]
GO
ALTER DATABASE [otdel_k] SET  READ_WRITE 
GO
