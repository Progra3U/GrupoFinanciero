using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Administradores
{
    public partial class A_Transferencias : System.Web.UI.Page
    {
        #region CargarLista
        private void CargarLista()
        {
            try
            {
                List<Cliente> lstCliente;
                Cliente client = new Cliente();
                client.Estado = Convert.ToBoolean(this.EstadoC.Text.ToString());
                lstCliente = ConexionServicios.ConexionesInternas.VerEstadoClientes(client);
                ViewState["lstCliente"] = lstCliente;
                this.gvEstadoClientes.DataSource = lstCliente;
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
    }
}