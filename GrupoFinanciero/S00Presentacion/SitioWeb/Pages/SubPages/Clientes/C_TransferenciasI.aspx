﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="C_TransferenciasI.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Clientes.C_TransferenciasI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Transferencias Internas</h2>
        <section id="FormUsuarios">    
            <form>
                <asp:Label class="label"  runat="server" Text="Label"  For="Cuenta">Numero de cuenta:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Cuenta" pattern="[0-9]{3}[-][0-9]{7}[-][0-9]{1}" MaxLength="12" placeholder="000-0000000-0" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="Detalle">Detalle:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Detalle"  placeholder="Detalle de la operacion" required runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="Monto">Monto a Transferir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="number" ID="Monto" min="2"  placeholder="Minimo  $2" required runat="server"></asp:TextBox>                 
            </form>
            <asp:Button class="botones" ID="TransferirI" runat="server" Text="TransferirI" OnClick="TransferirI_Click"/>
        </section>
    </div>
</body>
</asp:Content>
