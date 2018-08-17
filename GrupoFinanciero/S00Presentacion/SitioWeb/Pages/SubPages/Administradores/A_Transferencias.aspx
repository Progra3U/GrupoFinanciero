<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="A_Transferencias.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Transferencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Administracion Transferencias</h2>
        <section id="FormUsuarios">
            <form>                
                <asp:Label class="label" runat="server" For="Estado">Transferencias:</asp:Label>
                <asp:DropDownList id="Estado" class="textBox"  runat="server">
                     <asp:ListItem Value="Activo" Selected="True">Activo</asp:ListItem>
                     <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
                </asp:DropDownList>                
            </form>
            <asp:Button class="botones" ID="EjecutarTransacciones" runat="server" Text="Ejecutar" OnClick="EjecutarTransacciones_Click" />
        </section>
    </div>
</body>
</asp:Content>
