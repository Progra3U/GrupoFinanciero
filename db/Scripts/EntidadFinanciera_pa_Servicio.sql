USE EntidadFinanciera 
go
--Creacion de Procedimientos Almacenados
--Tabla Servicio

CREATE PROCEDURE pa_Servicio_Insert
	@DescServicio 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
INSERT INTO Servicio VALUES(@DescServicio,@Estado)
END
go

CREATE PROCEDURE pa_Servicio_Update
	@DescServicio 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
UPDATE Servicio
SET DescServicio = @DescServicio, Estado = @Estado
WHERE DescServicio = @DescServicio
END
go

CREATE PROCEDURE pa_Servicio_Delete
	@DescServicio 	nvarchar(50)
AS
BEGIN
DELETE FROM Servicio WHERE DescServicio = @DescServicio
END
go