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
            string usuario, nombre, pass, perfil;
            bool estado;
            try
            {
                Usuario login = new Usuario();
                List<Usuario> lsts;
                login.Usuario1 = this.Usuario.Text.Trim();
                login.Contrasena = this.Password.Text.Trim();
                lsts = ConexionServicios.ConexionesInternas.Login(login);

                foreach(var item in lsts)
                {
                    usuario = item.Usuario1;nombre = item.Nombre;pass = item.Contrasena;
                    perfil = item.Perfil;estado = item.Estado;

                    if (estado == true)
                    {
                        if (usuario.Equals(this.Usuario.Text.Trim()) && pass.Equals(this.Password.Text.Trim()))
                        {
                            if (perfil.Equals("Admin"))
                            {
                                Response.Redirect("Administradores.aspx");
                            }
                            else if (perfil.Equals("Cliente"))
                            {
                                Session["usuario"] = this.Usuario.Text.Trim();
                                Session["nombre"] = nombre;
                                Response.Redirect(@"~/SitioWeb/Pages/Clientes.aspx");
                                //Response.Redirect("Clientes.aspx");
                            }
                            else if (perfil.Equals("Usuario"))
                            {
                                Response.Redirect("Usuarios.aspx");
                            }
                        }
                        else
                        {
                            error.Text = "Error Verifique sus Credenciales";
                        }
                    }
                    else
                    {
                        error.Text = "Usuario Inactivo. Contacte con el Adminsitrador";
                    }
                }
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
                //throw ex;
            }
        }
    }
}