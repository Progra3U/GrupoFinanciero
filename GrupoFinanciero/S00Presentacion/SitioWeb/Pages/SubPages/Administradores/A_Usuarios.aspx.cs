using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Administradores
{
    public partial class A_Usuarios : System.Web.UI.Page
    {
        #region Limpiar
        public void Limpiar()
        {
            this.Usuario.Text = String.Empty;
            this.Nombre.Text = String.Empty;
            this.Contrasena.Text = String.Empty;
            this.Contrasena2.Text = String.Empty;
        }
        #endregion

        #region CargarLista
        private void CargarLista()
        {
            try
            {
                List<Usuario> lstUsuarios;
                Usuario user = new Usuario();
                user.Estado = Convert.ToBoolean(this.Estado.Text.ToString());
                lstUsuarios = ConexionServicios.ConexionesInternas.VerEstadoUsuarios(user);

                ViewState["lstUsuarios"] = lstUsuarios;
                this.gvUsuarios.DataSource = lstUsuarios;
                this.gvUsuarios.DataBind();
            }
            catch (Exception ex)
            {
                //throw ex;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Problema al cargar Fuente de Recursos');</script>");
            }
        }

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            //this.CargarLista();
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            Usuario user = new Usuario();
            try
            {
                if (Contrasena.Text.Equals(Contrasena2.Text))
                {
                    user.Usuario1 = this.Usuario.Text.Trim();
                    user.Nombre = this.Nombre.Text.Trim();
                    user.Contrasena = this.Contrasena.Text.Trim();
                    user.Perfil = this.roll.Text.Trim();
                    user.Estado = Convert.ToBoolean(this.Estado.Text.Trim());
                    ConexionServicios.ConexionesInternas.UsuarioAgregar(user);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Usuario Agregado Exitosamente');</script>");
                    Limpiar();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Contraseña no Coincide');</script>");
                }
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
                //throw;
            }
        }

        protected void Actualizar_Click(object sender, EventArgs e)
        {
            Usuario user = new Usuario();
            try
            {
                if (this.Usuario.Text.Trim() != null)
                {
                    user.Usuario1 = this.Usuario.Text.Trim();
                    user.Nombre = this.Nombre.Text.Trim();
                    user.Contrasena = this.Contrasena.Text.Trim();
                    user.Perfil = this.roll.Text.Trim();
                    user.Estado = Convert.ToBoolean(this.Estado.Text.Trim());
                    ConexionServicios.ConexionesInternas.UsuarioModificar(user);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Usuario Modificado Exitosamente');</script>");
                    Limpiar();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('No se pudo Modificar Correctamente');</script>");
                }
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
                //throw;
            }
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            string Usuario, Nombre, Contrasena, Perfil;
            bool Estado;
            try
            {
                List<Usuario> lstsEUsusario;
                Usuario EUser = new Usuario();
                EUser.Usuario1 = this.Usuario.Text.Trim();
                lstsEUsusario = ConexionServicios.ConexionesInternas.UsuarioBuscar(EUser);

                foreach (var item in lstsEUsusario)
                {
                    Usuario = item.Usuario1;Nombre = item.Nombre;
                    Contrasena = item.Contrasena;Perfil = item.Perfil;
                    Estado = item.Estado;

                    if (item.Usuario1.ToString().Equals(this.Usuario.Text.Trim()))
                    {
                        this.Usuario.Text = Usuario; this.Nombre.Text = Nombre;
                        this.Contrasena.Text = Contrasena;this.Contrasena2.Text = Contrasena;
                        this.roll.Text = Perfil;
                        if (Estado != true)
                        {
                            this.Estado.Text = "Inactivo";
                            //this.Estado.SelectedValue = "Inactivo";
                        }
                        else
                        {
                            this.Estado.Text = "Activo";
                            //this.Estado.SelectedValue = "Activo";
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error: Usuario no existe');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                //throw ex;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
            }
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario user = new Usuario();
                if (this.Usuario.Text.Trim() != null)
                {
                    user.Usuario1 = this.Usuario.Text.Trim();
                    ConexionServicios.ConexionesInternas.UsuarioEliminar(user);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Usuario Eliminado Exitosamente');</script>");
                    Limpiar();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('No se pudo Eliminar el Usuario Correctamente');</script>");
                }
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
                //throw;
            }

        }

        protected void gvUsuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.gvUsuarios.PageIndex = e.NewPageIndex;
            this.CargarLista();
        }

        protected void gvUsuarios_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            try
            {
                List<Usuario> lstUsuarios = (List<Usuario>)ViewState["lstUsuarios"];
                int indice = e.NewSelectedIndex;
                this.Usuario.Text = lstUsuarios[indice].Usuario1.ToString();
                this.Nombre.Text = lstUsuarios[indice].Nombre.ToString();
                this.Estado.Text = lstUsuarios[indice].Estado.ToString();   
            }
            catch (Exception ex)
            {
                //throw ex;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al mostrar Informacion');</script>");
            }
        }

        protected void VerFiltroU_Click(object sender, EventArgs e)
        {

            this.CargarLista();
        }
    }
}