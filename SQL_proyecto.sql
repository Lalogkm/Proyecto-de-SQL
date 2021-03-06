USE [master]
GO
/****** Object:  Database [proyecto_universidad_sql]    Script Date: 05/07/2021 05:58:16 a. m. ******/
CREATE DATABASE [proyecto_universidad_sql]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'proyecto_universidad_sql', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\proyecto_universidad_sql.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'proyecto_universidad_sql_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\proyecto_universidad_sql_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [proyecto_universidad_sql] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [proyecto_universidad_sql].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [proyecto_universidad_sql] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET ARITHABORT OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [proyecto_universidad_sql] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [proyecto_universidad_sql] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET  ENABLE_BROKER 
GO
ALTER DATABASE [proyecto_universidad_sql] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [proyecto_universidad_sql] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET RECOVERY FULL 
GO
ALTER DATABASE [proyecto_universidad_sql] SET  MULTI_USER 
GO
ALTER DATABASE [proyecto_universidad_sql] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [proyecto_universidad_sql] SET DB_CHAINING OFF 
GO
ALTER DATABASE [proyecto_universidad_sql] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [proyecto_universidad_sql] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [proyecto_universidad_sql] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [proyecto_universidad_sql] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'proyecto_universidad_sql', N'ON'
GO
ALTER DATABASE [proyecto_universidad_sql] SET QUERY_STORE = OFF
GO
USE [proyecto_universidad_sql]
GO
/****** Object:  Table [dbo].[Conexion]    Script Date: 05/07/2021 05:58:17 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conexion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdStudents] [int] NULL,
	[IdCourses] [int] NULL,
	[IdProfessors] [int] NULL,
	[IdGrades] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 05/07/2021 05:58:17 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Materias] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 05/07/2021 05:58:17 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Materias] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professors]    Script Date: 05/07/2021 05:58:17 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 05/07/2021 05:58:17 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Conexion]  WITH CHECK ADD  CONSTRAINT [FK_Conexion_IdCourses] FOREIGN KEY([IdCourses])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[Conexion] CHECK CONSTRAINT [FK_Conexion_IdCourses]
GO
ALTER TABLE [dbo].[Conexion]  WITH CHECK ADD  CONSTRAINT [FK_Conexion_IdGrades] FOREIGN KEY([IdGrades])
REFERENCES [dbo].[Grades] ([Id])
GO
ALTER TABLE [dbo].[Conexion] CHECK CONSTRAINT [FK_Conexion_IdGrades]
GO
ALTER TABLE [dbo].[Conexion]  WITH CHECK ADD  CONSTRAINT [FK_Conexion_IdProfessors] FOREIGN KEY([IdProfessors])
REFERENCES [dbo].[Professors] ([Id])
GO
ALTER TABLE [dbo].[Conexion] CHECK CONSTRAINT [FK_Conexion_IdProfessors]
GO
ALTER TABLE [dbo].[Conexion]  WITH CHECK ADD  CONSTRAINT [FK_Conexion_IdStudents] FOREIGN KEY([IdStudents])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[Conexion] CHECK CONSTRAINT [FK_Conexion_IdStudents]
GO
USE [master]
GO
ALTER DATABASE [proyecto_universidad_sql] SET  READ_WRITE 
GO
