<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="C_TVeInternet.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Clientes.C_TVeInternet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <body>
    <div id="wrap">
        <h2 id="titulo">Television e Internet </h2>
        <section id="FormUsuarios">
            <form>
                <asp:DropDownList class="textBox" ID="PagoSeleccionado" runat="server">
                    <asp:ListItem Value="Sin Asignar" Selected="True">Seleccione el servico a pagar</asp:ListItem>
                    <asp:ListItem Value="Pago_de_Servicio_de_Television">Pago de Servicio de Television</asp:ListItem>
                    <asp:ListItem Value="Pago_de_Servicio_de_Internet">Pago de Servicio de Internet</asp:ListItem>
                </asp:DropDownList>   
                <asp:Label class="label" runat="server" For="FechaPago">Seleccione Periodo de pago:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="date" ID="FechaPago" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="CuentaBancoEx">N<sup>°</sup> de Contrato a Pagar:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="CuentaBancoEx" placeholder="# de contrato" required runat="server"></asp:TextBox>
                <asp:Label class="label"  runat="server" Text="Label"  For="cuentaInterna">N<sup>°</sup> de Cuenta a deducir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="cuentaInterna" placeholder="Use Cuenta Cliente" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="MontoPagar">Monto a Pagar:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="number" ID="MontoPagar" min="1"  placeholder="$2" required runat="server"></asp:TextBox>               
            </form>
            <asp:Button class="botones" ID="Pagar" runat="server" Text="Pagar" OnClick="Pagar_Click" />

        </section>
    </div>
</body>
</asp:Content>

