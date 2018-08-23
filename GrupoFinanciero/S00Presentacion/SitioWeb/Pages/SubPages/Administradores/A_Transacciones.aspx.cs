using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Administradores
{
    public partial class A_Transacciones : System.Web.UI.Page
    {
        #region CargarLista
        private void CargarLista()
        {
            try
            {
                List<Transaccion> lsttnsc;
                lsttnsc = ConexionServicios.ConexionesInternas.TransaccionesRegistradas();
                ViewState["lsttnsc"] = lsttnsc;
                this.gvTransacciones.DataSource = lsttnsc;
                this.gvTransacciones.DataBind();
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
            this.CargarLista();
        }

        protected void gvTransacciones_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void gvTransacciones_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }
    }
}