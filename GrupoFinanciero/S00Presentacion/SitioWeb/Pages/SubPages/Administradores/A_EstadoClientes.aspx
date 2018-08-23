<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="A_EstadoClientes.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Transferencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Monitoreo de Clientes Activos</h2>
        <section id="FormUsuarios">
            <form>
                <asp:Label class="label" runat="server" For="Estado">Estado:</asp:Label>
                <asp:DropDownList ID="EstadoC" class="textBox" runat="server">
                    <asp:ListItem Value="true" Selected="True">Activo</asp:ListItem>
                    <asp:ListItem Value="false">Inactivo</asp:ListItem>
                </asp:DropDownList>
            </form>
            <br />
            <br />
            <asp:GridView ID="gvEstadoClientes" runat="server" AutoGenerateColumns="false" AllowPaging="true" Width="100%" PageSize="5">
                <Columns>
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                    <asp:BoundField DataField="Cedula" HeaderText="Cedula" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Apellido1" HeaderText="Apellido1" />
                    <asp:BoundField DataField="Apellido2" HeaderText="Apellido2" />
                </Columns>
                <AlternatingRowStyle BackColor="LightBlue" />
                <RowStyle BackColor ="LightGray" />
                <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
            </asp:GridView>
            <asp:Button class="botones" ID="Consultar" runat="server" Text="Ejecutar" OnClick="Consultar_Click" />   
        </section>
    </div>
</body>
</asp:Content>
