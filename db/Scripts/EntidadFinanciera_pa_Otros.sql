USE EntidadFinanciera 
go

--Creacion de pa para Transferencia de Cuentas Internas
CREATE PROCEDURE pa_Cliente_AbonoRetiroInterno
	@CuentaInterna 	nvarchar(50),
	@Descripcion	nvarchar(50),
	@SaldoCuenta   	int
AS
BEGIN
UPDATE Cliente
SET Descripcion = @Descripcion, SaldoCuenta = @SaldoCuenta
WHERE CuentaInterna = @CuentaInterna
END
go

-------------------------------------------------------------------
--PROCESOS OBSOLETOS
--Creacion de pa para Transferencia de Cuentas Externas
CREATE PROCEDURE pa_Cliente_AbonoRetiroExterno
	@CuentaSimpe 	nvarchar(50),
	@Descripcion	nvarchar(50),
	@SaldoCuenta   	int
AS
BEGIN
UPDATE Cliente
SET Descripcion = @Descripcion, SaldoCuenta = @SaldoCuenta 
WHERE CuentaSimpe = @CuentaSimpe
END
go
--PROCESOS OBSOLETOS
-------------------------------------------------------------------

--Creacion de pa para Estados Globales
CREATE PROCEDURE pa_Globales
AS
BEGIN
	SELECT cl.cuentaInterna AS Cuenta, cl.CuentaSimpe AS Simpe, cl.saldoCuenta As Fondos	
	FROM Cliente cl
	ORDER BY cl.saldoCuenta
END
go

--Creacion de pa para ver el total de globales
CREATE PROCEDURE pa_TotalGlobales
AS
BEGIN
	SELECT sum(saldoCuenta) from Cliente
END
go

--Creacion de pa para Estados de Cuenta Clientes
CREATE PROCEDURE pa_EstadosdeCuenta
	@CuentaInterna nvarchar(50)
AS
BEGIN
	SELECT 	tnsc.IdTransac, tnsc.CuentaInterna, tnsc.CuentaSimpe, 
			tnsc.Descripcion, tnsc.Monto, tnsc.HorayFecha
	FROM Transaccion tnsc
	WHERE  tnsc.CuentaInterna = @CuentaInterna
	ORDER BY tnsc.IdTransac
END
go

--Creacion de pa para ver Estados de los Usuarios
CREATE PROCEDURE pa_VerEstadoUsuarios
	@Estado bit
AS
BEGIN
	SELECT 	usu.Usuario, usu.Nombre, usu.Estado
	FROM Usuario usu 
	WHERE usu.Estado = @Estado
	ORDER BY usu.Usuario
END
go

--Creacion de pa para ver Estados de los Clientes
CREATE PROCEDURE pa_VerEstadoClientes
	@Estado bit
AS
BEGIN
	SELECT 	cl.Cedula, cl.Nombre, cl.Apellido1, cl.Apellido2
	FROM Cliente cl 
	WHERE cl.Estado = @Estado
	ORDER BY cl.Cedula
END
go

--Creacion de pa para ver las Transacciones de clientes por ID
CREATE PROCEDURE pa_TransaccionesRegistradas
AS
BEGIN
	SELECT 	tnsc.IdTransac, tnsc.CuentaInterna, tnsc.CuentaSimpe, 
	tnsc.Descripcion, tnsc.Monto, tnsc.HorayFecha
	FROM Transaccion tnsc 
	ORDER BY tnsc.IdTransac
END
go








