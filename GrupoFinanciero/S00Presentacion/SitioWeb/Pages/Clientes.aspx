<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body id="body">
	<div class="sidebar">
		<h2>Menu</h2>
		<ul>
            <li><a href="../Index.aspx">Inicio</a></li>
            <li><a href="SubPages/Clientes/C_EstadosdeCuenta.aspx" onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Estados de Cuenta</a></li>
            <li><a href="#">Transferencias</a>
                <ul>
			        <li><a href="SubPages/Clientes/C_TransferenciasI.aspx" onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Internas</a></li>
			        <li><a href="SubPages/Clientes/C_TransferenciasE.aspx" onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Externas</a></li>
		        </ul>
            </li>
            <li><a href="#">Pago de Servicios</a>
                <ul>
			        <li><a href="SubPages/Clientes/C_AguayLuz.aspx"  onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Agua y Luz</a></li>
			        <li><a href="SubPages/Clientes/C_TelefonoyPrepago.aspx"  onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">Telefono</a></li>
                    <li><a href="SubPages/Clientes/C_TVeInternet.aspx"  onclick="window.open(this.href, this.target, 'width=900,height=500,top=50,left=300'); return false;">TV e Internet</a></li>
		        </ul>
            </li>
			<li><a href="Login.aspx">Salir</a></li>
		</ul>
	</div>
	<div class="Central">
        <h2><strong>Sesion de Cliente</strong></h2>
            <asp:Label Text="" ID="usuarioconectado" runat="server" /><br/>
        <h2><strong>Informacion Referente a Nuestro Cliente:</strong></h2>
		<p>
	        Nombre: <asp:Label Text="" ID="Nombre" runat="server" /><br/>
            Cedula: <asp:Label Text="" ID="Cedula" runat="server" /><br/>
            FechaNac: <asp:Label Text="" ID="FechaNac" runat="server" /><br/>
            Telefono: <asp:Label Text="" ID="Telefono" runat="server" /><br/>
            Correo: <asp:Label Text="" ID="Correo" runat="server" /><br/>
            Direccion: <asp:Label Text="" ID="DireccionExac" runat="server" /><br/>
            Contrasena: <asp:Label Text="" ID="Contrasena" runat="server" /><br/>
            Cuenta Cliente: <asp:Label Text="" ID="CuentaInterna" runat="server" /><br/>
            Cuenta Simpe: <asp:Label Text="" ID="CuentaSimpe" runat="server" /><br/>
            Saldo de la Cuenta: <asp:Label Text="" ID="SaldoCuenta" runat="server" /><br/>
        </p>
		<p>
			Las organizaciones tratan de hacer más eficaces y eficientes sus procesos, tanto los verticales más 
            vinculados al negocio, como los horizontales de soporte a la organización donde se ubican de forma natural 
            aunque no exclusiva los gestores de información (llámense archiveros, gestores de información o lo que se 
            considere más oportuno). Está búsqueda constante trata de hacer las cosas mejor,  más baratas y además 
            anticipándose respecto a la competencia. En la busqueda de todo esto olvidaron que exite <strong>InterBankCom</strong>
		</p>
	</div>
</body>
</asp:Content>
