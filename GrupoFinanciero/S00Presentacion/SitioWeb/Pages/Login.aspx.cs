using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S00Presentacion.SitioWeb.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Usuario.Text.Equals("Admin") && Password.Text.Equals("1234"))
                {
                    Response.Redirect("Administradores.aspx");
                }
                else if (Usuario.Text.Equals("Cliente") && Password.Text.Equals("1234"))
                {
                    Response.Redirect("Clientes.aspx");
                }
                else if (Usuario.Text.Equals("Usuario") && Password.Text.Equals("1234"))
                {
                    Response.Redirect("Usuarios.aspx");
                }
                else
                {
                    error.Text = "Error en contrasena o Usuario";
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}