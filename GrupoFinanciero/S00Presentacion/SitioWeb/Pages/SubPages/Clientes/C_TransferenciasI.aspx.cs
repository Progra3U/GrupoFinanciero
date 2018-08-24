using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Clientes
{
    public partial class C_TransferenciasI : System.Web.UI.Page
    {
        #region Limpiar
        public void Limpiar()
        {
            this.CuentaBancoEx.Text = String.Empty;
            this.cuentaInterna.Text = String.Empty;
            this.Detalle.Text = String.Empty;
            this.Monto.Text = String.Empty;
        }
        #endregion

        #region RecibirUsuario
        public void recibirUsuario()
        {
            //Usuarios user = new Usuarios();
            this.cuentaInterna.Text = Session["usuario2"].ToString();
        }
        #endregion

        #region InfoUsuario
        public void infoUsuario()
        {
            string CuentaInterna;
            try
            {
                List<Cliente> lstsECliente;
                Cliente ECliente = new Cliente();
                ECliente.Cedula = Session["usuario2"].ToString();
                lstsECliente = ConexionServicios.ConexionesInternas.ClienteBuscar(ECliente);
                foreach (var item in lstsECliente)
                {
                    CuentaInterna = item.CuentaInterna;

                    if (CuentaInterna != String.Empty)
                    {
                        this.cuentaInterna.Text = CuentaInterna;
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error: Usuario no existe');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                //throw ex;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
            }
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            this.recibirUsuario();
            this.infoUsuario();
        }

        protected void TransferirI_Click(object sender, EventArgs e)
        {
            try
            {
                BancoExteno objBanco = new BancoExteno();
                objBanco.CuentaBancoEx = this.CuentaBancoEx.Text.Trim();
                objBanco.CuentaInterna = this.cuentaInterna.Text.Trim();
                objBanco.DetalleTrans = this.Detalle.Text.ToString();
                objBanco.HorayFecha = System.DateTime.Now;
                objBanco.Monto = Convert.ToInt32(this.Monto.Text.Trim());
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