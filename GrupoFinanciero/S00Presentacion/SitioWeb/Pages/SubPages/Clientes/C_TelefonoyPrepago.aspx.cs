using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Clientes
{
    public partial class C_TelefonoyPrepago : System.Web.UI.Page
    {
        #region Limpiar
        public void Limpiar()
        {
            Telefono.Text = String.Empty;
            cuentaInterna.Text = String.Empty;
            PagoSeleccionado.Text = String.Empty;
            MontoPagar.Text = String.Empty;
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //System.DateTime.Now
        protected void Pagar_Click(object sender, EventArgs e)
        {
            try
            {
                BancoExteno objBanco = new BancoExteno();
                objBanco.CuentaBancoEx = this.Telefono.Text.Trim();
                objBanco.CuentaInterna = this.cuentaInterna.Text.Trim();
                objBanco.DetalleTrans = this.PagoSeleccionado.Text.Trim();
                objBanco.HorayFecha = System.DateTime.Now;
                objBanco.Monto = Convert.ToInt32(this.MontoPagar.Text.Trim());
                ConexionServicios.ConexionesInternas.BancoExternoAgregar(objBanco);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Pago realizado Con exito');</script>");
                Limpiar();

            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Pago realizado Con exito');</script>");
                //throw ex;
            }

        }
    }
}