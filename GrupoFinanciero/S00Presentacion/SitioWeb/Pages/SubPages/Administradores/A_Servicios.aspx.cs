using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Administradores
{
    public partial class A_Servicios : System.Web.UI.Page
    {
        #region Cargar Lista
        private void CargarLista()
        {
            try
            {
                List<Servicio> lstServicios;
                Servicio serv = new Servicio();
                serv.DescServicio = this.Servicios.Text.ToString();
                lstServicios = ConexionServicios.ConexionesInternas.ServicioBuscar(serv);

                 ViewState["lstServicios"] = lstServicios;
                 this.gvServicios.DataSource = lstServicios;
                 this.gvServicios.DataBind();
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
            this.CargarLista();
        }

        protected void Ejecutar_Click(object sender, EventArgs e)
        {
            CargarLista();
        }

        protected void Modificar_Click(object sender, EventArgs e)
        {
            try
            {
                Servicio upser = new Servicio();
                upser.DescServicio = this.Servicios.Text.ToString();
                upser.Estado = Convert.ToBoolean(this.EstadoServicio.Text);
                ConexionServicios.ConexionesInternas.ServicioModificar(upser);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Datos Actualizados con exito');</script>");
                CargarLista();
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
                //throw;
            }
        }
    }
}