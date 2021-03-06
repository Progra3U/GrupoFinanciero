USE EntidadFinanciera 
go
--Creacion de Procedimientos Almacenados
--Tabla BancoExteno

CREATE PROCEDURE pa_BancoExteno_Insert
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
go

CREATE PROCEDURE pa_BancoExteno_Update
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
WHERE CuentaInterna = @CuentaInterna
END
go

CREATE PROCEDURE pa_BancoExteno_Delete
	@CuentaBancoEx	nvarchar(50)
AS
BEGIN
DELETE FROM BancoExteno WHERE CuentaBancoEx = @CuentaBancoEx
END
go

