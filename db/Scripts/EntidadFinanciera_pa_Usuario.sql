USE EntidadFinanciera 
go
--Creacion de Procedimientos Almacenados
--Tabla Usuario

CREATE PROCEDURE pa_Usuario_Insert
	@Usuario 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Contrasena 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
INSERT INTO Usuario VALUES(@Usuario,@Nombre,@Contrasena,@Estado)
END
go

CREATE PROCEDURE pa_Usuario_Update
	@Usuario 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Contrasena 	nvarchar(50),
	@Estado 		bit
AS 
BEGIN
UPDATE Usuario
SET Usuario = @Usuario, Nombre = @Nombre, Contrasena = @Contrasena, Estado = @Estado
WHERE Usuario = @Usuario
END
go

CREATE PROCEDURE pa_Usuario_Delete
	@Usuario nvarchar(50)
AS
BEGIN
DELETE FROM Usuario WHERE Usuario = @Usuario
END
go
		