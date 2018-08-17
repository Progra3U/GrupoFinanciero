<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="A_Servicios.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Servicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Administracion Servicios</h2>
        <section id="FormUsuarios">
            <form>                
                <asp:Label class="label" runat="server" For="Servicios">Seleccione Servicio:</asp:Label>
                <asp:DropDownList id="Servicios" class="textBox"  runat="server">
                     <asp:ListItem Value="Agua" Selected="True">Agua</asp:ListItem>
                     <asp:ListItem Value="Luz">Luz</asp:ListItem>
                     <asp:ListItem Value="Telefono">Telefono</asp:ListItem>
                     <asp:ListItem Value="TV" >TV</asp:ListItem>
                     <asp:ListItem Value="Internet">Internet</asp:ListItem>
                </asp:DropDownList>
                <asp:Label class="label" runat="server" For="Estado">Estado:</asp:Label>
                <asp:DropDownList id="Estado" class="textBox"  runat="server">
                     <asp:ListItem Value="Activo" Selected="True">Activo</asp:ListItem>
                     <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
                </asp:DropDownList>                
            </form>
            <asp:Button class="botones" ID="Ejecutar" runat="server" Text="Ejecutar" onclick="Ejecutar_Click" />
            <br />
             <br />
              <asp:GridView ID="gvAdministrador" runat="server" AutoGenerateColumns="false" 
                           AllowPaging="true" Width="100%" PageSize="5" >
                           <Columns>
                               <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                               <asp:BoundField DataField="TipodeServicio" HeaderText="Tipo de servicio" />
                               <asp:BoundField DataField="EstadoServ" HeaderText="Estado del Servicio" />
                           </Columns>
                       <AlternatingRowStyle BackColor="LightBlue" />
                       <RowStyle BackColor ="LightGray" />
                       <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                       <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                       </asp:GridView>
        </section>
          <tr>
                   <td colspan="4">
                       <asp:GridView ID="gvPerfiles" runat="server" AutoGenerateColumns="false" 
                           AllowPaging="true" Width="100%" PageSize="5" 
                           OnPageIndexChanging="gvPerfiles_PageIndexChanging"
                           OnSelectedIndexChanging="gvPerfiles_SelectedIndexChanging" Height="171px" >
                           <Columns>
                               <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                               <asp:BoundField DataField="codPago" HeaderText="Codigo" />
                               <asp:BoundField DataField="TipoPago" HeaderText="Descripción" />
                               <asp:BoundField DataField="Monto" HeaderText="Monto" />
                           </Columns>
                       <AlternatingRowStyle BackColor="LightBlue" />
                       <RowStyle BackColor ="white" />
                       <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                       <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                       </asp:GridView>
                   </td>
               </tr>
    </div>
</body>
</asp:Content>
