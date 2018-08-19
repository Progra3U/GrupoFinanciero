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
            Cedula.Text = String.Empty;
            Nombre.Text = String.Empty;
            CuentaSimpe.Text= String.Empty;
            Monto.Text= String.Empty;
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Pagar_Click(object sender, EventArgs e)
        {
            BancoExteno objebanco = new BancoExteno();

            objebanco.CuentaExterna = this.CuentaSimpe.Text.Trim();
            objebanco.DetalleTrans= this.Pagos.Text.Trim();
            objebanco.Monto= Convert.ToInt32(this.Monto.Text.Trim());

            ConexionServicios.ConexionesInternas.BancoExternoAgregar(objebanco);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Se registro el pago Exitosamente');</script>");
            Limpiar();
        }
           
        }
    
}