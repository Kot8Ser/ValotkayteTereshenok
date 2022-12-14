USE [master]
GO
/****** Object:  Database [Агентство_недвижимости330]    Script Date: 07.12.2022 10:37:35 ******/
CREATE DATABASE [Агентство_недвижимости330]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Агентство_недвижимости330', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Агентство_недвижимости330.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Агентство_недвижимости330_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Агентство_недвижимости330_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Агентство_недвижимости330] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Агентство_недвижимости330].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Агентство_недвижимости330] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET ARITHABORT OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Агентство_недвижимости330] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Агентство_недвижимости330] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Агентство_недвижимости330] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Агентство_недвижимости330] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET RECOVERY FULL 
GO
ALTER DATABASE [Агентство_недвижимости330] SET  MULTI_USER 
GO
ALTER DATABASE [Агентство_недвижимости330] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Агентство_недвижимости330] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Агентство_недвижимости330] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Агентство_недвижимости330] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Агентство_недвижимости330] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Агентство_недвижимости330', N'ON'
GO
ALTER DATABASE [Агентство_недвижимости330] SET QUERY_STORE = OFF
GO
USE [Агентство_недвижимости330]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 07.12.2022 10:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[ПотребностьId] [int] NULL,
 CONSTRAINT [PK_Клиент] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Объекты_недвижимости]    Script Date: 07.12.2022 10:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Объекты_недвижимости](
	[Id] [int] NOT NULL,
	[Address_City] [nvarchar](50) NULL,
	[Address_Street] [nvarchar](50) NULL,
	[Address_House] [nvarchar](50) NULL,
	[Address_Number] [int] NULL,
	[Coordinate_latitude] [int] NULL,
	[Coordinate_longitude] [int] NULL,
	[TotalFloors] [int] NULL,
	[TotalArea] [int] NULL,
	[Rooms] [int] NULL,
	[Floor] [int] NULL,
 CONSTRAINT [PK_Объекты_недвижимости] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Потребность]    Script Date: 07.12.2022 10:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Потребность](
	[Id] [int] NOT NULL,
	[Address_City] [nvarchar](50) NULL,
	[Address_Street] [nvarchar](50) NULL,
	[Address_House] [nvarchar](50) NULL,
	[Address_Number] [int] NULL,
	[MinPrice] [int] NULL,
	[MaxPrice] [int] NULL,
	[AgentId] [int] NULL,
	[ClientId] [int] NULL,
	[MinArea] [int] NULL,
	[MaxArea] [int] NULL,
	[MinRooms] [int] NULL,
	[MaxRooms] [int] NULL,
	[MinFloor] [int] NULL,
	[MaxFloor] [int] NULL,
	[ТипId] [int] NULL,
 CONSTRAINT [PK_Потребность] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Предложение]    Script Date: 07.12.2022 10:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Предложение](
	[Id] [int] NOT NULL,
	[Price] [int] NULL,
	[AgentId] [int] NULL,
	[ClientId] [int] NULL,
	[RealEstateId] [int] NULL,
 CONSTRAINT [PK_Предложение] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Риэлтор]    Script Date: 07.12.2022 10:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Риэлтор](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DealShare] [int] NULL,
	[ПотребностьId] [int] NULL,
 CONSTRAINT [PK_Риэлтор] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сделка]    Script Date: 07.12.2022 10:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сделка](
	[Id] [int] NOT NULL,
	[Demand_Id] [int] NULL,
	[Supply_Id] [int] NULL,
 CONSTRAINT [PK_Сделка] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тип_объекта_недвижимости]    Script Date: 07.12.2022 10:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тип_объекта_недвижимости](
	[Id] [int] NOT NULL,
	[Тип] [nvarchar](50) NULL,
	[ТипId] [int] NULL,
	[ОбъектId] [int] NULL,
 CONSTRAINT [PK_Тип_объекта_недвижимости] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (2, N'Семенов', N'Евгений ', N'Николаевич', NULL, NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (3, N'Денисова', N'Олеся', N'Леонидовна', NULL, N'dummy@email.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (5, N'Сафронов', N'Алексей', N'Вячеславович', NULL, N'client@esoft.tech', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (6, N'Кудряшов', N'Александр', N'Витальевич', N'551988', NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (8, N'Фёдоров', N'Алексей', N'Николаевич', NULL, N'fedorov@mail.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (10, N'Пелымская', N'Светлана', N'Александровна', N'83452112233', NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (12, N'Коновальчик', N'Татьяна', N'Геннадьевна', NULL, N'dummy@email.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (14, N'Молоковская', N'Светлана', N'Михайловна', N'898489848', NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (16, N'Моторина', N'Анастасия', N'Сергеевна', N'895159848', NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (17, N'Поспелова', N'Ольга', N'Александровна', NULL, N'angel@mail.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (18, N'Жиляков', N'Владимир', N'Владимирович', N'445588', N'445588@email.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (20, N'Ефремов', N'Владислав', N'Николаевич', NULL, N'parampampam@mail.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (21, N'Баль', N'Валентина', N'Сергеевна', N'7998888444', NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (22, N'Стрелков', N'Артем', N'Николаевич', NULL, N'test@test.test', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (23, N'Луканин', N'Павел', N'Валерьевич', NULL, N'foo@bar.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (25, N'Шарипова', N'Эльвира', N'Закирчановна', N'12345678910', NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (26, N'Фомина', N'Маргарита', N'Николаевна', NULL, N'fomina@email.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (27, N'Кремлев', N'Владислав', N'Юрьевич', N'777', N'kremlevvu@gmail.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (28, N'Пономарева', N'Елена', N'Сергеевна', NULL, N'ponomareva@gmail.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (29, N'Шелест', N'Тамара', N'Васильевна', N'112', NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (30, N'Шарипов', N'Рустам', N'Владимирович', NULL, N'sharipov@yandex.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (31, N'Романов', N'Сергей', N'Федорович', N'2', NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (32, N'Кручинин', N'Иван', N'Андреевич', NULL, N'kruch@list.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (33, N'Алферов', N'Алексей', N'Николаевич', N'688899444', NULL, NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (35, N'Попов ', N'Алексей', N'Николаевич', N'489848565', N'popovan@bik.ru', NULL)
INSERT [dbo].[Клиент] ([Id], [FirstName], [MiddleName], [LastName], [Phone], [Email], [ПотребностьId]) VALUES (36, N'Неезжала', N'Наталья', N'Леонидовна', NULL, N'neez@mail.ru', NULL)
GO
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (1, N'Тюмень', N'Энергостроителей', N'25', 12, 0, 0, NULL, NULL, 1, 3)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (2, N'Тюмень', N'Елизарова', N'8', 44, 0, 0, NULL, 105, 3, 5)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (3, N'Тюмень', N'Московский тракт', N'139', 6, 0, 0, NULL, 62, 3, 2)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (4, N'Тюмень', N'Широтная', N'189', 5, 0, 0, NULL, 50, 2, 7)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (5, N'Тюмень', N'Пролетарская', N'110', 99, 0, 0, NULL, NULL, 2, 2)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (6, N'Тюмень', N'Тараскульская', N'189', 1, 0, 0, NULL, 44, 2, 1)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (7, N'Тюмень', N'Парфенова', N'22', 1, 0, 0, NULL, NULL, 1, 5)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (8, N'Тюмень', N'Республики', N'144', 16, 0, 0, NULL, 92, 3, 1)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (9, N'Тюмень', N'1-й Заречный', N'25', NULL, 0, 0, 2, NULL, NULL, NULL)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (10, N'Тюмень', N'Ялyтopoвcкий тpaкт', NULL, NULL, 0, 0, 3, 130, NULL, NULL)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (11, N'Тюмень', N'Березняковский п', NULL, NULL, 0, 0, 1, 120, NULL, NULL)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (12, N'Тюмень', N'Луговое', NULL, NULL, 0, 0, NULL, 44640, NULL, NULL)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (13, N'Тюмень', N'Алексеевский хутор', NULL, NULL, 0, 0, NULL, 16772, NULL, NULL)
INSERT [dbo].[Объекты_недвижимости] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [Coordinate_latitude], [Coordinate_longitude], [TotalFloors], [TotalArea], [Rooms], [Floor]) VALUES (14, N'Тюмень', N'Суходольский мкр', NULL, NULL, 0, 0, NULL, 12, NULL, NULL)
GO
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 4, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, 4, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, 19, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (6, N'Тюмень', NULL, NULL, NULL, NULL, 3100000, 7, 5, 20, NULL, NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (7, N'Тюмень', N'Широтная', NULL, NULL, NULL, NULL, 24, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (8, N'Тюмень', N'Пролетарская', NULL, NULL, NULL, NULL, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (9, N'Тюмень', N'Тараскульская', NULL, NULL, NULL, NULL, 15, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (10, N'Тюмень', NULL, NULL, NULL, NULL, NULL, 19, 28, 60, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (11, N'Тюмень', NULL, NULL, NULL, NULL, NULL, 4, 29, NULL, NULL, NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (12, N'Тюмень', NULL, NULL, NULL, NULL, NULL, 7, 30, NULL, NULL, NULL, NULL, NULL, 5, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (13, N'Тюмень', NULL, NULL, NULL, NULL, NULL, 9, 31, NULL, NULL, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (14, N'Тюмень', NULL, NULL, NULL, NULL, NULL, 11, 32, NULL, NULL, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (15, N'Тюмень', NULL, NULL, NULL, NULL, NULL, 13, 33, 30, NULL, NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[Потребность] ([Id], [Address_City], [Address_Street], [Address_House], [Address_Number], [MinPrice], [MaxPrice], [AgentId], [ClientId], [MinArea], [MaxArea], [MinRooms], [MaxRooms], [MinFloor], [MaxFloor], [ТипId]) VALUES (16, N'Тюмень', NULL, NULL, NULL, NULL, NULL, 34, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (1, 2500000, 1, 2, 1)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (2, 5000000, 7, 8, 3)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (3, 1300000, 11, 12, 3)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (4, 5000000, 15, 16, 4)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (5, 4700000, 1, 3, 2)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (6, 3750000, 4, 5, 3)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (7, 1900000, 4, 6, 3)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (8, 4300000, 9, 10, 3)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (9, 1750000, 13, 14, 3)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (10, 5850000, 15, 17, 5)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (11, 6800000, 15, 18, 6)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (12, 950000, 19, 20, 7)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (13, 700000, 19, 21, 8)
INSERT [dbo].[Предложение] ([Id], [Price], [AgentId], [ClientId], [RealEstateId]) VALUES (14, 600000, 19, 22, 9)
GO
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (1, N'Фахрутдинов', N'Роман', N'Рубинович', 20, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (4, N'Устинов', N'Максим', N'Алексеевич', 40, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (7, N'Сысоева', N'Людмила', N'Валентиновна', 45, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (9, N'Додонов', N'Илья', N'Геннадьевич', 45, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (11, N'Мухтаруллин', N'Руслан', N'Расыхович', 45, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (13, N'Мосеева', N'Любовь', N'Александровна', 45, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (15, N'Киселев', N'Алексей', N'Геннадьевич', 45, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (19, N'Клюйков', N'Евгений', N'Николаевич', 50, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (24, N'Жданова', N'Галина', N'Николаевна', 45, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (34, N'Басырова', N'Елена', N'Азатовна', 45, NULL)
INSERT [dbo].[Риэлтор] ([Id], [FirstName], [MiddleName], [LastName], [DealShare], [ПотребностьId]) VALUES (37, N'Швецов', N'Виталий', N'Олегович', 45, NULL)
GO
INSERT [dbo].[Сделка] ([Id], [Demand_Id], [Supply_Id]) VALUES (1, 1, 1)
INSERT [dbo].[Сделка] ([Id], [Demand_Id], [Supply_Id]) VALUES (2, 3, 2)
INSERT [dbo].[Сделка] ([Id], [Demand_Id], [Supply_Id]) VALUES (3, 5, 3)
INSERT [dbo].[Сделка] ([Id], [Demand_Id], [Supply_Id]) VALUES (4, 7, 4)
GO
INSERT [dbo].[Тип_объекта_недвижимости] ([Id], [Тип], [ТипId], [ОбъектId]) VALUES (1, N'Квартира', 1, NULL)
INSERT [dbo].[Тип_объекта_недвижимости] ([Id], [Тип], [ТипId], [ОбъектId]) VALUES (2, N'Дом', 2, NULL)
INSERT [dbo].[Тип_объекта_недвижимости] ([Id], [Тип], [ТипId], [ОбъектId]) VALUES (3, NULL, 3, NULL)
GO
ALTER TABLE [dbo].[Клиент]  WITH CHECK ADD  CONSTRAINT [FK_Клиент_Потребность] FOREIGN KEY([ПотребностьId])
REFERENCES [dbo].[Потребность] ([Id])
GO
ALTER TABLE [dbo].[Клиент] CHECK CONSTRAINT [FK_Клиент_Потребность]
GO
ALTER TABLE [dbo].[Потребность]  WITH CHECK ADD  CONSTRAINT [FK_Потребность_Тип_объекта_недвижимости] FOREIGN KEY([ТипId])
REFERENCES [dbo].[Тип_объекта_недвижимости] ([Id])
GO
ALTER TABLE [dbo].[Потребность] CHECK CONSTRAINT [FK_Потребность_Тип_объекта_недвижимости]
GO
ALTER TABLE [dbo].[Предложение]  WITH CHECK ADD  CONSTRAINT [FK_Предложение_Клиент] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Клиент] ([Id])
GO
ALTER TABLE [dbo].[Предложение] CHECK CONSTRAINT [FK_Предложение_Клиент]
GO
ALTER TABLE [dbo].[Предложение]  WITH CHECK ADD  CONSTRAINT [FK_Предложение_Объекты_недвижимости] FOREIGN KEY([RealEstateId])
REFERENCES [dbo].[Объекты_недвижимости] ([Id])
GO
ALTER TABLE [dbo].[Предложение] CHECK CONSTRAINT [FK_Предложение_Объекты_недвижимости]
GO
ALTER TABLE [dbo].[Предложение]  WITH CHECK ADD  CONSTRAINT [FK_Предложение_Риэлтор] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Риэлтор] ([Id])
GO
ALTER TABLE [dbo].[Предложение] CHECK CONSTRAINT [FK_Предложение_Риэлтор]
GO
ALTER TABLE [dbo].[Риэлтор]  WITH CHECK ADD  CONSTRAINT [FK_Риэлтор_Потребность] FOREIGN KEY([ПотребностьId])
REFERENCES [dbo].[Потребность] ([Id])
GO
ALTER TABLE [dbo].[Риэлтор] CHECK CONSTRAINT [FK_Риэлтор_Потребность]
GO
ALTER TABLE [dbo].[Сделка]  WITH CHECK ADD  CONSTRAINT [FK_Сделка_Потребность] FOREIGN KEY([Demand_Id])
REFERENCES [dbo].[Потребность] ([Id])
GO
ALTER TABLE [dbo].[Сделка] CHECK CONSTRAINT [FK_Сделка_Потребность]
GO
ALTER TABLE [dbo].[Сделка]  WITH CHECK ADD  CONSTRAINT [FK_Сделка_Предложение] FOREIGN KEY([Supply_Id])
REFERENCES [dbo].[Предложение] ([Id])
GO
ALTER TABLE [dbo].[Сделка] CHECK CONSTRAINT [FK_Сделка_Предложение]
GO
ALTER TABLE [dbo].[Тип_объекта_недвижимости]  WITH CHECK ADD  CONSTRAINT [FK_Тип_объекта_недвижимости_Объекты_недвижимости] FOREIGN KEY([ОбъектId])
REFERENCES [dbo].[Объекты_недвижимости] ([Id])
GO
ALTER TABLE [dbo].[Тип_объекта_недвижимости] CHECK CONSTRAINT [FK_Тип_объекта_недвижимости_Объекты_недвижимости]
GO
USE [master]
GO
ALTER DATABASE [Агентство_недвижимости330] SET  READ_WRITE 
GO
