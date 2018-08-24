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
SET Estado = @Estado
WHERE DescServicio LIKE '%' + @DescServicio + '%'
END
go

CREATE PROCEDURE pa_Servicio_Delete
	@DescServicio 	nvarchar(50)
AS
BEGIN
DELETE FROM Servicio WHERE DescServicio LIKE '%' + @DescServicio + '%'
END
go

--Creacion de pa para Buscar Usurios
CREATE PROCEDURE pa_Servicio_Buscar
	@DescServicio 	nvarchar(50)
AS
BEGIN
	SELECT servc.IdSevicio, servc.DescServicio, servc.Estado
	FROM Servicio servc
	WHERE servc.DescServicio LIKE '%' + @DescServicio + '%'
END
go 
