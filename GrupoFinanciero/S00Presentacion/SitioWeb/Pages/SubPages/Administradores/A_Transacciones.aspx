<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="A_Transacciones.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_Transacciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Transacciones Bancarias</h2>
        <section id="FormUsuarios">
            <asp:GridView ID="gvTransacciones" runat="server" AutoGenerateColumns="false" 
                    AllowPaging="true" Width="100%" PageSize="15" OnPageIndexChanging="gvTransacciones_PageIndexChanging"
                    OnSelectedIndexChanging="gvTransacciones_SelectedIndexChanging">
                    <Columns>
                        <asp:CommandField ShowSelectButton="true" SelectText="Seleccione" />
                        <asp:BoundField DataField="IdTransac" HeaderText="Id Transaccion" />
                        <asp:BoundField DataField="CuentaInterna" HeaderText="CuentaInterna" />
                        <asp:BoundField DataField="CuentaSimpe" HeaderText="CuentaSimpe" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                        <asp:BoundField DataField="Monto" HeaderText="Monto" />
                        <asp:BoundField DataField="HorayFecha" HeaderText="HorayFecha" />
                    </Columns>
                <AlternatingRowStyle BackColor="LightBlue" />
                <RowStyle BackColor ="LightGray" />
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="WindowFrame" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="WindowFrame" />
                </asp:GridView>
       </section>
    </div>
</body>
</asp:Content>
