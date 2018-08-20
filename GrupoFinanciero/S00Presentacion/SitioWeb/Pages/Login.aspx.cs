using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

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
                Usuario login = new Usuario();
                login.Usuario1 = this.Usuario.Text.Trim();
                login.Contrasena = this.Password.Text.Trim();
                ConexionServicios.ConexionesInternas.Login(login);

                if (login.Usuario1.Equals(this.Usuario.Text.Trim()) && login.Contrasena.Equals(this.Password.Text.Trim()))
                {
                    if (login.Estado == true)
                    {
                        if (login.Perfil.Equals("Admin"))
                        {
                            Response.Redirect("Administradores.aspx");
                        }
                        else if (login.Perfil.Equals("Cliente"))
                        {
                            Response.Redirect("Clientes.aspx");
                        }
                        else if (login.Perfil.Equals("Usuario"))
                        {
                            Response.Redirect("Usuarios.aspx");
                        }
                    }
                    else
                    {
                        error.Text = "Usuario Inactivo. Contacte con el Adminsitrador";
                    }
                }
                else
                {
                    error.Text = "Error Verifique sus Credenciales";
                }

                /*if (login.Usuario1.Equals(this.Usuario.Text.Trim()) && login.Contrasena.Equals(this.Password.Text.Trim()))
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
                }*/
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
                //throw ex;
            }
        }
    }
}