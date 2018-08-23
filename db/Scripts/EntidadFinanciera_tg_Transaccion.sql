USE EntidadFinanciera 
go
--Creacion de Triggers para las tablas 
--Creacion de Triggers para Transaccion 
CREATE TRIGGER tg_InsertTransaccion
ON Cliente
FOR INSERT
AS
INSERT Transaccion 
(CuentaInterna, CuentaSimpe, Descripcion, Monto, HorayFecha)
SELECT CuentaInterna, CuentaSimpe, Descripcion, SaldoCuenta, GETDATE()
FROM INSERTED

--Creacion de Trigger para Usuario
CREATE TRIGGER tg_InsertUsuario
ON Cliente
FOR INSERT
AS
INSERT Usuario 
(Usuario,Nombre, Contrasena, Perfil, Estado)
SELECT Cedula, Nombre+' '+Apellido1+' '+Apellido2, Contrasena, 'Cliente', Estado
FROM INSERTED

--Creacion de Trigger para agregar transacciones externas
CREATE TRIGGER tg_InsertPagoBancoExteno
ON BancoExteno
FOR INSERT,UPDATE
AS
INSERT Transaccion 
(CuentaInterna, CuentaSimpe, Descripcion, Monto, HorayFecha)
SELECT CuentaInterna, CuentaBancoEx, DetalleTrans, Monto, HorayFecha
FROM INSERTED

--Creacion de Trigger para actualizacion de saldos Cliente
CREATE TRIGGER tg_ActualizarSaldoCliente
ON BancoExteno
FOR INSERT
AS
BEGIN
	Declare @Monto int
	Declare @CuentaInterna nvarchar(50)
select @Monto = Monto, @CuentaInterna = CuentaInterna --aqui obtine valor nuevo del id
from inserted --tabla temporal que devuelve valores nuevos agregados
UPDATE Cliente
SET Cliente.SaldoCuenta = (Cliente.SaldoCuenta - @Monto)
WHERE Cliente.CuentaInterna LIKE '%' + @CuentaInterna + '%'
end
go




