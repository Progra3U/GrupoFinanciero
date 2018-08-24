using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S00Presentacion.SitioWeb.Pages
{
    public partial class Clientes : System.Web.UI.Page
    {
        public void recibirUsuario()
        {
            //Usuarios user = new Usuarios();
            usuarioconectado.Text = "Bienvenido " + Session["usuario"].ToString() + Session["nombre"].ToString() +". Cargando el contenido de su sesion....";

            Session["usuario2"] = Session["usuario"].ToString();
            //Response.Redirect(@"~/SitioWeb/Pages/SubPages/Clientes/C_EstadosdeCuenta.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            recibirUsuario();
        }
    }
}