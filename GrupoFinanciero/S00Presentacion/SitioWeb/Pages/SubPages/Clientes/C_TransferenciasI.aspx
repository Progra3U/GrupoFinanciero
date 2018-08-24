<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="C_TransferenciasI.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Clientes.C_TransferenciasI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Transferencias Internas</h2>
        <section id="FormUsuarios">    
            <form>
                <asp:Label class="label" runat="server" Text="Label"  For="CuentaBancoEx">N<sup>o</sup> de Cuenta a Simpe a transferir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="CuentaBancoEx" placeholder="Cuenta a Simpe a transferir"  runat="server"></asp:TextBox>
                <asp:Label class="label"  runat="server" Text="Label"  For="cuentaInterna">N<sup>o</sup> de Cuenta Cliente a debitar:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="cuentaInterna"  runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="Detalle">Detalle:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Detalle"  placeholder="Detalle de la operacion" required runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="Monto">Monto a Transferir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="number" ID="Monto" min="2"  placeholder="Minimo  $2" required runat="server"></asp:TextBox>              
            </form>
            <asp:Button class="botones" ID="TransferirI" runat="server" Text="Transferir" OnClick="TransferirI_Click"/>
        </section>
    </div>
</body>
</asp:Content>
