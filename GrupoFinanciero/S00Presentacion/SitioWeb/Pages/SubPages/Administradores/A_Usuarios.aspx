<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="A_Usuarios.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Apertura de Usuarios</h2>
        <section id="FormUsuarios">
            <form>
                <asp:Label class="label"  runat="server" Text="Label"  For="Usuario">Usuario:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Usuario" MaxLength="12" placeholder="Usuario" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="Nombre">Nombre:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Nombre" placeholder="Nombre" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="Contrasena">Contrasena:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="password" ID="Contrasena"  MaxLength="12" placeholder="Password" required runat="server"></asp:TextBox> 
                <asp:TextBox class="textBox" size="30" type="password" ID="Contrasena2" MaxLength="12" placeholder="Repeat Password" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="Estado">Estado:</asp:Label>
                <asp:DropDownList ID="Estado" class="textBox"  runat="server">
                     <asp:ListItem Value="True" Selected="True">Activo</asp:ListItem>
                     <asp:ListItem Value="False">Inactivo</asp:ListItem>
                </asp:DropDownList>
            </form>
            <asp:Button class="botones" ID="Agregar" runat="server" Text="Agregar" OnClick="Agregar_Click" />
            <asp:Button class="botones" ID="Actualizar" runat="server" Text="Actualizar" OnClick="Actualizar_Click" />
            <asp:Button Class="botones" ID="Buscar" runat="server" Text="Buscar" OnClick="Buscar_Click" />
            <asp:Button class="botones" ID="Eliminar" runat="server" Text="Eliminar" OnClick="Eliminar_Click" />
            <br />
            <br />
            <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="false" 
                AllowPaging="true" Width="100%" PageSize="5" OnPageIndexChanging="gvUsuarios_PageIndexChanging"
                OnSelectedIndexChanging="gvUsuarios_SelectedIndexChanging" >
                <Columns>
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Contrasena" HeaderText="Contrasena" />
                    <asp:BoundField DataField="Perfil" HeaderText="Perfil" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" />
                </Columns>
                <AlternatingRowStyle BackColor="LightBlue" />
                <RowStyle BackColor ="LightGray" />
                <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
            </asp:GridView>
        </section>
    </div>
</body>
</asp:Content>
