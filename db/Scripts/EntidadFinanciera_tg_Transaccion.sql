USE EntidadFinanciera 
go
--Creacion de Triggers para las tablas 
ALTER TRIGGER tg_InsertTransaccion
ON Cliente
FOR INSERT, UPDATE, DELETE
AS
INSERT Transaccion 
(Cedula,CuentaInterna, CuentaSimpe, Descripcion, Monto, HorayFecha)
SELECT Cedula, CuentaInterna, CuentaSimpe, Descripcion, SaldoCuenta, GETDATE()
FROM INSERTED






