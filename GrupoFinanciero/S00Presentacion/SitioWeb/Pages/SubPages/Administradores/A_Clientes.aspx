<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="A_Clientes.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Apertura Cuenta Clientes</h2>
        <section id="FormUsuarios">
            <form>
                <asp:Label class="label"  runat="server" Text="Label"  For="Cedula">Cedula:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Cedula" pattern="[0-9]{9}" MaxLength="9" placeholder="000000000" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="Nombre">Nombre:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Nombre" placeholder="Nombre" runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="PrimerApellido">1<sup>er</sup> Apellido:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="PrimerApellido" placeholder="Primer Apelido" runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="SegundoApellido">2<sup>do</sup> Apellido:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="SegundoApellido" placeholder="Segundo Apellido" runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="FechaNac">Fecha de Nacimiento:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="FechaNac" min="1918-12-31" Max="2100-12-31" placeholder="2100-12-31" runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="Telefono">Telefono:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="tel" ID="Telefono" pattern="[+][0-9]{3}[-][0-9]{4}[-][0-9]{4}" MaxLength="14" placeholder="+506-0000-0000" runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="Correo">Correo:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="email" ID="Correo" pattern="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$" placeholder="email@server.doamin" runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="Direccion">Direccion:</asp:Label>
                <asp:DropDownList class="textBox" ID="Provincia" runat="server">
                    <asp:ListItem Value="San Jose" Selected="True">San Jose</asp:ListItem>
                     <asp:ListItem Value="Alajuela">Alajuela</asp:ListItem>
                     <asp:ListItem Value="Heredia">Heredia</asp:ListItem>
                     <asp:ListItem Value="Cartago">Cartago</asp:ListItem>
                     <asp:ListItem Value="Puntarenas" >Puntarenas</asp:ListItem>
                     <asp:ListItem Value="Guanacaste">Guanacaste</asp:ListItem>
                    <asp:ListItem Value="Limon">Limon</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox class="textBox" size="30" type="text" ID="Direccion" MaxLength="60" placeholder="Direccion Exacta" runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="Monto">Monto Inicial de Apertura:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="number" ID="Monto" min="20000"  placeholder="Minimo  $20000" runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="Contrasena">Contrasena:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="password" ID="Contrasena"  MaxLength="8" placeholder="Password" runat="server"></asp:TextBox> 
                <asp:TextBox class="textBox" size="30" type="password" ID="Contrasena2" MaxLength="8" placeholder="Repeat Password" runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="Estado">Estado:</asp:Label>
                <asp:DropDownList id="Estado" class="textBox"  runat="server">
                    <asp:ListItem  Selected="True">Seleccione estado</asp:ListItem>
                     <asp:ListItem Value="True" >Activo</asp:ListItem>
                     <asp:ListItem Value="False">Inactivo</asp:ListItem>
                </asp:DropDownList>
            </form>
            <asp:Button class="botones" ID="Agregar" runat="server" Text="Agregar" OnClick="Agregar_Click" />
            <asp:Button class="botones" ID="Actualizar" runat="server" Text="Actualizar" OnClick="Actualizar_Click" />
            <asp:Button class="botones" ID="Eliminar" runat="server" Text="Eliminar" OnClick="Eliminar_Click" />
            <asp:Button class="botones" ID="Buscar" runat="server" Text="Buscar" OnClick="Buscar_Click" /> 
            
        </section>
    </div>
</body>
</asp:Content>
