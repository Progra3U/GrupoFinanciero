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
        public void recibirUsuario()
        {
            //Usuarios user = new Usuarios();
            this.cuentaInterna.Text = Session["usuario2"].ToString();
        }
        public void infoUsuario()
        {
            string Cedula, SaldoCuenta, CuentaInterna, CuentaSimpe;
            try
            {
                List<Cliente> lstsECliente;
                Cliente ECliente = new Cliente();
                ECliente.Cedula = Session["usuario2"].ToString();
                lstsECliente = ConexionServicios.ConexionesInternas.ClienteBuscar(ECliente);
                foreach (var item in lstsECliente)
                {
                    Cedula = item.Cedula.ToString();
                    CuentaInterna = item.CuentaInterna;
                    CuentaSimpe = item.CuentaSimpe;
                    SaldoCuenta = item.SaldoCuenta.ToString();


                    if (Cedula != String.Empty)
                    {
                        this.Cedula.Text = Cedula;
                        this.cuentaInterna.Text = CuentaInterna;
                        this.cuentaSinpe.Text = CuentaSimpe;
                        this.Saldo.Text = SaldoCuenta;
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

        #region CargarLista
        private void CargarLista()
        {
            try
            {
                List<Transaccion> lsttnsc;
                Transaccion tnsc = new Transaccion();
                tnsc.CuentaInterna = this.cuentaInterna.Text.Trim();
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
            this.recibirUsuario();
            this.infoUsuario();

        }
        protected void GenerarVista_Click(object sender, EventArgs e)
        {
            
            this.CargarLista();
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
                List<Transaccion> lstTransaccion = (List<Transaccion>)ViewState["lstTransaccion"];

                int indice = e.NewSelectedIndex;

                this.cuentaInterna.Text = lstTransaccion[indice].CuentaInterna.ToString();
                this.cuentaSinpe.Text = lstTransaccion[indice].CuentaSimpe.ToString();
                this.Saldo.Text = lstTransaccion[indice].Monto.ToString();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}