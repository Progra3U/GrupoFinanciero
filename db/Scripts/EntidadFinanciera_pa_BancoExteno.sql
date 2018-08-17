USE EntidadFinanciera 
go
--Creacion de Procedimientos Almacenados
--Tabla BancoExteno

CREATE PROCEDURE pa_BancoExteno_Insert
	@CuentaExterna 	nvarchar(50),
	@DetalleTrans 	nvarchar(50),
	@Monto 			int
AS 
BEGIN
INSERT INTO BancoExteno VALUES(@CuentaExterna,@DetalleTrans,@Monto)
END
go

CREATE PROCEDURE pa_BancoExteno_Update
	@CuentaExterna 	nvarchar(50),
	@DetalleTrans 	nvarchar(50),
	@Monto 			int
AS  
BEGIN
UPDATE BancoExteno
SET  CuentaExterna = @CuentaExterna, DetalleTrans = @DetalleTrans, Monto = @Monto
WHERE CuentaExterna = @CuentaExterna
END
go

CREATE PROCEDURE pa_BancoExteno_Delete
	@CuentaExterna	nvarchar(50)
AS
BEGIN
DELETE FROM BancoExteno WHERE CuentaExterna = @CuentaExterna
END
go

