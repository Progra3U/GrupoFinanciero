USE EntidadFinanciera 
go
--Creacion de Triggers para las tablas 
--Creacion de Triggers para Transaccion 
CREATE TRIGGER tg_InsertTransaccion
ON Cliente
FOR INSERT, UPDATE, DELETE
AS
INSERT Transaccion 
(Cedula,CuentaInterna, CuentaSimpe, Descripcion, Monto, HorayFecha)
SELECT Cedula, CuentaInterna, CuentaSimpe, Descripcion, SaldoCuenta, GETDATE()
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

--Creacion de Trigger para actualizacion de saldos Cliente
CREATE TRIGGER tg_ActualizarSaldoCliente
ON BancoExteno
FOR INSERT
AS
UPDATE Cliente
SET SaldoCuenta = Monto
WHERE CuentaInterna = CuentaInterna
FROM INSERTED

--Creacion de Trigger para agregar transacciones externas
CREATE TRIGGER tg_InsertPagoBancoExteno
ON BancoExteno
FOR INSERT
AS
INSERT Transaccion 
(CuentaInterna, CuentaSimpe, Descripcion, Monto, HorayFecha)
SELECT CuentaInterna, CuentaBancoEx, DetalleTrans, Monto, HorayFecha
FROM INSERTED