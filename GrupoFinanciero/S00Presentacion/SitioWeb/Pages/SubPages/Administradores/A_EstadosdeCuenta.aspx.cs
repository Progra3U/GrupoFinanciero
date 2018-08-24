using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Administradores
{
    public partial class A_EstadosdeCuenta : System.Web.UI.Page
    {
        #region CargarLista
        private void CargarLista()
        {
            try
            {
                List<Transaccion> lsttnsc;
                Transaccion tnsc = new Transaccion();
                tnsc.CuentaInterna = this.CuentaInterna.Text.Trim();
                lsttnsc = ConexionServicios.ConexionesInternas.EstadosdeCuenta(tnsc);

                ViewState["lsttnsc"] = lsttnsc;
                this.gvEstadoCuenta.DataSource = lsttnsc;
                this.gvEstadoCuenta.DataBind();
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

        protected void Buscar_Click(object sender, EventArgs e)
        {
            this.CargarLista();
        }
    }
}