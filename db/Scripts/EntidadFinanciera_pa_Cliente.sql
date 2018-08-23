USE EntidadFinanciera 
go
--Creacion de Procedimientos Almacenados
--Tabla Cliente

CREATE PROCEDURE pa_Cliente_Insert
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
go

CREATE PROCEDURE pa_Cliente_Update
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
go


CREATE PROCEDURE pa_Cliente_Delete
	@Cedula nvarchar(50)
AS
BEGIN
DELETE FROM Cliente WHERE Cedula LIKE '%' + @Cedula + '%'
END
go


CREATE PROCEDURE pa_Cliente_Buscar
	@Cedula nvarchar(50)
AS
BEGIN
	SELECT cl.Cedula, cl.Nombre, cl.Apellido1, cl.Apellido2, cl.FechaNac, cl.Telefono, cl.Correo, cl.Provincia, 
	cl.DireccionExac, cl.SaldoCuenta, cl.Contrasena, cl.CuentaInterna, cl.CuentaSimpe, cl.Descripcion, cl.Estado
	FROM Cliente cl
	WHERE cl.cedula LIKE '%' + @Cedula + '%'
END
go 


--Creacion de pa para consulta Saldos de Clientes
CREATE PROCEDURE pa_ConsultaSaldos
	@Cedula nvarchar(50)
AS
BEGIN
	SELECT cl.SaldoCuenta, cl.Cedula	
	FROM Cliente cl 
	where cl.Cedula = @Cedula
END
go

--Creacion de pa para traer toda la informacion de los clientes menos contraseña
--CREATE PROCEDURE pa_Cliente_TraerTodo
--AS
--BEGIN
--	SELECT 
--	cl.cedula,cl.Nombre,cl.Apellido1,cl.Apellido2,cl.FechaNac,
--	cl.Telefono,cl.Correo,cl.Provincia,cl.DireccionExac,cl.SaldoCuenta,
--	cl.CuentaInterna,cl.CuentaSimpe,cl.Descripcion,cl.Estado bit	
--	FROM Cliente cl
--	ORDER BY cl.cedula
--END
--go