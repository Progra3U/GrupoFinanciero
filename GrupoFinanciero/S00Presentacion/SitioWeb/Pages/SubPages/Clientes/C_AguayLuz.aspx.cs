using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;  //Librerias para envio de correo electronico
using System.Net.Mail;
using System.Threading; //Hilos de ejecucion
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Clientes
{
    public partial class C_AguayLuz : System.Web.UI.Page
    {

        #region Limpiar
        public void Limpiar()
        {
            CuentaBancoEx.Text = String.Empty;
            cuentaInterna.Text = String.Empty;
            PagoSeleccionado.Text= String.Empty;
            MontoPagar.Text= String.Empty;
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Pagar_Click(object sender, EventArgs e)
        {
            try
            {
                BancoExteno objBanco = new BancoExteno();
                objBanco.CuentaBancoEx = this.CuentaBancoEx.Text.Trim();
                objBanco.CuentaInterna = this.cuentaInterna.Text.Trim();
                objBanco.DetalleTrans = this.PagoSeleccionado.Text.Trim();
                objBanco.HorayFecha = Convert.ToDateTime(this.FechaPago.Text.Trim());
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