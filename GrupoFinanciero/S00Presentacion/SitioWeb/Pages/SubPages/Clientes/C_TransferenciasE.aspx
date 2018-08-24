<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="C_TransferenciasE.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Clientes.C_TransferenciasE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Transferencias Externas</h2>
        <section id="FormUsuarios">    
            <form>
                <asp:Label class="label" runat="server" Text="Label"  For="CuentaBancoEx">N<sup>o</sup> de Cuenta a Pagar:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="CuentaBancoEx" placeholder="Nombre"  runat="server"></asp:TextBox>
                <asp:Label class="label"  runat="server" Text="Label"  For="cuentaInterna">N<sup>o</sup> de Cuenta a deducir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="cuentaInterna"  runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="Detalle">Detalle:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Detalle"  placeholder="Detalle de la operacion" required runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="Monto">Monto a Transferir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="number" ID="Monto" min="2"  placeholder="Minimo  $2" required runat="server"></asp:TextBox>              
            </form>
            <asp:Button class="botones" ID="TransferirE" runat="server" Text="Transferir" OnClick="TransferirE_Click" />
        </section>
    </div>
</body>
</asp:Content>
