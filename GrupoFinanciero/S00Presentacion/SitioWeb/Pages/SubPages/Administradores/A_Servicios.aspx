<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="A_Servicios.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Servicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Administracion de Servicios</h2>
        <section id="FormUsuarios">
            <form>                
                <asp:Label class="label" runat="server" For="Servicios">Seleccione Servicio:</asp:Label>
                <asp:DropDownList id="Servicios" class="textBox"  runat="server">
                     <asp:ListItem Value="Sin_descripcion" Selected="True">Seleccione Servicio</asp:ListItem>
                     <asp:ListItem Value="AguayLuz">Pagode servicios de Agua y Luz</asp:ListItem>
                     <asp:ListItem Value="Telefonina">Pago servicios telefonicos</asp:ListItem>
                     <asp:ListItem Value="TVeInternet" >Pago servicios de TV e Internet</asp:ListItem>
                </asp:DropDownList>
                <asp:Label class="label" runat="server" For="Estado">Estado:</asp:Label>
                <asp:DropDownList id="Estado" class="textBox"  runat="server">
                     <asp:ListItem Value="Sin_descripcion" Selected="True">Seleccione Estado</asp:ListItem>
                     <asp:ListItem Value="True">Activo</asp:ListItem>
                    <asp:ListItem Value="False">Inactivo</asp:ListItem>
                </asp:DropDownList>                
            </form>
            <asp:Button class="botones" ID="Ejecutar" runat="server" Text="Ejecutar" onclick="Ejecutar_Click" />
            <br />
            <br />
            <asp:GridView ID="gvAdministrador" runat="server" AutoGenerateColumns="false" 
                           AllowPaging="false" Width="100%" PageSize="5" >
                <Columns>
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                    <asp:BoundField DataField="IdSevicio" HeaderText="Identificador" />
                    <asp:BoundField DataField="DescServicio" HeaderText="Tipo de Servicio" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado del Servicio" />
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
