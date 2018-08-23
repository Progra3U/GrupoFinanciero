using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Administradores
{
    public partial class A_Globales : System.Web.UI.Page
    {
        #region CargarLista
        private void CargarLista()
        {
            try
            {
                List<Cliente> lstGlobales;
                lstGlobales = ConexionServicios.ConexionesInternas.MontosGlobales();
                ViewState["lstGlobales"] = lstGlobales;
                this.gvGlobales.DataSource = lstGlobales;
                this.gvGlobales.DataBind();
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
            CargarLista();
        }

        protected void EjecutarGlobales_Click(object sender, EventArgs e)
        {
            
        }
    }
}