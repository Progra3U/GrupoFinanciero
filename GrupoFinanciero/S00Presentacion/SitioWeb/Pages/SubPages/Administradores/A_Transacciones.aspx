<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="A_Transacciones.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Transacciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Transacciones</h2>
        <section id="FormUsuarios">
            <form>
                     
                <asp:Label class="label" runat="server" For="Estado">Estado:</asp:Label>
                <asp:DropDownList id="Estado" class="textBox"  runat="server">
                     <asp:ListItem Value="Activo" Selected="True">Activo</asp:ListItem>
                     <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
                </asp:DropDownList>     
                  <br />
             <br />
              <asp:GridView ID="gvAdministrador" runat="server" AutoGenerateColumns="false" 
                    AllowPaging="true" Width="100%" PageSize="5" >
                    <Columns>
                        <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                        <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="contrasena" HeaderText="Contraseña" />
                        <asp:BoundField DataField="activo" HeaderText="Estado" />
                    </Columns>
                <AlternatingRowStyle BackColor="LightBlue" />
                <RowStyle BackColor ="LightGray" />
                <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                </asp:GridView>
            </form>

       </section>
    </div>
</body>
</asp:Content>
