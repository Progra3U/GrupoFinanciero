use master;  --Esta es la base madre que me permite generar desde ella 
go           --nuevas bases de datos y maneja informacion general

--Lenguaje de Definicion de datos

IF NOT EXISTS(SELECT * FROM sysdatabases WHERE name = 'EntidadFinanciera')
	BEGIN
		create database EntidadFinanciera
		ON(
			NAME = 'EntidadFinanciera',
			FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\EntidadFinanciera.mdf',
			SIZE = 1MB,
			MAXSIZE = 10MB,
			FILEGROWTH = 5
		)
		LOG ON(
			NAME = 'EntidadFinanciera_log',
			FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\Log\EntidadFinanciera.ldf',
			SIZE = 1MB,
			MAXSIZE = 10MB,
			FILEGROWTH = 5
		)
	END
ELSE
	BEGIN
		print 'Base de datos EntidadFinanciera ya existe'
	END
go

use EntidadFinanciera --Ubicacion de la base de datos
go

IF NOT EXISTS(select * from sysobjects where type = 'U' and name = 'Cliente')
	BEGIN
		create table Cliente--Defino la tabla con sus campos y propiedades					  
		(				     --Se estable la clave primaria y valor default
			 Cedula 		int primary key,
             Nombre 		nvarchar(50) not null default('Sin Nombre'),
			 Apellido1     	nvarchar(50) not null default('Sin Nombre'),
             Apellido2     	nvarchar(50) not null default('Sin Nombre'),
             FechaNac      	datetime,
             Telefono     	nvarchar(50) not null default('12345'),
             Correo	       	nvarchar(50) not null default('Sin Nombre'),
             Provincia     	nvarchar(50) not null default('Sin Nombre'),
             DireccionExac 	nvarchar(50) not null default('Sin Nombre'),
             SaldoCuenta   	int  not null default(1),
             Contrasena	   	nvarchar(50) not null default('Sin Nombre'),
             CuentaInterna 	nvarchar(50) not null default('Sin Nombre'),
             CuentaSimpe	nvarchar(50) not null default('Sin Nombre'),
             Descripcion	nvarchar(50) not null default('Sin Descripcion'),
             Estado		   	bit not null default(1)
		)
	END
ELSE
	BEGIN
		print 'Tabla Cliente ya existe'
	END
go

IF NOT EXISTS(select * from sysobjects where type = 'U' and name = 'Usuario')
	BEGIN
		create table Usuario
		(
			Usuario 	nvarchar(50) primary key,
			Nombre 		nvarchar(50) not null default('Sin nombre'),
			Contrasena 	nvarchar(50) not null default('12345'),
			Estado 		bit not null default(1)
		)
	END
ELSE
	BEGIN
		print 'Tabla Usuario ya existe'
	END
go

IF NOT EXISTS(select * from sysobjects where type = 'U' and name = 'Servicio')
	BEGIN
		create table Servicio
		(
			IdSevicio 		int identity primary key,
			DescServicio 	nvarchar(50) not null default('Sin Descripcion'),
			Estado 			bit not null default(1)
		)
	END
ELSE
	BEGIN
		print 'Tabla Servicio ya existe'
	END
go

IF NOT EXISTS(select * from sysobjects where type = 'U' and name = 'BancoExteno')
	BEGIN
		create table BancoExteno
		(
			IdTransacE 		int identity primary key,
			CuentaExterna 	nvarchar(50) not null default('Sin Descripcion'),
			DetalleTrans 	nvarchar(50) not null default('Sin Descripcion'),
			Monto 			int not null default(1)
		)
	END
ELSE
	BEGIN
		print 'Tabla BancoExteno ya existe'
	END
go

IF NOT EXISTS(select * from sysobjects where type = 'U' and name = 'Transaccion')
	BEGIN
		create table Transaccion
		(
		    IdTransac 	int identity primary key,
		    Cedula 		int,
		    CuentaInterna nvarchar(50) not null default('Sin Descripcion'),
		    CuentaSimpe nvarchar(50) not null default('Sin Descripcion'),
		    Descripcion nvarchar(50) not null default('Sin Descripcion'),
		    Monto 		int not null default(1),
		    HorayFecha 	datetime
		
		)
	END
ELSE
	BEGIN
		print 'Tabla Transaccion ya existe'
	END
go

--Omitir
-- Lenguaje de Manipulacion de datos

--insert into Usuarios values (121,'judas', '1234', 1)
--insert into Clientes values (402100628,'Marce','Salas','Montoya', '55-33-2018','123455454','marsalas91',
--'Heredia','mercedesNorte', 1500, '5532018','12345678987','131289738912737123',1)
--
--
--Select * from Clientes
--Select * from Usuarios
--Select * from Transaccion

--insert into Clientes
--values (123456,'Jose', 'Gabriel', 'Cordero', '1986-01-13',
--		1232323123,'jose.cordero3@uamcr.net','Heredia','Heredia',23343,'12231132','13312312312','1212',1)
--
--		insert into Transaccion
--values (123456,'Jose', 'Gabriel',1000,'133123312','13312312312')
--
--SELECT * FROM Clientes INNER JOIN Transaccion on Clientes.cedula = Transaccion.cedula

