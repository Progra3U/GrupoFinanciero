<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="C_EstadosdeCuenta.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Clientes.C_EstadosdeCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Estados de Cuenta</h2>
        <section id="FormUsuarios">
            <form>
                <asp:Label class="label"  runat="server" Text="Label"  For="Cedula">Cedula:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Cedula" pattern="[0-9]{1}[-][0-9]{4}[-][0-9]{4}" MaxLength="12" runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="Nombre">Nombre:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Nombre" placeholder="Nombre"  runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="Telefono">Telefono:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="tel" ID="Telefono" pattern="[+][0-9]{3}[-][0-9]{4}[-][0-9]{4}" MaxLength="14" placeholder="+506-0000-0000" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="CuentaBancoEx">N<sup>o</sup> de Cuenta Interna:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="CuentaBancoEx" placeholder="Nombre"  runat="server"></asp:TextBox>
                <asp:Label class="label"  runat="server" Text="Label"  For="cuentaInterna">N<sup>o</sup> de Cuenta SINPE:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="cuentaSinpe"  runat="server"></asp:TextBox>
                <asp:Label class="label"  runat="server" Text="Label"  For="cuentaInterna">N<sup>o</sup> Saldo Actual:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="saldo"  runat="server"></asp:TextBox>
              
            <asp:Button class="botones" ID="GenerarVista" runat="server" Text="Generar Estado Cuenta" OnClick="GenerarVista_Click" />           
                <br /><br />
            <asp:GridView ID="gvEstadoCuenta" runat="server" AutoGenerateColumns="false" 
                           AllowPaging="true" Width="100%" PageSize="5" OnPageIndexChanging="gvEstadoCuenta_PageIndexChanging"
                            OnSelectedIndexChanging="gvEstadoCuenta_SelectedIndexChanging">
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
