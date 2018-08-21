USE EntidadFinanciera 
go
--Creacion de Procedimientos Almacenados
--Tabla Cliente

CREATE PROCEDURE pa_Cliente_Insert
	@cedula 		int,
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
go

ALTER PROCEDURE pa_Cliente_Update
	@Cedula 		int,
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
WHERE Cedula = @cedula
END
go

CREATE PROCEDURE pa_Cliente_Delete
	@Cedula int
AS
BEGIN
DELETE FROM Cliente WHERE Cedula = @Cedula
END
go


alter PROCEDURE pa_Cliente_Buscar
	@Cedula 		int
AS
BEGIN
	SELECT cl.Cedula, cl.Nombre, cl.Apellido1, cl.Apellido2, cl.FechaNac, cl.Telefono, cl.Correo, cl.Provincia, 
	cl.DireccionExac, cl.SaldoCuenta, cl.Contrasena, cl.CuentaInterna, cl.CuentaSimpe,  cl.Descripcion, cl.Estado
	FROM Cliente cl
	WHERE cl.cedula = @Cedula
END
go 