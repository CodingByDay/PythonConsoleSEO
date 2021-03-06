USE [master]
GO
/****** Object:  Database [Emmares4]    Script Date: 27. 03. 2018 22:32:41 ******/
CREATE DATABASE [Emmares4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Emmares4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Emmares4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Emmares4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Emmares4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Emmares4] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Emmares4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Emmares4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Emmares4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Emmares4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Emmares4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Emmares4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Emmares4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Emmares4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Emmares4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Emmares4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Emmares4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Emmares4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Emmares4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Emmares4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Emmares4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Emmares4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Emmares4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Emmares4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Emmares4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Emmares4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Emmares4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Emmares4] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Emmares4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Emmares4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Emmares4] SET  MULTI_USER 
GO
ALTER DATABASE [Emmares4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Emmares4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Emmares4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Emmares4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Emmares4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Emmares4] SET QUERY_STORE = OFF
GO
USE [Emmares4]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Emmares4]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Balance] [float] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[WalletAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campaigns]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaigns](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Budget] [float] NOT NULL,
	[ContentTypeID] [int] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[GenreID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PublisherID] [int] NULL,
	[Recipients] [int] NOT NULL,
	[RegionID] [int] NOT NULL,
	[Snippet] [nvarchar](max) NULL,
 CONSTRAINT [PK_Campaigns] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTypes]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContentTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Providers]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Providers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[OwnerId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statistics]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CampaignID] [int] NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Rating] [int] NOT NULL,
	[Reward] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Statistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[ProviderID] [int] NULL,
	[SubscriberId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInterests]    Script Date: 27. 03. 2018 22:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInterests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentTypeID] [int] NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserInterests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180327072839_everything', N'2.0.2-rtm-10011')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'4179f046-0f45-460c-bcc7-61a94cd1b914', N'98f98558-59c8-43fc-bb0c-a50493d363f4', N'Marketeer', N'MARKETEER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'784b6e20-fd1b-471c-b22d-ae65d3902d6a', N'a102cd84-d120-4867-be27-e851b0d37574', N'Recipient', N'RECIPIENT')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a61e8ddf-a362-47c5-8a99-111cfa90e7a5', N'4179f046-0f45-460c-bcc7-61a94cd1b914')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aeeaa974-d621-4cd8-a73c-4f9c8ad287c7', N'4179f046-0f45-460c-bcc7-61a94cd1b914')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b', N'784b6e20-fd1b-471c-b22d-ae65d3902d6a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'602e7324-5514-4a3f-b49d-51e6b3ad41e1', N'784b6e20-fd1b-471c-b22d-ae65d3902d6a')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [Balance], [ConcurrencyStamp], [DateAdded], [DateModified], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [WalletAddress]) VALUES (N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b', 0, 23.45, N'a2d2e8d8-6e22-486a-8c4c-7f4ef627e071', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'rajeshkpucsd@gmail.com', 0, N'Rajesh', N'', 1, NULL, N'RAJESHKPUCSD@GMAIL.COM', N'RAJESHKPUCSD@GMAIL.COM', N'AQAAAAEAACcQAAAAEMkc6bKwEchWnhd0ol5HOHmUcG5yUbED2JIL4e6Z74UIlliR3wbk1Z+IPyAvUlJnAg==', NULL, 0, N'f595ef3b-53e6-4397-a4f9-019e166568aa', 0, N'rajeshkpucsd@gmail.com', N'Gdfv')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [Balance], [ConcurrencyStamp], [DateAdded], [DateModified], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [WalletAddress]) VALUES (N'602e7324-5514-4a3f-b49d-51e6b3ad41e1', 0, 32.23, N'7746e25d-cd16-4d64-bc61-d9211b24ab28', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'r1@a.com', 0, N'Recipient', N'One', 1, NULL, N'R1@A.COM', N'R1@A.COM', N'AQAAAAEAACcQAAAAELZDLjEMJEqXbSSzOxF4l3NbOyfb7acZkSe497zS25exIxQ/XrJ8eiOi1Yl7tGGDSg==', NULL, 0, N'a88f9180-9c89-4ab1-8865-7aa5c1853193', 0, N'r1@a.com', N'bojan')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [Balance], [ConcurrencyStamp], [DateAdded], [DateModified], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [WalletAddress]) VALUES (N'a61e8ddf-a362-47c5-8a99-111cfa90e7a5', 0, 343.34, N'e95fb9af-6370-4588-9966-2b0045f103cd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'm1@a.com', 0, N'Marketeer', N'One', 1, NULL, N'M1@A.COM', N'M1@A.COM', N'AQAAAAEAACcQAAAAEPL0TkpjuYqrs4LOVpr+vaK2jRCFkbHWOTJDuy60DTVF+NaoIRJvxPS1c5saUMkf7g==', NULL, 0, N'8ff02f8f-de80-40e5-9c26-3e52553a725d', 0, N'm1@a.com', N'Marketeers Wallet address')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [Balance], [ConcurrencyStamp], [DateAdded], [DateModified], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [WalletAddress]) VALUES (N'aeeaa974-d621-4cd8-a73c-4f9c8ad287c7', 0, 0, N'8512e758-64cd-455c-a273-909262719368', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'rajeshkpucsd1@gmail.com', 0, N'Rajesh', N'Kumar', 1, NULL, N'RAJESHKPUCSD1@GMAIL.COM', N'RAJESHKPUCSD1@GMAIL.COM', N'AQAAAAEAACcQAAAAEJ8/4kIk6TnF83rrb33n3zhWlp6OWkg5rW455275XiKai/n0Dk25OQn0qkvBs78Q8Q==', NULL, 0, N'fd25672c-d361-4830-8754-8d1aa36abc17', 0, N'rajeshkpucsd1@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Campaigns] ON 

INSERT [dbo].[Campaigns] ([ID], [Budget], [ContentTypeID], [DateAdded], [DateModified], [GenreID], [Name], [PublisherID], [Recipients], [RegionID], [Snippet]) VALUES (1, 234, 10, CAST(N'2018-03-27T13:48:13.9623549' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 5, N'Campaign1', 1, 34, 13, NULL)
INSERT [dbo].[Campaigns] ([ID], [Budget], [ContentTypeID], [DateAdded], [DateModified], [GenreID], [Name], [PublisherID], [Recipients], [RegionID], [Snippet]) VALUES (2, 456, 5, CAST(N'2018-03-27T13:49:42.7823171' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 11, N'Campaign2', 1, 23, 15, NULL)
INSERT [dbo].[Campaigns] ([ID], [Budget], [ContentTypeID], [DateAdded], [DateModified], [GenreID], [Name], [PublisherID], [Recipients], [RegionID], [Snippet]) VALUES (3, 1900, 5, CAST(N'2018-03-27T14:40:31.7959102' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 11, N'My Campaign', 1, 1000, 12, NULL)
INSERT [dbo].[Campaigns] ([ID], [Budget], [ContentTypeID], [DateAdded], [DateModified], [GenreID], [Name], [PublisherID], [Recipients], [RegionID], [Snippet]) VALUES (4, 235, 15, CAST(N'2018-03-27T15:35:30.1471322' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 7, N'Test', NULL, 12, 16, NULL)
SET IDENTITY_INSERT [dbo].[Campaigns] OFF
SET IDENTITY_INSERT [dbo].[ContentTypes] ON 

INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (5, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Business')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (6, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Opinion')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (7, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Tech')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (9, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Science')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (10, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Health')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (11, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Sports')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (12, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Arts')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (13, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Books')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (14, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Style')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (15, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Food')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (16, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Travel')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (17, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'magazine')
INSERT [dbo].[ContentTypes] ([ID], [DateAdded], [DateModified], [Name]) VALUES (18, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'ICO')
SET IDENTITY_INSERT [dbo].[ContentTypes] OFF
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([ID], [DateAdded], [DateModified], [Name]) VALUES (5, CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), N'All Type')
INSERT [dbo].[Genres] ([ID], [DateAdded], [DateModified], [Name]) VALUES (7, CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), N'Newsletter')
INSERT [dbo].[Genres] ([ID], [DateAdded], [DateModified], [Name]) VALUES (8, CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), N'One Timer')
INSERT [dbo].[Genres] ([ID], [DateAdded], [DateModified], [Name]) VALUES (9, CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), N'Special Offer')
INSERT [dbo].[Genres] ([ID], [DateAdded], [DateModified], [Name]) VALUES (10, CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), N'Regular Offer')
INSERT [dbo].[Genres] ([ID], [DateAdded], [DateModified], [Name]) VALUES (11, CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), N'Educative Content')
INSERT [dbo].[Genres] ([ID], [DateAdded], [DateModified], [Name]) VALUES (12, CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), CAST(N'2018-03-27T00:00:00.0000000' AS DateTime2), N'Invitation')
SET IDENTITY_INSERT [dbo].[Genres] OFF
SET IDENTITY_INSERT [dbo].[Providers] ON 

INSERT [dbo].[Providers] ([ID], [DateAdded], [DateModified], [Name], [OwnerId]) VALUES (1, CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'NYC News', N'a61e8ddf-a362-47c5-8a99-111cfa90e7a5')
INSERT [dbo].[Providers] ([ID], [DateAdded], [DateModified], [Name], [OwnerId]) VALUES (2, CAST(N'2018-03-27T15:36:08.6418951' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'Provider', N'aeeaa974-d621-4cd8-a73c-4f9c8ad287c7')
SET IDENTITY_INSERT [dbo].[Providers] OFF
SET IDENTITY_INSERT [dbo].[Regions] ON 

INSERT [dbo].[Regions] ([ID], [Code], [DateAdded], [DateModified], [Name]) VALUES (8, N'L', CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'WORLDWIDE')
INSERT [dbo].[Regions] ([ID], [Code], [DateAdded], [DateModified], [Name]) VALUES (9, N'L', CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Local')
INSERT [dbo].[Regions] ([ID], [Code], [DateAdded], [DateModified], [Name]) VALUES (10, N'L', CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Europe')
INSERT [dbo].[Regions] ([ID], [Code], [DateAdded], [DateModified], [Name]) VALUES (11, N'L', CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'US')
INSERT [dbo].[Regions] ([ID], [Code], [DateAdded], [DateModified], [Name]) VALUES (12, N'L', CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Asia')
INSERT [dbo].[Regions] ([ID], [Code], [DateAdded], [DateModified], [Name]) VALUES (13, N'L', CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Africa')
INSERT [dbo].[Regions] ([ID], [Code], [DateAdded], [DateModified], [Name]) VALUES (14, N'L', CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Japan')
INSERT [dbo].[Regions] ([ID], [Code], [DateAdded], [DateModified], [Name]) VALUES (15, N'L', CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'China')
INSERT [dbo].[Regions] ([ID], [Code], [DateAdded], [DateModified], [Name]) VALUES (16, N'L', CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), CAST(N'2018-03-27T09:55:19.6921805' AS DateTime2), N'Local')
SET IDENTITY_INSERT [dbo].[Regions] OFF
SET IDENTITY_INSERT [dbo].[Statistics] ON 

INSERT [dbo].[Statistics] ([ID], [CampaignID], [DateAdded], [DateModified], [Rating], [Reward], [UserId]) VALUES (1, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 3, 34, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Statistics] ([ID], [CampaignID], [DateAdded], [DateModified], [Rating], [Reward], [UserId]) VALUES (10, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 5, 36, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
SET IDENTITY_INSERT [dbo].[Statistics] OFF
SET IDENTITY_INSERT [dbo].[Subscriptions] ON 

INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 2, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (10, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'602e7324-5514-4a3f-b49d-51e6b3ad41e1')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (11, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'602e7324-5514-4a3f-b49d-51e6b3ad41e1')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (12, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'602e7324-5514-4a3f-b49d-51e6b3ad41e1')
INSERT [dbo].[Subscriptions] ([ID], [DateAdded], [DateModified], [ProviderID], [SubscriberId]) VALUES (13, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'602e7324-5514-4a3f-b49d-51e6b3ad41e1')
SET IDENTITY_INSERT [dbo].[Subscriptions] OFF
SET IDENTITY_INSERT [dbo].[UserInterests] ON 

INSERT [dbo].[UserInterests] ([ID], [ContentTypeID], [DateAdded], [DateModified], [UserId]) VALUES (1, 12, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'602e7324-5514-4a3f-b49d-51e6b3ad41e1')
INSERT [dbo].[UserInterests] ([ID], [ContentTypeID], [DateAdded], [DateModified], [UserId]) VALUES (2, 13, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[UserInterests] ([ID], [ContentTypeID], [DateAdded], [DateModified], [UserId]) VALUES (3, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[UserInterests] ([ID], [ContentTypeID], [DateAdded], [DateModified], [UserId]) VALUES (4, 18, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[UserInterests] ([ID], [ContentTypeID], [DateAdded], [DateModified], [UserId]) VALUES (5, 11, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[UserInterests] ([ID], [ContentTypeID], [DateAdded], [DateModified], [UserId]) VALUES (6, 17, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'1568dd97-d4a6-4ae0-b7e2-5cf9769fd97b')
INSERT [dbo].[UserInterests] ([ID], [ContentTypeID], [DateAdded], [DateModified], [UserId]) VALUES (7, 7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[UserInterests] ([ID], [ContentTypeID], [DateAdded], [DateModified], [UserId]) VALUES (8, 10, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[UserInterests] ([ID], [ContentTypeID], [DateAdded], [DateModified], [UserId]) VALUES (9, 18, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'602e7324-5514-4a3f-b49d-51e6b3ad41e1')
SET IDENTITY_INSERT [dbo].[UserInterests] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Campaigns_ContentTypeID]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_Campaigns_ContentTypeID] ON [dbo].[Campaigns]
(
	[ContentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Campaigns_GenreID]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_Campaigns_GenreID] ON [dbo].[Campaigns]
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Campaigns_PublisherID]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_Campaigns_PublisherID] ON [dbo].[Campaigns]
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Campaigns_RegionID]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_Campaigns_RegionID] ON [dbo].[Campaigns]
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Providers_OwnerId]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Providers_OwnerId] ON [dbo].[Providers]
(
	[OwnerId] ASC
)
WHERE ([OwnerId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Statistics_CampaignID]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_Statistics_CampaignID] ON [dbo].[Statistics]
(
	[CampaignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Statistics_UserId]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_Statistics_UserId] ON [dbo].[Statistics]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subscriptions_ProviderID]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_Subscriptions_ProviderID] ON [dbo].[Subscriptions]
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Subscriptions_SubscriberId]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_Subscriptions_SubscriberId] ON [dbo].[Subscriptions]
(
	[SubscriberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserInterests_ContentTypeID]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_UserInterests_ContentTypeID] ON [dbo].[UserInterests]
(
	[ContentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserInterests_UserId]    Script Date: 27. 03. 2018 22:32:42 ******/
CREATE NONCLUSTERED INDEX [IX_UserInterests_UserId] ON [dbo].[UserInterests]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Campaigns]  WITH CHECK ADD  CONSTRAINT [FK_Campaigns_ContentTypes_ContentTypeID] FOREIGN KEY([ContentTypeID])
REFERENCES [dbo].[ContentTypes] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Campaigns] CHECK CONSTRAINT [FK_Campaigns_ContentTypes_ContentTypeID]
GO
ALTER TABLE [dbo].[Campaigns]  WITH CHECK ADD  CONSTRAINT [FK_Campaigns_Genres_GenreID] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Campaigns] CHECK CONSTRAINT [FK_Campaigns_Genres_GenreID]
GO
ALTER TABLE [dbo].[Campaigns]  WITH CHECK ADD  CONSTRAINT [FK_Campaigns_Providers_PublisherID] FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Providers] ([ID])
GO
ALTER TABLE [dbo].[Campaigns] CHECK CONSTRAINT [FK_Campaigns_Providers_PublisherID]
GO
ALTER TABLE [dbo].[Campaigns]  WITH CHECK ADD  CONSTRAINT [FK_Campaigns_Regions_RegionID] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Regions] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Campaigns] CHECK CONSTRAINT [FK_Campaigns_Regions_RegionID]
GO
ALTER TABLE [dbo].[Providers]  WITH CHECK ADD  CONSTRAINT [FK_Providers_AspNetUsers_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Providers] CHECK CONSTRAINT [FK_Providers_AspNetUsers_OwnerId]
GO
ALTER TABLE [dbo].[Statistics]  WITH CHECK ADD  CONSTRAINT [FK_Statistics_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Statistics] CHECK CONSTRAINT [FK_Statistics_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Statistics]  WITH CHECK ADD  CONSTRAINT [FK_Statistics_Campaigns_CampaignID] FOREIGN KEY([CampaignID])
REFERENCES [dbo].[Campaigns] ([ID])
GO
ALTER TABLE [dbo].[Statistics] CHECK CONSTRAINT [FK_Statistics_Campaigns_CampaignID]
GO
ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_Subscriptions_AspNetUsers_SubscriberId] FOREIGN KEY([SubscriberId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Subscriptions] CHECK CONSTRAINT [FK_Subscriptions_AspNetUsers_SubscriberId]
GO
ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_Subscriptions_Providers_ProviderID] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Providers] ([ID])
GO
ALTER TABLE [dbo].[Subscriptions] CHECK CONSTRAINT [FK_Subscriptions_Providers_ProviderID]
GO
ALTER TABLE [dbo].[UserInterests]  WITH CHECK ADD  CONSTRAINT [FK_UserInterests_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserInterests] CHECK CONSTRAINT [FK_UserInterests_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserInterests]  WITH CHECK ADD  CONSTRAINT [FK_UserInterests_ContentTypes_ContentTypeID] FOREIGN KEY([ContentTypeID])
REFERENCES [dbo].[ContentTypes] ([ID])
GO
ALTER TABLE [dbo].[UserInterests] CHECK CONSTRAINT [FK_UserInterests_ContentTypes_ContentTypeID]
GO
USE [master]
GO
ALTER DATABASE [Emmares4] SET  READ_WRITE 
GO
