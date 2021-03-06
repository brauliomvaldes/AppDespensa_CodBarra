USE [master]
GO
/****** Object:  Database [Despensa]    Script Date: 26/05/2019 23:59:26 ******/
CREATE DATABASE [Despensa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Despensa', FILENAME = N'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Despensa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Despensa_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Despensa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Despensa] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Despensa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Despensa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Despensa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Despensa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Despensa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Despensa] SET ARITHABORT OFF 
GO
ALTER DATABASE [Despensa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Despensa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Despensa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Despensa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Despensa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Despensa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Despensa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Despensa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Despensa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Despensa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Despensa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Despensa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Despensa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Despensa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Despensa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Despensa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Despensa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Despensa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Despensa] SET  MULTI_USER 
GO
ALTER DATABASE [Despensa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Despensa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Despensa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Despensa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Despensa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Despensa] SET QUERY_STORE = OFF
GO
USE [Despensa]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[serie] [bigint] NOT NULL,
	[nombre] [int] NOT NULL,
	[valor] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[categoria] [tinyint] NOT NULL,
	[origen] [tinyint] NOT NULL,
	[estado] [bit] NOT NULL,
	[stock] [int] NOT NULL,
	[login] [int] NOT NULL,
 CONSTRAINT [PK_Articulos_1] PRIMARY KEY CLUSTERED 
(
	[serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [tinyint] NOT NULL,
	[nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[id] [tinyint] NOT NULL,
	[nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comuna]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comuna](
	[id] [tinyint] NOT NULL,
	[nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Comuna] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Despensa_Cliente]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Despensa_Cliente](
	[id_usuario] [int] NOT NULL,
	[id_articulo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[login] [int] NOT NULL,
	[password] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Login_1] PRIMARY KEY CLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nombres_Articulos]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nombres_Articulos](
	[id] [int] NOT NULL,
	[nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Nombres_Articulos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Origen]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Origen](
	[id] [tinyint] NOT NULL,
	[nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Origen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[id] [tinyint] NOT NULL,
	[nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[id] [tinyint] NOT NULL,
	[nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 26/05/2019 23:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[login] [int] NOT NULL,
	[nombre] [nchar](50) NOT NULL,
	[apellidos] [nchar](100) NOT NULL,
	[direccion] [nchar](100) NOT NULL,
	[comuna] [tinyint] NOT NULL,
	[ciudad] [tinyint] NOT NULL,
	[pais] [tinyint] NOT NULL,
	[correo] [nchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[estado] [bit] NOT NULL,
	[tipo] [tinyint] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Categoria] FOREIGN KEY([categoria])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Categoria]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Login1] FOREIGN KEY([login])
REFERENCES [dbo].[Login] ([login])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Login1]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Nombres_Articulos] FOREIGN KEY([nombre])
REFERENCES [dbo].[Nombres_Articulos] ([id])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Nombres_Articulos]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Origen] FOREIGN KEY([origen])
REFERENCES [dbo].[Origen] ([id])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Origen]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Usuarios] FOREIGN KEY([login])
REFERENCES [dbo].[Usuarios] ([login])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Usuarios]
GO
ALTER TABLE [dbo].[Despensa_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Despensa_Cliente_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([login])
GO
ALTER TABLE [dbo].[Despensa_Cliente] CHECK CONSTRAINT [FK_Despensa_Cliente_Usuarios]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Ciudad] FOREIGN KEY([ciudad])
REFERENCES [dbo].[Ciudad] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Ciudad]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Comuna] FOREIGN KEY([comuna])
REFERENCES [dbo].[Comuna] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Comuna]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Pais] FOREIGN KEY([pais])
REFERENCES [dbo].[Pais] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Pais]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Tipo] FOREIGN KEY([tipo])
REFERENCES [dbo].[Tipo] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Tipo]
GO
USE [master]
GO
ALTER DATABASE [Despensa] SET  READ_WRITE 
GO
