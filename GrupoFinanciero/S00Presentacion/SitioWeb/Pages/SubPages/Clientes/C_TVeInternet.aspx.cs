using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Clientes
{
    public partial class C_TVeInternet : System.Web.UI.Page
    {

        #region Limpiar
        public void Limpiar()
        {
            CuentaExterna.Text = String.Empty;
            cuentaInterna.Text = String.Empty;
            PagoSeleccionado.Text = String.Empty;
            MontoPagar.Text = String.Empty;
        }
        #endregion





        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Pagar_Click(object sender, EventArgs e)
        {
            try
            {


                /*Cliente cliente = new Cliente();
                int saldCliente = cliente.SaldoCuenta;
                int motpagar = Convert.ToInt32(this.MontoPagar.Text.Trim());

                int totalsaldo = saldCliente - motpagar;*/

                BancoExteno objBanco = new BancoExteno();
                objBanco.CuentaBancoEx = this.CuentaExterna.Text.Trim();
                objBanco.CuentaInterna = this.cuentaInterna.Text.Trim();
                objBanco.HorayFecha = System.DateTime.Now;
                objBanco.DetalleTrans = this.PagoSeleccionado.Text.ToString();
                objBanco.Monto = Convert.ToInt32(this.MontoPagar.Text.Trim());


                ConexionServicios.ConexionesInternas.BancoExternoAgregar(objBanco);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Pago realizado Con exito');</script>");
                //Limpiar();

            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Pago realizado Con exito');</script>");
                //throw ex;
            }
        }
    }
}
    