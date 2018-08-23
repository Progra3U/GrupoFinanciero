<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" enableEventValidation="false" validateRequest="false" CodeBehind="A_Globales.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Globales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
    <div id="wrap">
      <h2 id="titulo">Montos Globales</h2>
        <section id="FormUsuarios">
            <form>
                <asp:GridView ID="gvGlobales" runat="server" AutoGenerateColumns="false" 
                           AllowPaging="true" Width="100%" PageSize="5" >
                           <Columns>
                               <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                               <asp:BoundField DataField="cuentaInterna" HeaderText="Cuenta Interna" />
                               <asp:BoundField DataField="CuentaSimpe" HeaderText="Cuenta Simpe" />
                               <asp:BoundField DataField="saldoCuenta" HeaderText="Saldo de la cuenta" />
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
