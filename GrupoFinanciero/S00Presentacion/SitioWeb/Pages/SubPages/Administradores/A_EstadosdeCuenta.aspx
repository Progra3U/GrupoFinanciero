<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="A_EstadosdeCuenta.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Administradores.A_EstadosdeCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Estados de Cuenta</h2>
        <section id="FormUsuarios">
            <form>
                <asp:Label class="label"  runat="server" Text="Label"  For="Cedula">Cedula:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Cedula" pattern="[0-9]{2}[-][0-9]{4}[-][0-9]{4}" MaxLength="12" placeholder="00-0000-0000" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="Nombre">Nombre:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Nombre" placeholder="Nombre" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="PrimerApellido">1<sup>er</sup> Apellido:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="PrimerApellido" placeholder="Primer Apelido" required runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="SegundoApellido">2<sup>do</sup> Apellido:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="SegundoApellido" placeholder="Segundo Apellido" required runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="FechaNac">Fecha de Nacimiento:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="date" ID="FechaNac" min="1918-12-31" Max="2100-12-31" placeholder="Fecha de Nacimiento" required runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="Telefono">Telefono:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="tel" ID="Telefono" pattern="[+][0-9]{3}[-][0-9]{4}[-][0-9]{4}" MaxLength="14" placeholder="+506-0000-0000" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="Correo">Correo:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="email" ID="Correo" pattern="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$" placeholder="email@server.doamin" required runat="server"></asp:TextBox> 
                
                
           
            <asp:Button class="botones" ID="Buscar" runat="server" Text="Buscar" OnClick="Buscar_Click" />
            <br />
            <br />
             <asp:GridView ID="gvAdministrador" runat="server" AutoGenerateColumns="false" 
                    AllowPaging="true" Width="100%" PageSize="5" >
                    <Columns>
                        <asp:BoundField DataField="IdTransac" HeaderText="Transaccion" />
                        <asp:BoundField DataField="cedula" HeaderText="Cédula" />
                        <asp:BoundField DataField="Cuenta" HeaderText="Cuenta" />
                        <asp:BoundField DataField="Simpe" HeaderText="Simpe" />
                        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" />
                        <asp:BoundField DataField="Monto" HeaderText="Monto" />
                        <asp:BoundField DataField="HorayFecha" HeaderText="HorayFecha" />
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
