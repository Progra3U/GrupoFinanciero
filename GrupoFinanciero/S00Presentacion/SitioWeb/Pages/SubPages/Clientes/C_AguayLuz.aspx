<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="C_AguayLuz.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Clientes.C_AguayLuz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Pagos de Agua y luz</h2>
        <section id="FormUsuarios">
            <form>
                <asp:DropDownList class="textBox" ID="PagoSeleccionado" runat="server">
                    <asp:ListItem Value="Sin Asignar" Selected="True">Seleccione el servico a pagar</asp:ListItem>
                    <asp:ListItem Value="Pago_de_Servicio_de_Agua">Pago de Servicio de Agua</asp:ListItem>
                    <asp:ListItem Value="Pago_de_Servicio_de_Electricidad">Pago de Servicio de Electricidad</asp:ListItem>
                </asp:DropDownList>   
                <asp:Label class="label" runat="server" For="FechaPago">Seleccione Periodo de pago:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="date" ID="FechaPago" min="1918-12-31" Max="2100-12-31" placeholder="Fecha de Nacimiento" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="CuentaBancoEx">N<sup>o</sup> de Cuenta a Pagar:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="CuentaBancoEx" placeholder="Nombre" required runat="server"></asp:TextBox>
                <asp:Label class="label"  runat="server" Text="Label"  For="cuentaInterna">N<sup>o</sup> de Cuenta a deducir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="cuentaInterna" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="MontoPagar">Monto a Pagar:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="number" ID="MontoPagar" min="1"  placeholder="$2" required runat="server"></asp:TextBox>               
            </form>
            <asp:Button class="botones" ID="Pagar" runat="server" Text="Pagar" OnClick="Pagar_Click" />
            <!--
                <asp:GridView ID="gvAdministrador" runat="server" AutoGenerateColumns="false" 
                        AllowPaging="true" Width="100%" PageSize="5" >
                <Columns>
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="CuentaSimpe" HeaderText="CuentaSimpe" />
                    <asp:BoundField DataField="Monto" HeaderText="Monto" />
                </Columns>
                <AlternatingRowStyle BackColor="LightBlue" />
                <RowStyle BackColor ="LightGray" />
                <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                </asp:GridView>
            -->
        </section>
    </div>
</body>
</asp:Content>
