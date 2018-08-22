use master;  
go           

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
		CREATE table Cliente--Defino la tabla con sus campos y propiedades					  
		(				     --Se estable la clave primaria y valor default
			 Cedula 		nvarchar(50) primary key,
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
			Perfil		nvarchar(50) not null,
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

