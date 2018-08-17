<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="A_Globales.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Globales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
      <h2 id="titulo">Montos Globales</h2>
        <section id="FormUsuarios">
            <form>
                <asp:Label class="label"  runat="server" Text="Label"  For="saldoCuenta">Montos globales:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="saldoCuenta" MaxLength="12" required runat="server"></asp:TextBox>
                <br />
                <asp:GridView ID="gvAdministrador" runat="server" AutoGenerateColumns="false" 
                           AllowPaging="true" Width="100%" PageSize="5" >
                           <Columns>
                               <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                               <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                               <asp:BoundField DataField="apellido1" HeaderText="1° Apellido" />
                               <asp:BoundField DataField="apellido2" HeaderText="2° Apellido" />
                               <asp:BoundField DataField="saldoCuenta" HeaderText="Saldo de Cuenta" />
                               <asp:BoundField DataField="activo" HeaderText="Estado" />
                           </Columns>
                       <AlternatingRowStyle BackColor="LightBlue" />
                       <RowStyle BackColor ="LightGray" />
                       <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                       <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                       </asp:GridView>
                </form>
             <asp:Button class="botones" ID="EjecutarGlobales" runat="server" Text="Calcular" OnClick="EjecutarGlobales_Click" />
        </section>
    </div>
</body>
</asp:Content>
