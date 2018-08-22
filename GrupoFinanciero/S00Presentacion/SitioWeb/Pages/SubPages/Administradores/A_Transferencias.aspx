<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="A_Transferencias.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Transferencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Administracion Transferencias</h2>
        <section id="FormUsuarios">
            <asp:GridView ID="gvTransferencias" runat="server" AutoGenerateColumns="false" 
                    AllowPaging="true" Width="100%" PageSize="5" OnPageIndexChanging="gvTransferencias_PageIndexChanging"
                    OnSelectedIndexChanging="gvTransferencias_SelectedIndexChanging">
                    <Columns>
                        <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                        <asp:BoundField DataField="IdTransacE" HeaderText="Id Transferencia" />
                        <asp:BoundField DataField="CuentaBancoEx" HeaderText="Cuenta Banco Exterior" />
                        <asp:BoundField DataField="CuentaInterna" HeaderText="Cuenta bancaria Interna" />
                        <asp:BoundField DataField="DetalleTrans" HeaderText="Detalle de la Transferencia" />
                        <asp:BoundField DataField="HorayFecha" HeaderText="Hora y Fecha en que se realizo" />
                        <asp:BoundField DataField="Monto" HeaderText="Monto Transferido" />
                    </Columns>
                <AlternatingRowStyle BackColor="LightBlue" />
                <RowStyle BackColor ="LightGray" />
                <PagerStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                <HeaderStyle HorizontalAlign="Center" BackColor="WindowFrame" />
                </asp:GridView>
            <asp:Button class="botones" ID="EjecutarTransacciones" runat="server" Text="Ejecutar" OnClick="EjecutarTransacciones_Click" />
        </section>
    </div>
</body>
</asp:Content>
