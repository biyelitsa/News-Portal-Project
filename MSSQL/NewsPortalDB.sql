USE [master]
GO
/****** Object:  Database [NewsPortalDB]    Script Date: 3.06.2022 23:00:38 ******/
CREATE DATABASE [NewsPortalDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewsPortalDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NewsPortalDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NewsPortalDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NewsPortalDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NewsPortalDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewsPortalDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewsPortalDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewsPortalDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewsPortalDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewsPortalDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewsPortalDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewsPortalDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NewsPortalDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewsPortalDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewsPortalDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewsPortalDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewsPortalDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewsPortalDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewsPortalDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewsPortalDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewsPortalDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NewsPortalDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewsPortalDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewsPortalDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewsPortalDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewsPortalDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewsPortalDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [NewsPortalDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewsPortalDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NewsPortalDB] SET  MULTI_USER 
GO
ALTER DATABASE [NewsPortalDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewsPortalDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewsPortalDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewsPortalDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NewsPortalDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NewsPortalDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [NewsPortalDB] SET QUERY_STORE = OFF
GO
USE [NewsPortalDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3.06.2022 23:00:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3.06.2022 23:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3.06.2022 23:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3.06.2022 23:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3.06.2022 23:00:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3.06.2022 23:00:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3.06.2022 23:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3.06.2022 23:00:39 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 3.06.2022 23:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthorFirstName] [nvarchar](max) NULL,
	[AuthorLastName] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[LastUpdated] [datetime2](7) NOT NULL,
	[WhoUpdatedId] [int] NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3.06.2022 23:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[NewsId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[LastUpdated] [datetime2](7) NOT NULL,
	[WhoUpdatedId] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 3.06.2022 23:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GuestName] [nvarchar](max) NULL,
	[Body] [nvarchar](max) NULL,
	[NewsId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[LastUpdated] [datetime2](7) NOT NULL,
	[WhoUpdatedId] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 3.06.2022 23:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Body] [nvarchar](max) NULL,
	[AuthorId] [int] NOT NULL,
	[Picture] [nvarchar](max) NULL,
	[Video] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[LastUpdated] [datetime2](7) NOT NULL,
	[WhoUpdatedId] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220601212900_firstMigration', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220601213919_identity', N'6.0.5')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2b92302c-b0f2-468b-acf9-75bd0199ad43', N'Admin', N'ADMIN', N'08e3f48e-d4f7-48d5-9610-cb4c29b53823')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6826a3db-de2d-4c76-810e-5ae3bce55dd4', N'User', N'USER', N'ba0745f6-7c45-4d7c-b95f-8568915f6c6c')
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [AuthorFirstName], [AuthorLastName], [CreatedDate], [LastUpdated], [WhoUpdatedId]) VALUES (1, N'Lorem', N'Ipsum', CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName], [NewsId], [CreatedDate], [LastUpdated], [WhoUpdatedId]) VALUES (2, N'Lorem Category', NULL, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[Categories] ([Id], [CategoryName], [NewsId], [CreatedDate], [LastUpdated], [WhoUpdatedId]) VALUES (3, N'Lorem2 Category', NULL, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Title], [Body], [AuthorId], [Picture], [Video], [CategoryId], [CreatedDate], [LastUpdated], [WhoUpdatedId]) VALUES (1, N'
Proin faucibus libero ac mattis.', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac vulputate lectus, eget accumsan augue. Nunc rhoncus rutrum quam ac fermentum. Praesent vel erat eget dui venenatis tempus sed eu dui. Nulla gravida leo sed velit semper, sed laoreet arcu suscipit. Phasellus varius tellus a mauris gravida iaculis. Ut at magna erat. In hac habitasse platea dictumst. Quisque eget porttitor purus. Sed et ultrices nunc, sed scelerisque diam.

Etiam nec urna at elit tempor laoreet ac ut nunc. Etiam lacus nisi, egestas vitae congue sit amet, ullamcorper ut metus. Suspendisse id egestas lorem. Vestibulum cursus dui eget dui convallis condimentum. Cras non quam sodales lorem commodo posuere. Nullam fringilla est orci, ac imperdiet ligula tempus nec. Fusce malesuada velit ac tortor sodales, in viverra ex vehicula. In vitae ante odio. Praesent iaculis magna id dui cursus, eget tempus magna volutpat. Cras quis pretium ligula.

Vivamus vestibulum tempus egestas. Vestibulum dolor leo, aliquam lacinia orci sed, euismod porttitor ipsum. Proin hendrerit velit ut massa porta facilisis. Donec in ultricies risus. Mauris sed risus risus. Aliquam erat volutpat. Cras vitae egestas eros, at blandit dolor. Donec sed eros faucibus, efficitur ligula a, vulputate tortor. Phasellus dui dui, consectetur non nisl non, porta suscipit nibh. Etiam scelerisque lacinia bibendum. Aenean rutrum mi nec bibendum consequat. Aenean vel nisl ipsum.

Mauris vitae dolor at metus condimentum cursus nec ut nunc. Suspendisse pellentesque feugiat interdum. Suspendisse pharetra diam ex, sit amet mattis quam gravida vitae. Sed risus ante, scelerisque sit amet metus vel, fringilla egestas lectus. Duis tristique dolor vitae nisi tincidunt, eget cursus nisl mattis. Aenean placerat massa consequat, dapibus arcu non, bibendum justo. Morbi nec elementum velit. Proin semper, est a commodo posuere, leo metus pellentesque urna, tempus lobortis ex neque eu nibh. Duis tincidunt nunc in velit fringilla vulputate.

Aliquam et cursus lacus. Praesent ac ex id dolor tincidunt placerat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rhoncus lorem venenatis egestas sagittis. Aenean a hendrerit enim, id dictum ante. Nunc porttitor eros tristique, cursus nisl non, ultrices dolor. Vestibulum nec lacus quis nisl consequat hendrerit. Curabitur euismod a enim sed tristique. Donec in lectus quis lacus consectetur feugiat ut eu dui. Duis sit amet rhoncus nisi.', 1, N'https://picsum.photos/id/235/200/300', NULL, 2, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[News] ([Id], [Title], [Body], [AuthorId], [Picture], [Video], [CategoryId], [CreatedDate], [LastUpdated], [WhoUpdatedId]) VALUES (2, N'Suspendisse ac lobortis mi. Etiam.', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tempus bibendum nibh, id dignissim augue cursus sit amet. Integer porta ut justo quis varius. Phasellus feugiat arcu non nisi pulvinar interdum. Suspendisse dictum tincidunt faucibus. Nulla accumsan semper orci, a vestibulum ex mattis id. Etiam venenatis sodales elit sit amet lacinia. Phasellus at ante commodo, accumsan leo sed, condimentum ligula. Nam cursus risus nec ullamcorper tristique. Nam pulvinar convallis nulla, quis ultricies risus consequat vitae. Nullam a suscipit turpis, ac auctor risus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec auctor sed nunc at lobortis. Maecenas sapien justo, suscipit vehicula velit nec, placerat sollicitudin justo. Etiam velit massa, egestas sit amet sollicitudin eu, finibus non odio. Proin eu erat sit amet libero suscipit feugiat. Curabitur sit amet egestas enim.

Vivamus sit amet interdum nibh, eu tristique metus. Integer nec nunc bibendum, malesuada ex vitae, convallis ligula. Fusce vitae quam et odio tincidunt accumsan a ut leo. Sed rutrum diam eget est iaculis lobortis. Suspendisse sit amet sem vitae quam dictum gravida. Proin fermentum ipsum ante, vel rutrum eros porta non. Vestibulum lobortis suscipit pulvinar.

Morbi pulvinar sapien nec massa accumsan tempus. Nam sem nisi, scelerisque sit amet bibendum nec, accumsan eget tortor. Proin vehicula posuere dignissim. In lectus mi, aliquam non risus sed, euismod pellentesque ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed euismod quam vitae ipsum ornare, vitae accumsan velit varius. Aliquam ut ligula aliquet, commodo ligula vitae, vulputate mi. Quisque egestas mi mauris, et egestas nibh facilisis ac.

Nam ornare rhoncus purus, quis commodo eros. Mauris erat urna, auctor id facilisis at, ornare ut sem. Phasellus porta dapibus diam. Nunc urna diam, consectetur ut sem convallis, tristique vulputate urna. Duis malesuada ullamcorper ante, eget tincidunt augue imperdiet vel. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed a aliquam risus, ullamcorper rutrum lacus. Nunc nec magna augue. Pellentesque hendrerit pellentesque tincidunt. Curabitur congue vitae massa consectetur cursus. Pellentesque pulvinar eleifend ligula sit amet ullamcorper.

Phasellus ultricies nisl eu sem ornare varius et at nisi. Etiam tempor tristique vestibulum. Ut id venenatis justo. Aliquam ac mauris nec neque hendrerit finibus nec ut lectus. Aliquam eget tempus tellus, sed commodo lectus. Cras ipsum lacus, fringilla vel metus nec, luctus dignissim augue. In nec orci ut nulla aliquam vehicula. Nam eu fringilla enim, eu cursus velit. Praesent quis pulvinar risus, laoreet porta elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras aliquam dui id sem egestas varius. Sed vel metus in nulla molestie cursus vel nec sem. Morbi eleifend id sapien quis rhoncus. Nullam et leo aliquam magna vehicula ullamcorper.', 1, N'https://picsum.photos/id/237/200/300', NULL, 2, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[News] ([Id], [Title], [Body], [AuthorId], [Picture], [Video], [CategoryId], [CreatedDate], [LastUpdated], [WhoUpdatedId]) VALUES (4, N'Maecenas vestibulum lacus ac ligula.

', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquam massa massa, pulvinar vehicula tellus finibus sed. Nulla ut varius ipsum, vitae maximus urna. Nam consequat turpis auctor metus commodo congue. Nam eget vehicula massa, ac dapibus lorem. Phasellus a efficitur felis. Integer rhoncus pellentesque turpis, et molestie odio laoreet vitae. Proin ullamcorper augue eu est mattis, a ultrices ipsum sollicitudin.

Quisque orci eros, convallis nec lectus non, tristique tristique sapien. Nulla facilisi. Pellentesque vulputate, libero sit amet congue feugiat, leo nibh iaculis ipsum, at congue lacus risus eu tellus. Suspendisse in lacus ex. Ut pharetra consequat mi ut blandit. Donec nec pharetra lorem. Proin lectus nulla, vestibulum nec efficitur blandit, eleifend eget nunc. Nullam sit amet maximus mauris. Duis rutrum fermentum tellus, eget faucibus turpis dictum eu. Nulla vehicula ante risus, vel porttitor libero dapibus ac. Pellentesque dapibus ex vel ante condimentum posuere.

Sed urna risus, blandit non blandit ut, consectetur ac enim. Nullam ac accumsan arcu, nec euismod eros. Nulla ac volutpat lacus, eu eleifend ex. Phasellus hendrerit odio nulla, nec laoreet metus pulvinar eu. Sed est tortor, efficitur a augue in, euismod eleifend felis. Curabitur ante lacus, volutpat vitae eros a, scelerisque blandit ex. Fusce dignissim bibendum ipsum, a sodales nulla. Nulla eleifend nisi eu ex egestas tristique.

Suspendisse eu ipsum non metus tristique consequat et vel elit. Phasellus ac mauris justo. Duis lacinia, sem vitae vehicula rhoncus, massa est euismod nulla, eget pellentesque erat metus nec est. Aenean hendrerit porttitor congue. Morbi sed velit ut quam blandit tempus. Fusce a felis non ante rhoncus molestie. Maecenas a imperdiet diam. Phasellus egestas nulla leo, sed accumsan diam efficitur sit amet.

Sed mi massa, consequat dictum tortor et, luctus feugiat sapien. Morbi sed dolor ac velit tristique ultrices. Etiam et pretium metus. Duis bibendum nisl ac est aliquam volutpat. Nunc at aliquam urna. Duis vehicula nisl vel vestibulum condimentum. Aenean sed luctus urna, vel luctus felis.', 1, N'https://picsum.photos/id/230/200/300', NULL, 3, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[News] ([Id], [Title], [Body], [AuthorId], [Picture], [Video], [CategoryId], [CreatedDate], [LastUpdated], [WhoUpdatedId]) VALUES (11, N'Maecenas vestibulum lacus ac ligula.

', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac vulputate lectus, eget accumsan augue. Nunc rhoncus rutrum quam ac fermentum. Praesent vel erat eget dui venenatis tempus sed eu dui. Nulla gravida leo sed velit semper, sed laoreet arcu suscipit. Phasellus varius tellus a mauris gravida iaculis. Ut at magna erat. In hac habitasse platea dictumst. Quisque eget porttitor purus. Sed et ultrices nunc, sed scelerisque diam.

Etiam nec urna at elit tempor laoreet ac ut nunc. Etiam lacus nisi, egestas vitae congue sit amet, ullamcorper ut metus. Suspendisse id egestas lorem. Vestibulum cursus dui eget dui convallis condimentum. Cras non quam sodales lorem commodo posuere. Nullam fringilla est orci, ac imperdiet ligula tempus nec. Fusce malesuada velit ac tortor sodales, in viverra ex vehicula. In vitae ante odio. Praesent iaculis magna id dui cursus, eget tempus magna volutpat. Cras quis pretium ligula.

Vivamus vestibulum tempus egestas. Vestibulum dolor leo, aliquam lacinia orci sed, euismod porttitor ipsum. Proin hendrerit velit ut massa porta facilisis. Donec in ultricies risus. Mauris sed risus risus. Aliquam erat volutpat. Cras vitae egestas eros, at blandit dolor. Donec sed eros faucibus, efficitur ligula a, vulputate tortor. Phasellus dui dui, consectetur non nisl non, porta suscipit nibh. Etiam scelerisque lacinia bibendum. Aenean rutrum mi nec bibendum consequat. Aenean vel nisl ipsum.

Mauris vitae dolor at metus condimentum cursus nec ut nunc. Suspendisse pellentesque feugiat interdum. Suspendisse pharetra diam ex, sit amet mattis quam gravida vitae. Sed risus ante, scelerisque sit amet metus vel, fringilla egestas lectus. Duis tristique dolor vitae nisi tincidunt, eget cursus nisl mattis. Aenean placerat massa consequat, dapibus arcu non, bibendum justo. Morbi nec elementum velit. Proin semper, est a commodo posuere, leo metus pellentesque urna, tempus lobortis ex neque eu nibh. Duis tincidunt nunc in velit fringilla vulputate.

Aliquam et cursus lacus. Praesent ac ex id dolor tincidunt placerat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rhoncus lorem venenatis egestas sagittis. Aenean a hendrerit enim, id dictum ante. Nunc porttitor eros tristique, cursus nisl non, ultrices dolor. Vestibulum nec lacus quis nisl consequat hendrerit. Curabitur euismod a enim sed tristique. Donec in lectus quis lacus consectetur feugiat ut eu dui. Duis sit amet rhoncus nisi.', 1, N'https://picsum.photos/id/239/200/300', NULL, 2, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3.06.2022 23:00:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3.06.2022 23:00:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Authors_WhoUpdatedId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_Authors_WhoUpdatedId] ON [dbo].[Authors]
(
	[WhoUpdatedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categories_NewsId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_Categories_NewsId] ON [dbo].[Categories]
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categories_WhoUpdatedId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_Categories_WhoUpdatedId] ON [dbo].[Categories]
(
	[WhoUpdatedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_NewsId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_NewsId] ON [dbo].[Comments]
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_WhoUpdatedId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_WhoUpdatedId] ON [dbo].[Comments]
(
	[WhoUpdatedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_AuthorId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_News_AuthorId] ON [dbo].[News]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_CategoryId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_News_CategoryId] ON [dbo].[News]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_WhoUpdatedId]    Script Date: 3.06.2022 23:00:39 ******/
CREATE NONCLUSTERED INDEX [IX_News_WhoUpdatedId] ON [dbo].[News]
(
	[WhoUpdatedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[Authors]  WITH CHECK ADD  CONSTRAINT [FK_Authors_Authors_WhoUpdatedId] FOREIGN KEY([WhoUpdatedId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Authors] CHECK CONSTRAINT [FK_Authors_Authors_WhoUpdatedId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Authors_WhoUpdatedId] FOREIGN KEY([WhoUpdatedId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Authors_WhoUpdatedId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_News_NewsId] FOREIGN KEY([NewsId])
REFERENCES [dbo].[News] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_News_NewsId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Authors_WhoUpdatedId] FOREIGN KEY([WhoUpdatedId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Authors_WhoUpdatedId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_News_NewsId] FOREIGN KEY([NewsId])
REFERENCES [dbo].[News] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_News_NewsId]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Authors_AuthorId]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Authors_WhoUpdatedId] FOREIGN KEY([WhoUpdatedId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Authors_WhoUpdatedId]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [NewsPortalDB] SET  READ_WRITE 
GO
