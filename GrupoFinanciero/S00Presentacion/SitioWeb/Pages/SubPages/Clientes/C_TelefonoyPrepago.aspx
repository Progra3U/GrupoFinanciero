<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="C_TelefonoyPrepago.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Clientes.C_TelefonoyPrepago" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Pagos Telefonia Fija y Prepago</h2>
        <section id="FormUsuarios">
            <form>
                <asp:DropDownList class="textBox" ID="PagoSeleccionado" runat="server">
                    <asp:ListItem Value="Sin Asignar" Selected="True">Seleccione el servico a pagar</asp:ListItem>
                    <asp:ListItem Value="Pago_de_Servicio_Telefonia_Fija">Pago de Servicio Telefonia Fija</asp:ListItem>
                    <asp:ListItem Value="Pago_de_Servicio_telefonico_Prepago">Pago de Servicio telefonico Prepago</asp:ListItem>
                </asp:DropDownList>
                <asp:Label class="label"  runat="server" Text="Label"  For="cuentaInterna">N<sup>o</sup> de Cuenta a deducir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="cuentaInterna" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="Telefono">N<sup>o</sup> Telefono:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="tel" ID="Telefono" pattern="[+][0-9]{3}[-][0-9]{4}[-][0-9]{4}" MaxLength="14" placeholder="+506-0000-0000" runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="MontoPagar">Monto a Pagar o recargar:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="number" ID="MontoPagar" min="1"  placeholder="$2" required runat="server"></asp:TextBox>               
            </form>
            <asp:Button class="botones" ID="Pagar" runat="server" Text="Pagar" OnClick="Pagar_Click" />

        </section>
    </div>
</body>
</asp:Content>
