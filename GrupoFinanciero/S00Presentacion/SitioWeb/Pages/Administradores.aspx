<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Administradores.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.Administradores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body id="body">
	<div class="sidebar">
		<h2>Menu</h2>
		<ul>
            <li><a href="../Index.aspx">Inicio</a></li>
            <li><a href="SubPages/Administradores/A_Servicios.aspx"  onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">servicios</a></li>
            <li><a href="SubPages/Administradores/A_Clientes.aspx"  onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Clientes</a></li>
            <li><a href="SubPages/Administradores/A_Usuarios.aspx"  onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Usuarios</a></li>
			<li><a href="SubPages/Administradores/A_Globales.aspx" onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Montos Globales</a></li>
            <li><a href="SubPages/Administradores/A_EstadosdeCuenta.aspx" onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Estados de Cuenta</a></li>
            <li><a href="SubPages/Administradores/A_EstadoCliente.aspx"  onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Estado Clientes</a></li>
            <li><a href="SubPages/Administradores/A_Transacciones.aspx"  onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Transacciones</a></li>
			<li><a href="Login.aspx">Salir</a></li>
		</ul>
	</div>
	<div class="Central">
        <h2><strong>Sesion de Adminstrador</strong></h2>
        <asp:Label Text="text" ID="usuarioconectado" runat="server" /><br>
        <h2><strong>Historia de la banca</strong></h2>
		<p>
            La historia de la banca comienza con el primer prototipo de banco de comerciantes de la Mesopotamia, 
            que hacía préstamos de granos a los agricultores y negociantes que transportaban bienes entre las ciudades 
            desde aproximadamente 2000 a. C. en Fenicia, Asiria y Babilonia. Posteriormente, en la Antigua Grecia y 
            durante el Imperio Romano, los prestamistas hacían empréstitos y se añadieron dos innovaciones importantes: 
            aceptaban depósitos y cambiaban dinero. Existe evidencia arqueológica para este período en la Antigua China y 
            la India de préstamos monetarios.
        </p>	
		<p>
			En el sentido moderno del término, la banca tuvo sus inicios en las ricas ciudades del norte de Italia, 
            como Florencia, Venecia y Génova, a finales del periodo medieval y principios del Renacimiento. Las familias 
            Bardi y Peruzzi dominaron la banca en la Florencia del siglo XIV y establecieron sucursales en muchas otras 
            partes de Europa.1​ Quizás el banco italiano más famoso fue el Medici, fundado por Juan de Médici.
		</p>
		<p>
			El desarrollo de la banca se propagó del norte de Italia a toda Europa y tuvieron lugar varias innovaciones 
            importantes en Ámsterdam durante la República de los Países Bajos en el siglo XVI, así como en Londres en el 
            siglo XVII. Durante el siglo XX, el desarrollo en telecomunicaciones e informática llevaron a cambios 
            fundamentales en las operaciones bancarias y permitieron que los bancos crecieran dramáticamente en tamaño y 
            alcance geográfico. La crisis financiera de fines de los años 2000 ocasionó muchas quiebras bancarias, incluyendo
            a algunos de los bancos más grandes del mundo, y generó mucho debate sobre la regulación bancaria existente.
		</p>
	</div>
</body>
</asp:Content>
