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

        #region SumaTotales
        private void suma()
        {
            double sumatotal = 0;
            try
            {
                List<Cliente> lstSuma;
                lstSuma = ConexionServicios.ConexionesInternas.MontosGlobales();

                foreach (var item in lstSuma)
                {
                    Cliente suma = new Cliente();
                    suma.SaldoCuenta = item.SaldoCuenta;
                    sumatotal = sumatotal + suma.SaldoCuenta;
                }
                this.MontoTotal.Text = sumatotal.ToString();
            }
            catch (Exception ex)
            {
                //throw ex;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error en Suma);</script>");
            }
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarLista();
            suma();
        }

        protected void EjecutarGlobales_Click(object sender, EventArgs e)
        {
            
        }
    }
}