USE [master]
GO
/****** Object:  Database [EntidadFinanciera]    Script Date: 8/24/2018 5:50:39 PM ******/
CREATE DATABASE [EntidadFinanciera]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EntidadFinanciera', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\EntidadFinanciera.mdf' , SIZE = 8192KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'EntidadFinanciera_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\Log\EntidadFinanciera.ldf' , SIZE = 1024KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
GO
ALTER DATABASE [EntidadFinanciera] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EntidadFinanciera].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EntidadFinanciera] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ARITHABORT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EntidadFinanciera] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EntidadFinanciera] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EntidadFinanciera] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EntidadFinanciera] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET RECOVERY FULL 
GO
ALTER DATABASE [EntidadFinanciera] SET  MULTI_USER 
GO
ALTER DATABASE [EntidadFinanciera] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EntidadFinanciera] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EntidadFinanciera] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EntidadFinanciera] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EntidadFinanciera] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EntidadFinanciera', N'ON'
GO
ALTER DATABASE [EntidadFinanciera] SET QUERY_STORE = OFF
GO
USE [EntidadFinanciera]
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
USE [EntidadFinanciera]
GO
/****** Object:  Table [dbo].[BancoExteno]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BancoExteno](
	[IdTransacE] [int] IDENTITY(1,1) NOT NULL,
	[CuentaBancoEx] [nvarchar](50) NOT NULL,
	[CuentaInterna] [nvarchar](50) NOT NULL,
	[DetalleTrans] [nvarchar](50) NOT NULL,
	[HorayFecha] [datetime] NULL,
	[Monto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTransacE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cedula] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido1] [nvarchar](50) NOT NULL,
	[Apellido2] [nvarchar](50) NOT NULL,
	[FechaNac] [datetime] NULL,
	[Telefono] [nvarchar](50) NOT NULL,
	[Correo] [nvarchar](50) NOT NULL,
	[Provincia] [nvarchar](50) NOT NULL,
	[DireccionExac] [nvarchar](50) NOT NULL,
	[SaldoCuenta] [int] NOT NULL,
	[Contrasena] [nvarchar](50) NOT NULL,
	[CuentaInterna] [nvarchar](50) NOT NULL,
	[CuentaSimpe] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[IdSevicio] [int] IDENTITY(1,1) NOT NULL,
	[DescServicio] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSevicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaccion]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaccion](
	[IdTransac] [int] IDENTITY(1,1) NOT NULL,
	[CuentaInterna] [nvarchar](50) NOT NULL,
	[CuentaSimpe] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Monto] [int] NOT NULL,
	[HorayFecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTransac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Usuario] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Contrasena] [nvarchar](50) NOT NULL,
	[Perfil] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BancoExteno] ON 

INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (11, N'004-6794781-2', N'006-4227073-9', N'Pago_de_Servicio_de_Electricidad', CAST(N'2018-08-22T21:29:19.607' AS DateTime), 500)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (12, N'+506-2270-4876', N'006-4227073-9', N'Luz', CAST(N'2018-08-22T21:39:50.137' AS DateTime), 2000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (13, N'004-6794781-2', N'005-4819165-5', N'Pago_de_Servicio_de_Electricidad', CAST(N'2018-08-23T23:13:44.580' AS DateTime), 2000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (14, N'00259', N'005-4819165-5', N'Pago_de_Servicio_de_INTERNET', CAST(N'2018-08-23T23:15:20.853' AS DateTime), 2000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (15, N'004-6794781-2', N'006-2883155-5', N'Pago_de_Servicio_de_Agua', CAST(N'2018-08-23T23:26:51.020' AS DateTime), 1000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (16, N'004-6794781-2', N'006-2883155-5', N'Pago_de_Servicio_de_Electricidad', CAST(N'2018-08-23T23:28:34.463' AS DateTime), 1000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (17, N'004-6794781-2', N'006-2883155-5', N'Pago_de_Servicio_de_Agua', CAST(N'2018-08-23T23:29:44.050' AS DateTime), 1000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (18, N'004-6794781-2', N'006-2883155-5', N'Pago_de_Servicio_de_Agua', CAST(N'2018-08-23T23:31:49.803' AS DateTime), 1000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (19, N'004-6794781-2', N'006-2883155-5', N'Pago_de_Servicio_de_Agua', CAST(N'2018-08-23T23:36:41.070' AS DateTime), 2300)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (20, N'004-6794781-2', N'006-2883155-5', N'Pago_de_Servicio_de_Agua', CAST(N'2018-08-23T23:38:05.487' AS DateTime), 2300)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (21, N'004-6794781-2', N'005-4819165-5', N'Pago_de_Servicio_de_Agua', CAST(N'2018-08-23T23:47:45.727' AS DateTime), 1000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (22, N'004-6794781-2', N'005-4819165-5', N'Pago_de_Servicio_de_Agua', CAST(N'2018-08-23T23:48:17.237' AS DateTime), 2900)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (23, N'+506-8673-8903', N'005-4819165-5', N'Pago_de_Servicio_telefonico_Prepago', CAST(N'2018-08-23T23:51:11.090' AS DateTime), 7100)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (24, N'002050', N'005-4819165-5', N'Pago_de_Servicio_de_Electricidad', CAST(N'2018-08-23T23:53:10.387' AS DateTime), 2000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (25, N'002050', N'005-4819165-5', N'Pago_de_Servicio_de_Internet', CAST(N'2018-08-23T23:56:58.530' AS DateTime), 2000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (26, N'006-2883166-8', N'006-4227073-9', N'Pago Servicios de Compañia', CAST(N'2018-08-24T00:27:40.133' AS DateTime), 75000)
INSERT [dbo].[BancoExteno] ([IdTransacE], [CuentaBancoEx], [CuentaInterna], [DetalleTrans], [HorayFecha], [Monto]) VALUES (27, N'05434184448831263', N'002-6859692-9', N'Pago servios', CAST(N'2018-08-24T01:14:58.377' AS DateTime), 14000)
SET IDENTITY_INSERT [dbo].[BancoExteno] OFF
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Apellido1], [Apellido2], [FechaNac], [Telefono], [Correo], [Provincia], [DireccionExac], [SaldoCuenta], [Contrasena], [CuentaInterna], [CuentaSimpe], [Descripcion], [Estado]) VALUES (N'105670234', N'Pedro', N'Lopez', N'Espinoza', CAST(N'1984-09-24T00:00:00.000' AS DateTime), N'+506-8795-2121', N'666carlitos@gmail.com', N'Cartago', N'Costado Norte de la Iglesia de la Virgen de los An', 20000, N'12345', N'001-1524477-4', N'01561358316291140', N'Apertura de Cuenta', 1)
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Apellido1], [Apellido2], [FechaNac], [Telefono], [Correo], [Provincia], [DireccionExac], [SaldoCuenta], [Contrasena], [CuentaInterna], [CuentaSimpe], [Descripcion], [Estado]) VALUES (N'206550789', N'Carlos', N'Perez', N'Salazar', CAST(N'2000-12-02T00:00:00.000' AS DateTime), N'+506-2270-4876', N'maynordavid@gmail.com', N'San Jose', N'Frente a correos de costa rica', 30000, N'11111111', N'005-4819165-5', N'05434184448831263', N'Apertura de Cuenta', 1)
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Apellido1], [Apellido2], [FechaNac], [Telefono], [Correo], [Provincia], [DireccionExac], [SaldoCuenta], [Contrasena], [CuentaInterna], [CuentaSimpe], [Descripcion], [Estado]) VALUES (N'506780123', N'Maynor', N'Rodriguez', N'Molina', CAST(N'1984-02-02T00:00:00.000' AS DateTime), N'+506-9999-0890', N'maynordavid@gmail.com', N'San Jose', N'Centro de san jose', 16000, N'12345678', N'002-6859692-9', N'02449680368984627', N'Apertura de Cuenta', 1)
SET IDENTITY_INSERT [dbo].[Servicio] ON 

INSERT [dbo].[Servicio] ([IdSevicio], [DescServicio], [Estado]) VALUES (1, N'AguayLuz', 1)
INSERT [dbo].[Servicio] ([IdSevicio], [DescServicio], [Estado]) VALUES (2, N'Telefonina', 1)
INSERT [dbo].[Servicio] ([IdSevicio], [DescServicio], [Estado]) VALUES (3, N'TVeInternet', 0)
SET IDENTITY_INSERT [dbo].[Servicio] OFF
SET IDENTITY_INSERT [dbo].[Transaccion] ON 

INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (13, N'006-4227073-9', N'06433600242983444', N'Apertura de Cuenta', 20000, CAST(N'2018-08-22T21:26:49.743' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (14, N'006-4227073-9', N'004-6794781-2', N'Pago_de_Servicio_de_Electricidad', 500, CAST(N'2018-08-22T21:29:19.607' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (15, N'006-4227073-9', N'+506-2270-4876', N'Luz', 2000, CAST(N'2018-08-22T21:39:50.137' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (16, N'002-6859692-9', N'02449680368984627', N'Apertura de Cuenta', 30000, CAST(N'2018-08-22T23:28:54.123' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (17, N'005-4819165-5', N'05434184448831263', N'Apertura de Cuenta', 35000, CAST(N'2018-08-23T22:38:01.860' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (18, N'005-4819165-5', N'004-6794781-2', N'Pago_de_Servicio_de_Electricidad', 2000, CAST(N'2018-08-23T23:13:44.580' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (19, N'005-4819165-5', N'00259', N'Pago_de_Servicio_de_INTERNET', 2000, CAST(N'2018-08-23T23:15:20.853' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (20, N'006-2883155-5', N'004-6794781-2', N'Pago_de_Servicio_de_Agua', 1000, CAST(N'2018-08-23T23:26:51.020' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (21, N'006-2883155-5', N'004-6794781-2', N'Pago_de_Servicio_de_Electricidad', 1000, CAST(N'2018-08-23T23:28:34.463' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (22, N'006-2883155-5', N'004-6794781-2', N'Pago_de_Servicio_de_Agua', 1000, CAST(N'2018-08-23T23:29:44.050' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (23, N'006-2883155-5', N'004-6794781-2', N'Pago_de_Servicio_de_Agua', 1000, CAST(N'2018-08-23T23:31:49.803' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (24, N'006-2883155-5', N'004-6794781-2', N'Pago_de_Servicio_de_Agua', 2300, CAST(N'2018-08-23T23:36:41.070' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (25, N'006-2883155-5', N'004-6794781-2', N'Pago_de_Servicio_de_Agua', 2300, CAST(N'2018-08-23T23:38:05.487' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (26, N'005-4819165-5', N'004-6794781-2', N'Pago_de_Servicio_de_Agua', 1000, CAST(N'2018-08-23T23:47:45.727' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (27, N'005-4819165-5', N'004-6794781-2', N'Pago_de_Servicio_de_Agua', 2900, CAST(N'2018-08-23T23:48:17.237' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (28, N'005-4819165-5', N'+506-8673-8903', N'Pago_de_Servicio_telefonico_Prepago', 7100, CAST(N'2018-08-23T23:51:11.090' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (29, N'005-4819165-5', N'002050', N'Pago_de_Servicio_de_Electricidad', 2000, CAST(N'2018-08-23T23:53:10.387' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (30, N'005-4819165-5', N'002050', N'Pago_de_Servicio_de_Internet', 2000, CAST(N'2018-08-23T23:56:58.530' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (31, N'006-4227073-9', N'006-2883166-8', N'Pago Servicios de Compañia', 75000, CAST(N'2018-08-24T00:27:40.133' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (32, N'002-6859692-9', N'05434184448831263', N'Pago servios', 14000, CAST(N'2018-08-24T01:14:58.377' AS DateTime))
INSERT [dbo].[Transaccion] ([IdTransac], [CuentaInterna], [CuentaSimpe], [Descripcion], [Monto], [HorayFecha]) VALUES (33, N'001-1524477-4', N'01561358316291140', N'Apertura de Cuenta', 20000, CAST(N'2018-08-24T15:33:01.100' AS DateTime))
SET IDENTITY_INSERT [dbo].[Transaccion] OFF
INSERT [dbo].[Usuario] ([Usuario], [Nombre], [Contrasena], [Perfil], [Estado]) VALUES (N'105670234', N'Pedro Lopez Espinoza', N'12345', N'Cliente', 1)
INSERT [dbo].[Usuario] ([Usuario], [Nombre], [Contrasena], [Perfil], [Estado]) VALUES (N'206550789', N'Carlos Perez Salazar', N'11111111', N'Cliente', 1)
INSERT [dbo].[Usuario] ([Usuario], [Nombre], [Contrasena], [Perfil], [Estado]) VALUES (N'506780123', N'Maynor Rodriguez Molina', N'12345678', N'Cliente', 1)
INSERT [dbo].[Usuario] ([Usuario], [Nombre], [Contrasena], [Perfil], [Estado]) VALUES (N'ADMIN', N'ADMINISTRADOR', N'ADMIN', N'Admin', 1)
INSERT [dbo].[Usuario] ([Usuario], [Nombre], [Contrasena], [Perfil], [Estado]) VALUES (N'USER', N'USUARIO DEL SISTEMA', N'USER', N'Usuario', 1)
ALTER TABLE [dbo].[BancoExteno] ADD  DEFAULT ('Sin Descripcion') FOR [CuentaBancoEx]
GO
ALTER TABLE [dbo].[BancoExteno] ADD  DEFAULT ('Sin Descripcion') FOR [CuentaInterna]
GO
ALTER TABLE [dbo].[BancoExteno] ADD  DEFAULT ('Sin Descripcion') FOR [DetalleTrans]
GO
ALTER TABLE [dbo].[BancoExteno] ADD  DEFAULT ((1)) FOR [Monto]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Nombre]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Apellido1]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Apellido2]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('12345') FOR [Telefono]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Correo]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Provincia]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [DireccionExac]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((1)) FOR [SaldoCuenta]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [Contrasena]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [CuentaInterna]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Nombre') FOR [CuentaSimpe]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ('Sin Descripcion') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Servicio] ADD  DEFAULT ('Sin Descripcion') FOR [DescServicio]
GO
ALTER TABLE [dbo].[Servicio] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Transaccion] ADD  DEFAULT ('Sin Descripcion') FOR [CuentaInterna]
GO
ALTER TABLE [dbo].[Transaccion] ADD  DEFAULT ('Sin Descripcion') FOR [CuentaSimpe]
GO
ALTER TABLE [dbo].[Transaccion] ADD  DEFAULT ('Sin Descripcion') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Transaccion] ADD  DEFAULT ((1)) FOR [Monto]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ('Sin nombre') FOR [Nombre]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ('12345') FOR [Contrasena]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  StoredProcedure [dbo].[pa_BancoExteno_Delete]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_BancoExteno_Delete]
	@CuentaBancoEx	nvarchar(50)
AS
BEGIN
DELETE FROM BancoExteno WHERE CuentaBancoEx = @CuentaBancoEx
END
GO
/****** Object:  StoredProcedure [dbo].[pa_BancoExteno_Insert]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creacion de Procedimientos Almacenados
--Tabla BancoExteno

CREATE PROCEDURE [dbo].[pa_BancoExteno_Insert]
	@CuentaBancoEx 	nvarchar(50),
	@CuentaInterna	nvarchar(50),
	@DetalleTrans 	nvarchar(50),
	@HorayFecha 	datetime,
	@Monto 			int
AS 
BEGIN
INSERT INTO BancoExteno 
VALUES(@CuentaBancoEx,@CuentaInterna,@DetalleTrans,GETDATE(),@Monto)
END
GO
/****** Object:  StoredProcedure [dbo].[pa_BancoExteno_Update]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_BancoExteno_Update]
	@CuentaBancoEx 	nvarchar(50),
	@CuentaInterna	nvarchar(50),
	@DetalleTrans 	nvarchar(50),
	@HorayFecha 	datetime,
	@Monto 			int
AS  
BEGIN
UPDATE BancoExteno
SET  CuentaBancoEx = @CuentaBancoEx, CuentaInterna = @CuentaInterna,
	DetalleTrans = @DetalleTrans, Monto = @Monto, HorayFecha = @HorayFecha
WHERE CuentaBancoEx = @CuentaBancoEx
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_AbonoRetiroExterno]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creacion de pa para Transferencia de Cuentas Externas
CREATE PROCEDURE [dbo].[pa_Cliente_AbonoRetiroExterno]
	@CuentaSimpe 	nvarchar(50),
	@Descripcion	nvarchar(50),
	@SaldoCuenta   	int
AS
BEGIN
UPDATE Cliente
SET Descripcion = @Descripcion, SaldoCuenta = @SaldoCuenta 
WHERE CuentaSimpe = @CuentaSimpe
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_AbonoRetiroInterno]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creacion de pa para Transferencia de Cuentas Internas
CREATE PROCEDURE [dbo].[pa_Cliente_AbonoRetiroInterno]
	@CuentaInterna 	nvarchar(50),
	@Descripcion	nvarchar(50),
	@SaldoCuenta   	int
AS
BEGIN
UPDATE Cliente
SET Descripcion = @Descripcion, SaldoCuenta = @SaldoCuenta
WHERE CuentaInterna = @CuentaInterna
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_Buscar]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pa_Cliente_Buscar]
	@Cedula nvarchar(50)
AS
BEGIN
	SELECT cl.Cedula, cl.Nombre, cl.Apellido1, cl.Apellido2, cl.FechaNac, cl.Telefono, cl.Correo, cl.Provincia, 
	cl.DireccionExac, cl.SaldoCuenta, cl.Contrasena, cl.CuentaInterna, cl.CuentaSimpe, cl.Descripcion, cl.Estado
	FROM Cliente cl
	WHERE cl.cedula LIKE '%' + @Cedula + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_Delete]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[pa_Cliente_Delete]
	@Cedula nvarchar(50)
AS
BEGIN
DELETE FROM Cliente WHERE Cedula LIKE '%' + @Cedula + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_Insert]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creacion de Procedimientos Almacenados
--Tabla Cliente

CREATE PROCEDURE [dbo].[pa_Cliente_Insert]
	@cedula 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Apellido1     	nvarchar(50),
	@Apellido2     	nvarchar(50),
	@FechaNac      	datetime,
	@Telefono     	nvarchar(50),
	@Correo	       	nvarchar(50),
	@Provincia     	nvarchar(50),
	@DireccionExac 	nvarchar(50),
	@SaldoCuenta   	int,
	@Contrasena	   	nvarchar(50),
	@CuentaInterna 	nvarchar(50),
	@CuentaSimpe	nvarchar(50),
	@Descripcion	nvarchar(50),
	@Estado		   	bit
AS 
BEGIN
INSERT INTO Cliente VALUES(
	@cedula,@Nombre,@Apellido1,@Apellido2,@FechaNac,@Telefono,@Correo,
	@Provincia,@DireccionExac,@SaldoCuenta,@Contrasena,@CuentaInterna,
	@CuentaSimpe,@Descripcion,@Estado
)
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Cliente_Update]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_Cliente_Update]
	@Cedula 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Apellido1     	nvarchar(50),
	@Apellido2     	nvarchar(50),
	@FechaNac      	datetime,
	@Telefono     	nvarchar(50),
	@Correo	       	nvarchar(50),
	@Provincia     	nvarchar(50),
	@DireccionExac 	nvarchar(50),
	@Contrasena	   	nvarchar(50),
	@Estado		   	bit
AS 
BEGIN
UPDATE Cliente 
SET Nombre = @Nombre, Apellido1 = @Apellido1, Apellido2 = @Apellido2, FechaNac = @FechaNac, 
	Telefono = @Telefono, Correo = @Correo, Provincia = @Provincia,	DireccionExac = @DireccionExac, 
	Contrasena = @Contrasena, Estado = @Estado
WHERE Cedula LIKE '%' + @Cedula + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[pa_ConsultaSaldos]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Creacion de pa para consulta Saldos de Clientes
CREATE PROCEDURE [dbo].[pa_ConsultaSaldos]
	@Cedula nvarchar(50)
AS
BEGIN
	SELECT cl.SaldoCuenta, cl.Cedula	
	FROM Cliente cl 
	where cl.Cedula = @Cedula
END
GO
/****** Object:  StoredProcedure [dbo].[pa_EstadosdeCuenta]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_EstadosdeCuenta]
	@CuentaInterna nvarchar(50)
AS
BEGIN
	SELECT 	tnsc.IdTransac, tnsc.CuentaInterna, tnsc.CuentaSimpe, 
			tnsc.Descripcion, tnsc.Monto, tnsc.HorayFecha
	FROM Transaccion tnsc
	WHERE  tnsc.CuentaInterna LIKE '%' + @CuentaInterna + '%'
	ORDER BY tnsc.IdTransac
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Globales]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creacion de pa para Estados Globales
CREATE PROCEDURE [dbo].[pa_Globales]
AS
BEGIN
	SELECT cl.cuentaInterna AS Cuenta, cl.CuentaSimpe AS Simpe, cl.saldoCuenta As Fondos	
	FROM Cliente cl
	ORDER BY cl.saldoCuenta
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Login]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creacion de pa para Login
CREATE PROCEDURE [dbo].[pa_Login]
	@Usuario 	nvarchar(50),
	@Contrasena 	nvarchar(50)
AS
BEGIN
	SELECT US.Usuario, US.Nombre, US.Contrasena, US.Perfil, US.Estado
	FROM  Usuario US WHERE US.Usuario LIKE '%' + @Usuario + '%' AND US.Contrasena LIKE '%' + @Contrasena + '%' 
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Servicio_Buscar]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creacion de pa para Buscar Usurios
CREATE PROCEDURE [dbo].[pa_Servicio_Buscar]
	@DescServicio 	nvarchar(50)
AS
BEGIN
	SELECT servc.IdSevicio, servc.DescServicio, servc.Estado
	FROM Servicio servc
	WHERE servc.DescServicio LIKE '%' + @DescServicio + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Servicio_Delete]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_Servicio_Delete]
	@DescServicio 	nvarchar(50)
AS
BEGIN
DELETE FROM Servicio WHERE DescServicio LIKE '%' + @DescServicio + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Servicio_Insert]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creacion de Procedimientos Almacenados
--Tabla Servicio

CREATE PROCEDURE [dbo].[pa_Servicio_Insert]
	@DescServicio 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
INSERT INTO Servicio VALUES(@DescServicio,@Estado)
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Servicio_Update]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Servicio_Update]
	@DescServicio 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
UPDATE Servicio
SET Estado = @Estado
WHERE DescServicio LIKE '%' + @DescServicio + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[pa_TotalGlobales]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_TotalGlobales]
AS
BEGIN
	SELECT sum(saldoCuenta) from Cliente
END
GO
/****** Object:  StoredProcedure [dbo].[pa_TransaccionesRegistradas]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_TransaccionesRegistradas]
AS
BEGIN
	SELECT 	tnsc.IdTransac, tnsc.CuentaInterna, tnsc.CuentaSimpe, 
	tnsc.Descripcion, tnsc.Monto, tnsc.HorayFecha
	FROM Transaccion tnsc 
	ORDER BY tnsc.IdTransac
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Usuario_Buscar]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Usuario_Buscar]
	@Usuario		nvarchar(50)
AS
BEGIN
	SELECT us.Usuario, us.Nombre, us.Contrasena, us.Perfil, us.Estado 
	FROM Usuario us
	WHERE us.Usuario LIKE '%' + @Usuario + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Usuario_Delete]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Usuario_Delete]
	@Usuario nvarchar(50)
AS
BEGIN
DELETE FROM Usuario WHERE Usuario LIKE '%' + @Usuario + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Usuario_Insert]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creacion de Procedimientos Almacenados
--Tabla Usuario

CREATE PROCEDURE [dbo].[pa_Usuario_Insert]
	@Usuario 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Contrasena 	nvarchar(50),
	@Perfil			nvarchar(50),
	@Estado 		bit
AS 
BEGIN
INSERT INTO Usuario VALUES(@Usuario,@Nombre,@Contrasena,@Perfil,@Estado)
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Usuario_Update]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Usuario_Update]
	@Usuario 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Contrasena 	nvarchar(50),
	@Perfil			nvarchar(50),
	@Estado 		bit
AS 
BEGIN
UPDATE Usuario
SET Nombre = @Nombre, Contrasena = @Contrasena, Perfil=@Perfil, Estado = @Estado
WHERE Usuario LIKE '%' + @Usuario + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[pa_VerEstadoClientes]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creacion de pa para ver Estados de los Clientes
CREATE PROCEDURE [dbo].[pa_VerEstadoClientes]
	@Estado bit
AS
BEGIN
	SELECT 	cl.Cedula, cl.Nombre, cl.Apellido1, cl.Apellido2
	FROM Cliente cl 
	WHERE cl.Estado = @Estado
	ORDER BY cl.Cedula
END
GO
/****** Object:  StoredProcedure [dbo].[pa_VerEstadoUsuarios]    Script Date: 8/24/2018 5:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creacion de pa para ver Estados de los Usuarios
CREATE PROCEDURE [dbo].[pa_VerEstadoUsuarios]
	@Estado bit
AS
BEGIN
	SELECT 	usu.Usuario, usu.Nombre, usu.Estado
	FROM Usuario usu 
	WHERE usu.Estado = @Estado
	ORDER BY usu.Usuario
END
GO
USE [master]
GO
ALTER DATABASE [EntidadFinanciera] SET  READ_WRITE 
GO
