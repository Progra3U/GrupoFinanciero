<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="S00Presentacion.SitioWeb.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager id="scripmanager1" runat="server"></asp:ScriptManager>
<body>
  <header>
    <div id="subheader">
      <div id="logotipo"><p><a href="#">InterBankCom</a></p></div>
      <nav>
        <ul>
          <li><a href="Pages/Login.aspx">Login</a></li>
        </ul>
      </nav>
    </div>
  </header>

  <section id="wrap">

    <section id="main">
        <div class="container">
      <section id="slides">
        <div class="container">
          <div><a href="#" id=""><img src="Imagenes/Fondo/banco.jpg" alt="Fondo Principal" /></a></div>
        </div>
      </section>

      <section id="bienvenidos">
        <article>
          <h2>Bienvenido a InterBankCom</h2>
          <p>
              Somos un Banco comprometido con el exito de nuestros clientes, por lo cual no juzgamos la procedencia de los fondos 
              de los mismos. Nosotros confiamos plenamente en el cliente, ya que este es el pedestal de nuestra organización.
          </p>
        </article>
      </section>

      <section id="contenido">
            <!-- TradingView Widget BEGIN -->
            <div class="tradingview-widget-container">
              <div id="tradingview_035ea"></div>
              <div class="tradingview-widget-copyright"><a href="https://es.tradingview.com/symbols/NASDAQ-AAPL/" rel="noopener" target="_blank"><span class="blue-text">AAPL gráfico</span></a> por TradingView</div>
              <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
              <script type="text/javascript">
              new TradingView.widget(
                  {"width": 700,"height": 400,"symbol": "NASDAQ:AAPL","interval": "D","timezone": "America/El_Salvador",
                  "theme": "Light","style": "1","locale": "es","toolbar_bg": "#f1f3f6","enable_publishing": false,
                  "allow_symbol_change": true,"calendar": true,"news": ["headlines"],"container_id": "tradingview_035ea"}
              );
              </script>
            </div>
            <!-- TradingView Widget END -->
      </section>

      <aside>
        

        <section class="widget">
            <h3>Indicadores Economicos</h3>
            <!-- DolarWeb IndMin Start -->
            <div id="IndicadoresMin">
                <h2><a href="https://dolar.wilkinsonpc.com.co/" target="_blank"></a></h2>
            </div>
            <script type="text/javascript" src="https://dolar.wilkinsonpc.com.co/widgets/gratis/indicadores-economicos-min.js?ancho=220&alto=100&fondo=transparent&fsize=12&ffamily=sans-serif&fcolor=ffffff"></script>
            <!-- DolarWeb IndMin End -->
        </section>

          <section class="widget">
            <h3>Calendario</h3>
           <!-- Inicio widget calendario-colombia.com -->
            <link rel="stylesheet" href="http://cdn.calendario-colombia.com/widget_blanco.css">
            <script src="http://www.calendario-colombia.com/widget.js"></script>
            <!-- Fin widget calendario-colombia.com -->
        </section>
      </aside>

    </section>

    <footer>
      <section id="acerca-de">
        <article>
          <h3>Nuestro Principal Objetivo es brindarle:</h3>
          <p>
            <ul>
              <li>Tranferencia de dinero entre usuarios del banco.</li>
              <li>Transferencia de dinero entre el banco y otras entidades.</li>
              <li>Pago de Servicios.</li>
              <li>Consulta de estados de Cuenta.</li>
              <li>Respaldo y Confidencialidad.</li>
            </ul>
          </p>
        </article>
      </section>

      <section id="redes-s">
        <div class="email"><a href="mailto:prueba@gmail.com" target="_blank"></a></div>
        <div class="twitter"><a href="https://twitter.com/?lang=pt" target="_blank"></a></div>
        <div class="youtube"><a href="https://www.youtube.com/watch?v=-0WITQeaBLo" target="_blank"></a></div>
        <div class="facebook"><a href="https://pt-br.facebook.com" target="_blank"></a></div>
      </section>
    </footer>
    <div id="cpyright"><p>Todos los derechos reservados - Banco InterBankCom.br.com</p></div>
  </section>
  
</body>
</asp:Content>
