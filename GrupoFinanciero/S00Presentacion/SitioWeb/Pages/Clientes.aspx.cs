using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages
{
    public partial class Clientes : System.Web.UI.Page
    {
        #region Recibir Usuario
        public void recibirUsuario()
        {
            //Usuarios user = new Usuarios();
            usuarioconectado.Text = "<p>Bienvenido a InterBankCom <br>" +
                "ID: " + Session["usuario"].ToString() + "<br>" +
                "Nombre:" + Session["nombre"].ToString() + "<br>" +
                "Contraseña:" + Session["pass"].ToString() + "<br>" +
                "El perfil al cual pertenece es: " + Session["perfil"].ToString() + "<br>" +
                "Gracias por Poner sus Bienes y dinero en las manos de la familia de InterBankCom.</p>";
            Session["usuario2"] = Session["usuario"].ToString();
            //Response.Redirect(@"~/SitioWeb/Pages/SubPages/Clientes/C_EstadosdeCuenta.aspx");
        }
        #endregion

        #region Cargar Info Usuario
        public void infoUsuario()
        {
            string Cedula, Nombre, Apellido1, Apellido2, FechaNac, Telefono, Correo, Provincia,
                DireccionExac, SaldoCuenta, Contrasena, CuentaInterna, CuentaSimpe;
            try
            {
                List<Cliente> lstsECliente;
                Cliente ECliente = new Cliente();
                ECliente.Cedula = Session["usuario2"].ToString();
                lstsECliente = ConexionServicios.ConexionesInternas.ClienteBuscar(ECliente);
                foreach (var item in lstsECliente)
                {
                    Cedula = item.Cedula.ToString();
                    Nombre = item.Nombre;
                    Apellido1 = item.Apellido1;
                    Apellido2 = item.Apellido2;
                    FechaNac = item.FechaNac.ToString();
                    Telefono = item.Telefono;
                    Correo = item.Correo;
                    Provincia = item.Provincia;
                    DireccionExac = item.DireccionExac;
                    Contrasena = item.Contrasena;
                    CuentaInterna = item.CuentaInterna;
                    CuentaSimpe = item.CuentaSimpe;
                    SaldoCuenta = item.SaldoCuenta.ToString();

                    this.Nombre.Text = Nombre + " " + Apellido1 + " " + Apellido2;
                    this.Cedula.Text = Cedula;
                    this.FechaNac.Text = FechaNac;
                    this.Telefono.Text = Telefono;
                    this.Correo.Text = Correo;
                    this.DireccionExac.Text = DireccionExac + ", " + Provincia;
                    this.Contrasena.Text = Contrasena;
                    this.CuentaInterna.Text = CuentaInterna;
                    this.CuentaSimpe.Text = CuentaSimpe;
                    this.SaldoCuenta.Text = SaldoCuenta;
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
            infoUsuario();
        }
    }
}