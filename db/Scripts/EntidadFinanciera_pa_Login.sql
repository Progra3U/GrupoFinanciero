USE EntidadFinanciera 
go

--Creacion de pa para Login
ALTER PROCEDURE pa_Login
	@Usuario 	nvarchar(50),
	@Contrasena 	nvarchar(50)
AS
BEGIN
	SELECT US.Usuario, US.Nombre, US.Contrasena, US.Perfil, US.Estado
	FROM  Usuario US WHERE US.Usuario LIKE '%' + @Usuario + '%' AND US.Contrasena LIKE '%' + @Contrasena + '%' 
END
GO