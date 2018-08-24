using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Clientes
{
    public partial class C_EstadosdeCuenta : System.Web.UI.Page
    {
        public void infoUsuario()
        {
            string Cedula, SaldoCuenta,CuentaInterna, CuentaSimpe, nombre;
            try
            {
                List<Cliente> lstsECliente;
                Cliente ECliente = new Cliente();
                ECliente.Cedula = this.Cedula.Text.Trim();
                lstsECliente = ConexionServicios.ConexionesInternas.ClienteBuscar(ECliente);
                foreach (var item in lstsECliente)
                {
                    Cedula = item.Cedula.ToString();
                    nombre = item.Nombre.ToString();
                    SaldoCuenta = item.SaldoCuenta.ToString();
                    CuentaInterna = item.CuentaInterna;
                    CuentaSimpe = item.CuentaSimpe;


                    if (item.Cedula.ToString().Equals(this.Cedula.Text.Trim()))
                    {
                        
                        this.CuentaBancoEx.Text = CuentaInterna;
                        this.cuentaSinpe.Text = CuentaSimpe;
                        this.saldo.Text = SaldoCuenta;

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
        protected void Page_Load(object sender, EventArgs e)
        {
            infoUsuario();
        }
        protected void GenerarVista_Click(object sender, EventArgs e)
        {

            infoUsuario();
            }

        protected void gvEstadoCuenta_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.gvEstadoCuenta.PageIndex = e.NewPageIndex;
            this.infoUsuario();
        }

        protected void gvEstadoCuenta_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            try
            {
                List<Transaccion> lstclientes = (List<Transaccion>)ViewState["lstclientes"];

                int indice = e.NewSelectedIndex;

                this.CuentaBancoEx.Text = lstclientes[indice].CuentaInterna.ToString();
                this.cuentaSinpe.Text = lstclientes[indice].CuentaSimpe.ToString();
                this.saldo.Text = lstclientes[indice].Monto.ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}