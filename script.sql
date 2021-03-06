USE [master]
GO
/****** Object:  Database [Emmares4]    Script Date: 27. 03. 2018 00:26:45 ******/
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
/****** Object:  User [WIN-OB3093I2I0P\emmaresmvp]    Script Date: 27. 03. 2018 00:26:45 ******/
CREATE USER [WIN-OB3093I2I0P\emmaresmvp] FOR LOGIN [WIN-OB3093I2I0P\emmaresmvp] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [WIN-OB3093I2I0P\Administrator]    Script Date: 27. 03. 2018 00:26:45 ******/
CREATE USER [WIN-OB3093I2I0P\Administrator] FOR LOGIN [WIN-OB3093I2I0P\Administrator] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [WIN-OB3093I2I0P\emmaresmvp]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [WIN-OB3093I2I0P\emmaresmvp]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [WIN-OB3093I2I0P\emmaresmvp]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [WIN-OB3093I2I0P\emmaresmvp]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [WIN-OB3093I2I0P\emmaresmvp]
GO
ALTER ROLE [db_datareader] ADD MEMBER [WIN-OB3093I2I0P\emmaresmvp]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [WIN-OB3093I2I0P\emmaresmvp]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [WIN-OB3093I2I0P\emmaresmvp]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [WIN-OB3093I2I0P\emmaresmvp]
GO
ALTER ROLE [db_owner] ADD MEMBER [WIN-OB3093I2I0P\Administrator]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [WIN-OB3093I2I0P\Administrator]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [WIN-OB3093I2I0P\Administrator]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [WIN-OB3093I2I0P\Administrator]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [WIN-OB3093I2I0P\Administrator]
GO
ALTER ROLE [db_datareader] ADD MEMBER [WIN-OB3093I2I0P\Administrator]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [WIN-OB3093I2I0P\Administrator]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [WIN-OB3093I2I0P\Administrator]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [WIN-OB3093I2I0P\Administrator]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27. 03. 2018 00:26:45 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 27. 03. 2018 00:26:46 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 27. 03. 2018 00:26:46 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 27. 03. 2018 00:26:46 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 27. 03. 2018 00:26:46 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 27. 03. 2018 00:26:46 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 27. 03. 2018 00:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Balance] [float] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
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
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[WalletAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 27. 03. 2018 00:26:46 ******/
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
/****** Object:  Table [dbo].[Campaigns]    Script Date: 27. 03. 2018 00:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaigns](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Budget] [float] NOT NULL,
	[ContentTypeID] [int] NULL,
	[GenreID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[OwnerId] [nvarchar](450) NULL,
	[Publisher] [nvarchar](max) NULL,
	[Recipients] [int] NOT NULL,
	[RegionID] [int] NULL,
	[Snippet] [nvarchar](max) NULL,
 CONSTRAINT [PK_Campaigns] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTypes]    Script Date: 27. 03. 2018 00:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContentTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 27. 03. 2018 00:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Providers]    Script Date: 27. 03. 2018 00:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Providers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentTypeID] [int] NULL,
	[GenreID] [int] NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 27. 03. 2018 00:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statistics]    Script Date: 27. 03. 2018 00:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CampaignID] [int] NULL,
	[Rating] [int] NOT NULL,
	[Reward] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Statistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 27. 03. 2018 00:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInterests]    Script Date: 27. 03. 2018 00:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInterests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentTypeID] [int] NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserInterests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Campaigns_ContentTypeID]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Campaigns_ContentTypeID] ON [dbo].[Campaigns]
(
	[ContentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Campaigns_GenreID]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Campaigns_GenreID] ON [dbo].[Campaigns]
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Campaigns_OwnerId]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Campaigns_OwnerId] ON [dbo].[Campaigns]
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Campaigns_RegionID]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Campaigns_RegionID] ON [dbo].[Campaigns]
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Providers_ContentTypeID]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Providers_ContentTypeID] ON [dbo].[Providers]
(
	[ContentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Providers_GenreID]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Providers_GenreID] ON [dbo].[Providers]
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Statistics_CampaignID]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Statistics_CampaignID] ON [dbo].[Statistics]
(
	[CampaignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Statistics_UserId]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Statistics_UserId] ON [dbo].[Statistics]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subscriptions_ProviderID]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Subscriptions_ProviderID] ON [dbo].[Subscriptions]
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Subscriptions_UserId]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_Subscriptions_UserId] ON [dbo].[Subscriptions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserInterests_ContentTypeID]    Script Date: 27. 03. 2018 00:26:46 ******/
CREATE NONCLUSTERED INDEX [IX_UserInterests_ContentTypeID] ON [dbo].[UserInterests]
(
	[ContentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserInterests_UserId]    Script Date: 27. 03. 2018 00:26:46 ******/
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
ALTER TABLE [dbo].[Campaigns]  WITH CHECK ADD  CONSTRAINT [FK_Campaigns_AspNetUsers_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Campaigns] CHECK CONSTRAINT [FK_Campaigns_AspNetUsers_OwnerId]
GO
ALTER TABLE [dbo].[Campaigns]  WITH CHECK ADD  CONSTRAINT [FK_Campaigns_ContentTypes_ContentTypeID] FOREIGN KEY([ContentTypeID])
REFERENCES [dbo].[ContentTypes] ([ID])
GO
ALTER TABLE [dbo].[Campaigns] CHECK CONSTRAINT [FK_Campaigns_ContentTypes_ContentTypeID]
GO
ALTER TABLE [dbo].[Campaigns]  WITH CHECK ADD  CONSTRAINT [FK_Campaigns_Genres_GenreID] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([ID])
GO
ALTER TABLE [dbo].[Campaigns] CHECK CONSTRAINT [FK_Campaigns_Genres_GenreID]
GO
ALTER TABLE [dbo].[Campaigns]  WITH CHECK ADD  CONSTRAINT [FK_Campaigns_Regions_RegionID] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Regions] ([ID])
GO
ALTER TABLE [dbo].[Campaigns] CHECK CONSTRAINT [FK_Campaigns_Regions_RegionID]
GO
ALTER TABLE [dbo].[Providers]  WITH CHECK ADD  CONSTRAINT [FK_Providers_ContentTypes_ContentTypeID] FOREIGN KEY([ContentTypeID])
REFERENCES [dbo].[ContentTypes] ([ID])
GO
ALTER TABLE [dbo].[Providers] CHECK CONSTRAINT [FK_Providers_ContentTypes_ContentTypeID]
GO
ALTER TABLE [dbo].[Providers]  WITH CHECK ADD  CONSTRAINT [FK_Providers_Genres_GenreID] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([ID])
GO
ALTER TABLE [dbo].[Providers] CHECK CONSTRAINT [FK_Providers_Genres_GenreID]
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
ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_Subscriptions_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Subscriptions] CHECK CONSTRAINT [FK_Subscriptions_AspNetUsers_UserId]
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
