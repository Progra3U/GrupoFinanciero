USE EntidadFinanciera 
go
--Creacion de Procedimientos Almacenados
--Tabla Usuario

CREATE PROCEDURE pa_Usuario_Insert
	@Usuario 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Contrasena 	nvarchar(50),
	@Perfil			nvarchar(50),
	@Estado 		bit
AS 
BEGIN
INSERT INTO Usuario VALUES(@Usuario,@Nombre,@Contrasena,@Perfil,@Estado)
END
go

CREATE PROCEDURE pa_Usuario_Update
	@Usuario 		nvarchar(50),
	@Nombre 		nvarchar(50),
	@Contrasena 	nvarchar(50),
	@Perfil			nvarchar(50),
	@Estado 		bit
AS 
BEGIN
UPDATE Usuario
SET Nombre = @Nombre, Contrasena = @Contrasena, Perfil=@Perfil, Estado = @Estado
WHERE Usuario LIKE '%' + @Usuario + '%'
END
go

CREATE PROCEDURE pa_Usuario_Delete
	@Usuario nvarchar(50)
AS
BEGIN
DELETE FROM Usuario WHERE Usuario LIKE '%' + @Usuario + '%'
END
go

--Creacion de pa para Buscar Usurios
CREATE PROCEDURE pa_Usuario_Buscar
	@Usuario		nvarchar(50)
AS
BEGIN
	SELECT us.Usuario, us.Nombre, us.Contrasena, us.Perfil, us.Estado 
	FROM Usuario us
	WHERE us.Usuario LIKE '%' + @Usuario + '%'
END
go 

--Creacion de pa para traer toda la informacion de los Usuarios menos contraseņa
--CREATE PROCEDURE pa_Usuario_TraerTodo
--AS
--BEGIN
--	SELECT 
--	us.Usuario,us.Nombre,us.Perfil,us.Estado bit
--	FROM Usuario us
--	ORDER BY us.Usuario
--END
--go
		