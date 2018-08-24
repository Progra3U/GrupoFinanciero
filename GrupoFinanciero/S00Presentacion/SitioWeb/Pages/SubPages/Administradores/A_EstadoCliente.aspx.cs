using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Administradores
{
    public partial class A_EstadoCliente : System.Web.UI.Page
    {
        #region CargarLista
        private void CargarLista()
        {
            try
            {
                List<Cliente> lstClientes;
                Cliente client = new Cliente();
                client.Estado = Convert.ToBoolean(this.EstadoC.Text.ToString());
                lstClientes = ConexionServicios.ConexionesInternas.VerEstadoClientes(client);
                ViewState["lstCliente"] = lstClientes;
                this.gvEstadoClientes.DataSource = lstClientes;
                this.gvEstadoClientes.DataBind();
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

        }

        protected void Consultar_Click(object sender, EventArgs e)
        {
            this.CargarLista();
        }

        protected void gvEstadoClientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.gvEstadoClientes.PageIndex = e.NewPageIndex;
            this.CargarLista();
        }

        /*protected void gvEstadoClientes_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            List<Cliente> lstClientes = (List<Cliente>)ViewState["lstClientes"];
            int indice = e.NewSelectedIndex;
            lstClientes[indice].Cedula.ToString();
            lstClientes[indice].Nombre.ToString();
            lstClientes[indice].Apellido1.ToString();
            lstClientes[indice].Apellido2.ToString();
        }*/
    }
}