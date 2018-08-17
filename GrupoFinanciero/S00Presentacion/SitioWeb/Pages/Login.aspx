<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" enableEventValidation="false" validateRequest="false" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <section id="wrap"> 
        <div class="contenedor-form">
            <div class="toggle">
                <span><a href="../Index.aspx">InterBankCom</a></span>
            </div>
        
            <div class="formulario">
                <h2>Iniciar Sesión</h2>
                <form  id="formularioLogin" action="#">
                    <!--<input type="text" placeholder="Usuario" required>
                    <input type="password" placeholder="Contraseña" required>
                    <input type="submit" value="Iniciar Sesión">-->
                    <asp:TextBox ID="Usuario" type="text" placeholder="Usuario" required runat="server"></asp:TextBox>
                    <asp:TextBox ID="Password" type="password" placeholder="Contraseña" required runat="server"></asp:TextBox>
                    <asp:Button ID="enviar" runat="server" Text="Iniciar Sesión" OnClick="enviar_Click" />
                </form>
            </div>
            <asp:Label ID="error" runat="server" Text=""></asp:Label>
        </div>
    </section> 
</body>
</asp:Content>
