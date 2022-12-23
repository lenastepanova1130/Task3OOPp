/****** Object:  Database [Task3BD]    Script Date: 23.12.2022 14:43:35 ******/
CREATE DATABASE [Task3BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Task3BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Task3BD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Task3BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Task3BD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Task3BD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Task3BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Task3BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Task3BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Task3BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Task3BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Task3BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [Task3BD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Task3BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Task3BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Task3BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Task3BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Task3BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Task3BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Task3BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Task3BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Task3BD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Task3BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Task3BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Task3BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Task3BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Task3BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Task3BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Task3BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Task3BD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Task3BD] SET  MULTI_USER 
GO
ALTER DATABASE [Task3BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Task3BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Task3BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Task3BD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Task3BD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Task3BD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Task3BD] SET QUERY_STORE = OFF
GO
USE [Task3BD]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 23.12.2022 14:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 23.12.2022 14:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Директор')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Администратор')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'Покупатель')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (5, N'Гость')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([UserID], [Login], [Password], [RoleID]) VALUES (1, N'Maindir', N'Dirdir', 1)
GO
INSERT [dbo].[User] ([UserID], [Login], [Password], [RoleID]) VALUES (2, N'Mainadmin', N'Adminadmin', 2)
GO
INSERT [dbo].[User] ([UserID], [Login], [Password], [RoleID]) VALUES (3, N'MainMen', N'Menmen', 3)
GO
INSERT [dbo].[User] ([UserID], [Login], [Password], [RoleID]) VALUES (4, N'Mainuser', N'UserUser', 4)
GO
INSERT [dbo].[User] ([UserID], [Login], [Password], [RoleID]) VALUES (13, N'Gost', N'Gost', 5)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Task3BD] SET  READ_WRITE 
GO
