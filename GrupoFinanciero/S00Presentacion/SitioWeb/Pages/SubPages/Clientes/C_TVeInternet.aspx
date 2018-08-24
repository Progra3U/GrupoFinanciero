<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="C_TVeInternet.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Clientes.C_TVeInternet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
    <div id="wrap">
        <h2 id="titulo">Pagos Internet Y Television</h2>
        <section id="FormUsuarios">
                 <form>
                <asp:DropDownList class="textBox" ID="PagoSeleccionado" runat="server">
                    <asp:ListItem Value="Sin Asignar" Selected="True">Seleccione el servico a pagar</asp:ListItem>
                    <asp:ListItem Value="Pago_de_Servicio_Television">Pago de Servicio Television</asp:ListItem>
                    <asp:ListItem Value="Pago_de_Servicio_Internet">Pago de Servicio Internet</asp:ListItem>
                </asp:DropDownList>
                <asp:Label class="label"  runat="server" Text="Label"  For="cuentaInterna">N<sup>o</sup> de Cuenta a deducir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="cuentaInterna" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="NumeroCuenta">N<sup>o</sup> Numero Cuenta Pagar:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="tel" ID="CuentaExterna" pattern="[+][0-9]{3}[-][0-9]{4}[-][0-9]{4}" MaxLength="14" runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="MontoPagar">Monto a Pagar:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="number" ID="MontoPagar" min="1"  placeholder="$2" required runat="server"></asp:TextBox>               
            </form>
            <asp:Button class="botones" ID="Button1" runat="server" Text="Pagar" OnClick="Pagar_Click" />
          
        </section>
    </div>
</body>
</asp:Content>

