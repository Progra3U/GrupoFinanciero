USE EntidadFinanciera 
go
--Creacion de Triggers para las tablas 
--Creacion de Triggers para Transaccion 
alter TRIGGER tg_InsertTransaccion
ON Cliente
FOR INSERT
AS
BEGIN
INSERT Transaccion 
(CuentaInterna, CuentaSimpe, Descripcion, Monto, HorayFecha)
SELECT CuentaInterna, CuentaSimpe, Descripcion, SaldoCuenta, GETDATE()
FROM INSERTED
END
GO

--Creacion de Trigger para Usuario
alter TRIGGER tg_InsertUsuario
ON Cliente
FOR INSERT
AS
BEGIN
INSERT Usuario 
(Usuario,Nombre, Contrasena, Perfil, Estado)
SELECT Cedula, Nombre+' '+Apellido1+' '+Apellido2, Contrasena, 'Cliente', Estado
FROM INSERTED
END
GO

--Creacion de Trigger para agregar transacciones externas
alter TRIGGER tg_InsertPagoBancoExteno
ON BancoExteno
FOR INSERT,UPDATE
AS
BEGIN
INSERT Transaccion 
(CuentaInterna, CuentaSimpe, Descripcion, Monto, HorayFecha)
SELECT CuentaInterna, CuentaBancoEx, DetalleTrans, Monto, HorayFecha
FROM INSERTED
END
GO

--Creacion de Trigger para actualizacion de saldos Cliente
alter TRIGGER tg_ActualizarSaldoCliente
ON BancoExteno
FOR INSERT
AS
BEGIN
	Declare @Monto int
	Declare @CuentaInterna nvarchar(50)
select @Monto = Monto, @CuentaInterna = CuentaInterna 
from inserted 
UPDATE Cliente
SET Cliente.SaldoCuenta = (Cliente.SaldoCuenta - @Monto)
WHERE Cliente.CuentaInterna LIKE '%' + @CuentaInterna + '%'
END
GO

--Creacion de Trigger para actualizacion de saldos Entre Clientes Internos
CREATE TRIGGER tg_ActualizarSaldoClienteInternos
ON BancoExteno
FOR INSERT
AS
BEGIN
	Declare @Monto int
	Declare @CuentaSimpe nvarchar(50)
select @Monto = Monto, @CuentaSimpe = CuentaBancoEx 
from inserted 
UPDATE Cliente
SET Cliente.SaldoCuenta = (Cliente.SaldoCuenta + @Monto)
WHERE Cliente.CuentaSimpe LIKE '%' + @CuentaSimpe + '%'
END
GO



