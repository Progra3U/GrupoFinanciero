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
            string Cedula, SaldoCuenta,CuentaInterna, CuentaSimpe, Descripcion;
            try
            {
                List<Cliente> lstsECliente;
                Cliente ECliente = new Cliente();
                ECliente.Cedula = this.Cedula.Text.Trim();
                lstsECliente = ConexionServicios.ConexionesInternas.ClienteBuscar(ECliente);
                foreach (var item in lstsECliente)
                {
                    Cedula = item.Cedula.ToString();
                    SaldoCuenta = item.SaldoCuenta.ToString();
                    CuentaInterna = item.CuentaInterna;
                    CuentaSimpe = item.CuentaSimpe;


                    if (item.Cedula.ToString().Equals(this.Cedula.Text.Trim()))
                    {
                        this.Nombre.Text = Nombre;
                        this.PrimerApellido.Text = PrimerApellido;
                        this.SegundoApellido.Text = SegundoApellido;
                        this.FechaNac.Text = FechaNac;
                        this.Telefono.Text = Telefono;
                        this.Correo.Text = Correo;
                        this.Provincia.Text = Provincia;
                        this.Direccion.Text = Direccion;
                        this.Monto.Text = SaldoCuenta;
 

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

        }

        protected void gvEstadoCuenta_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void gvEstadoCuenta_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }
    }
}