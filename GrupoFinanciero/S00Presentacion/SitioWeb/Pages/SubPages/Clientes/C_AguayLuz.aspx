<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="C_AguayLuz.aspx.cs" Inherits="S00Presentacion.SitioWeb.Pages.SubPages.Clientes.C_AguayLuz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Pagos de Agua y luz</h2>
        <section id="FormUsuarios">
            <form>
               <asp:Label class="label" runat="server" For="Pago">Tipo Pago A Realizar:</asp:Label>
               <asp:DropDownList class="textBox" ID="Pagos" runat="server">
                    <asp:ListItem Value="Agua" Selected="True">Servicio de Pago Agua</asp:ListItem>
                     <asp:ListItem Value="Luz">Servicio de Pago Luz</asp:ListItem>
                </asp:DropDownList>  
                 
                 <asp:Label class="label"  runat="server" Text="Label"  For="Cedula">Selecciona la fecha deseada:</asp:Label>
                                     <input type="date" name="fecha" min="2018-03-25" max="2018-05-25" step="2" style="width: 269px; margin-left: 245px">

                <asp:Label class="label"  runat="server" Text="Label"  For="Cedula">Cedula:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Cedula" pattern="[0-9]{2}[-][0-9]{4}[-][0-9]{4}" MaxLength="12" placeholder="00-0000-0000" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" Text="Label"  For="Nombre">Nombre:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Nombre" placeholder="Nombre" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="CuentaSimpe">CuentaSimpe:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="tel" ID="CuentaSimpe" placeholder="CuentaSimpe" required runat="server"></asp:TextBox>   
               <asp:Label class="label" runat="server" For="Pago">Monto a Pagar:</asp:Label>
               <asp:TextBox class="textBox" size="30" type="text" ID="Monto" placeholder="MontoPagar" required runat="server"></asp:TextBox>   
                
               </form>
             <asp:Button class="botones" ID="Pagar" runat="server" Text="Pagar" OnClick="Pagar_Click" />
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
        
        
        
        
        </section>
    </div>
</body>
</asp:Content>
