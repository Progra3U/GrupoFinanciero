<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="A_Usuarios.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Apertura de Usuarios</h2>
        <section id="FormUsuarios">
            <form>
                <asp:Label class="label"  runat="server" Text="Label"  For="Usuario">Usuario:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Usuario" MaxLength="12" placeholder="Usuario"  runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="Nombre">Nombre:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Nombre" placeholder="Nombre"  runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="Contrasena">Contrasena:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="password" ID="Contrasena"  MaxLength="12" placeholder="Password"  runat="server"></asp:TextBox> 
                <asp:TextBox class="textBox" size="30" type="password" ID="Contrasena2" MaxLength="12" placeholder="Repeat Password"  runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="roll">Roll a desempeñar:</asp:Label>
                <asp:DropDownList ID="roll" class="textBox"  runat="server">
                    <asp:ListItem Value="Sin Asignar" Selected="True">Seleccione un Roll de Usuario</asp:ListItem>
                     <asp:ListItem Value="Admin">Administrador del Sistema</asp:ListItem>
                     <asp:ListItem Value="Usuario">Usuario del Sistema</asp:ListItem>
                </asp:DropDownList>
                <asp:Label class="label" runat="server" For="Estado">Estado:</asp:Label>
                <asp:DropDownList ID="Estado" class="textBox"  runat="server">
                    <asp:ListItem Value="False" Selected="True">Inactivo</asp:ListItem>
                    <asp:ListItem Value="True">Activo</asp:ListItem>
                </asp:DropDownList>
            </form>
            <asp:Button class="botones" ID="Agregar" runat="server" Text="Agregar" OnClick="Agregar_Click" />
            <asp:Button class="botones" ID="Actualizar" runat="server" Text="Actualizar" OnClick="Actualizar_Click" />
            <asp:Button Class="botones" ID="Buscar" runat="server" Text="Buscar" OnClick="Buscar_Click" />
            <asp:Button class="botones" ID="Eliminar" runat="server" Text="Eliminar" OnClick="Eliminar_Click" />
            <asp:Button class="botones" ID="VerFiltroU" runat="server" Text="Ver Estado" OnClick="VerFiltroU_Click" />
            <br />
            <br />
            <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="false" 
                AllowPaging="true" Width="100%" PageSize="5" OnPageIndexChanging="gvUsuarios_PageIndexChanging"
                OnSelectedIndexChanging="gvUsuarios_SelectedIndexChanging" >
                <Columns>
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                    <asp:BoundField DataField="Usuario1" HeaderText="Usuario" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
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
