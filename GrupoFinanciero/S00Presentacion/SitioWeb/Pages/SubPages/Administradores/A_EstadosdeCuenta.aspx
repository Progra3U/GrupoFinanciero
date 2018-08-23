<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="A_EstadosdeCuenta.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_EstadosdeCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Estados de Cuenta</h2>
        <section id="FormUsuarios">
            <form>
                <asp:Label class="label" runat="server" Text="Label"  For="CuentaInterna">Intruduzca la Cuenta Cliente:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="CuentaInterna" placeholder="Nombre" required runat="server"></asp:TextBox>
             </form>
            <asp:Button class="botones" ID="Buscar" runat="server" Text="Buscar" OnClick="Buscar_Click" />
            <br />
            <br />
             <asp:GridView ID="gvEstadoCuenta" runat="server" AutoGenerateColumns="false" 
                    AllowPaging="true" Width="100%" PageSize="10" >
                    <Columns>
                        <asp:BoundField DataField="IdTransac" HeaderText="Transaccion #" />
                        <asp:BoundField DataField="CuentaInterna" HeaderText="Cuenta Cliente" />
                        <asp:BoundField DataField="CuentaSimpe" HeaderText="Cuneta Simpe" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                        <asp:BoundField DataField="Monto" HeaderText="Monto" />
                        <asp:BoundField DataField="HorayFecha" HeaderText="HorayFecha" />
                    </Columns>
                <AlternatingRowStyle BackColor="LightBlue" />
                <RowStyle BackColor ="LightGray" />
                <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" /> 
                <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                </asp:GridView>
        </section>
    </div>
</body>
</asp:Content>
