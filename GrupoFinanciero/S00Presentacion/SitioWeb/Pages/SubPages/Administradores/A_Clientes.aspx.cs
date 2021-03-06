﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;  //Librerias para envio de correo electronico
using System.Net.Mail;
using System.Threading; //Hilos de ejecucion
using S04Entidades;

namespace S00Presentacion.SitioWeb.Pages.SubPages.Administradores
{
    public partial class A_Clientes : System.Web.UI.Page
    {
        #region Limpiar
        public void Limpiar()
        {
            Cedula.Text = String.Empty;
            Nombre.Text = String.Empty;
            PrimerApellido.Text = String.Empty;
            SegundoApellido.Text = String.Empty;
            FechaNac.Text = String.Empty;
            Telefono.Text = String.Empty;
            Correo.Text = String.Empty;
            Direccion.Text = String.Empty;
            Monto.Text = String.Empty;
            Contrasena.Text = String.Empty;
            Contrasena2.Text = String.Empty;
        }
        #endregion

        #region Cuentas Simpe y normal
        public string Cuenta()
        {
            Random randm = new Random();
            int primer = randm.Next(1, 10);
            int segundo = randm.Next(1000000, 9999999);
            int tercer = randm.Next(1, 10);

            return "00" + primer + "-" + segundo + "-" + tercer;
        }

        public string Simpe()
        {
            Random randm = new Random();
            int CSimpeP1 = randm.Next(11111111, 99999999);
            int CSimpeP2 = randm.Next(11111111, 99999999);
            return "0" + CSimpeP1 + CSimpeP2;
        }
        #endregion

        #region Correos
        private void EnviarCorreoElectronicos()
        {
            SmtpClient envio = new SmtpClient(); //Configuracion del ENVIO 
            MailMessage msj = new MailMessage(); //Configuracion del MSJ
            string Correotarget = this.Correo.Text.Trim();
            string CorreoSource = "interbankcomgurpofinanciero@gmail.com";
            string encabezado = "Te damos la bienvenida a tu nueva cuenta de InterBankCom";
            string Mensaje = "<p>Estimado " + this.Nombre.Text.Trim() + " "+ this.PrimerApellido.Text.Trim() +
                " " + this.SegundoApellido.Text.Trim() + "<br>" +
                "Le damos la bienvenida a la familia de InterBankCom<br>" +
                "A continuación encontrara alguno datos de su interes,<br>" +
                "Usuario: " + this.Cedula.Text.Trim() + "<br>" +
                "Contraseña: " +this.Contrasena.Text.Trim() + "<br>" +
                "Cuenta Cliente: " + Cuenta().ToString() + "<br>" +
                "Cuenta Simpe: " + Simpe().ToString() + "<br>" +
                "Gracias por elegir nuestra Entidad Financiera</p>";
            try
            {
                //Informacion del correo a enviar
                msj = new MailMessage();
                msj.To.Add(new MailAddress(Correotarget));
                msj.From = new MailAddress(CorreoSource);
                msj.Subject = encabezado;
                msj.Body = Mensaje;
                msj.IsBodyHtml = true;
                msj.Priority = MailPriority.Normal;

                //Configuracion SMTP
                envio.Host = "smtp.gmail.com";
                envio.Port = 587;
                envio.EnableSsl = true;
                envio.UseDefaultCredentials = false;
                envio.Credentials = new NetworkCredential("interbankcomgurpofinanciero@gmail.com",
                                                            "egs76$gs");
                //envio
                envio.Send(msj);

                msj.Dispose();
            }
            catch (Exception ex)
            {
                //throw ex;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Verifique su conexion a Internet');</script>");
            }
        }
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region Accion_de_Botones
        protected void Agregar_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente objCliente = new Cliente();
                if (Contrasena.Text.Equals(Contrasena2.Text))
                {
                    objCliente.Cedula = this.Cedula.Text.Trim();
                    objCliente.Nombre = this.Nombre.Text.Trim();
                    objCliente.Apellido1 = this.PrimerApellido.Text.Trim();
                    objCliente.Apellido2 = this.SegundoApellido.Text.Trim();
                    objCliente.FechaNac = Convert.ToDateTime(this.FechaNac.Text.Trim());
                    objCliente.Telefono = this.Telefono.Text.Trim();
                    objCliente.Correo = this.Correo.Text.Trim();
                    objCliente.Provincia = this.Provincia.Text.ToString();
                    objCliente.DireccionExac = this.Direccion.Text.Trim();
                    objCliente.SaldoCuenta = Convert.ToInt32(this.Monto.Text.Trim());
                    objCliente.Contrasena = this.Contrasena.Text.Trim();
                    objCliente.CuentaInterna = Cuenta();
                    objCliente.CuentaSimpe = Simpe();
                    objCliente.Descripcion = "Apertura de Cuenta";
                    objCliente.Estado = true;

                    Thread hilo = new Thread(EnviarCorreoElectronicos);
                    hilo.Start();
                    ConexionServicios.ConexionesInternas.ClienteAgregar(objCliente);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Cliente Agregado Exitosamente');</script>");
                    Limpiar();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Contraseña no Coincide');</script>");
                }
            }
            catch (Exception ex)
            {
                //throw ex;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
            }
        }

        protected void Actualizar_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente objCliente = new Cliente();
                if (this.Cedula.Text.Trim() != null)
                {
                    objCliente.Cedula = this.Cedula.Text.Trim();
                    objCliente.Nombre = this.Nombre.Text.Trim();
                    objCliente.Apellido1 = this.PrimerApellido.Text.Trim();
                    objCliente.Apellido2 = this.SegundoApellido.Text.Trim();
                    objCliente.FechaNac = Convert.ToDateTime(this.FechaNac.Text.Trim());
                    objCliente.Telefono = this.Telefono.Text.Trim();
                    objCliente.Correo = this.Correo.Text.Trim();
                    objCliente.Provincia = this.Provincia.Text.ToString();
                    objCliente.DireccionExac = this.Direccion.Text.Trim();
                    objCliente.Contrasena = this.Contrasena.Text.Trim();
                    objCliente.Estado = Convert.ToBoolean(this.Estado.Text);
                    ConexionServicios.ConexionesInternas.ClienteModificar(objCliente);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Datos Actualizados con exito');</script>");
                    Limpiar();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al actualizar los datos');</script>");
                }
            }
            catch (Exception ex)
            {
                //throw ex;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
            } 
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            string Cedula, Nombre, PrimerApellido, SegundoApellido, FechaNac, Telefono, Correo,Provincia, 
                Direccion, SaldoCuenta, Contrasena, CuentaInterna, CuentaSimpe, Descripcion;
            bool Estado;            
            try
            {
                List<Cliente> lstsECliente;
                Cliente ECliente = new Cliente();
                ECliente.Cedula = this.Cedula.Text.Trim();
                lstsECliente = ConexionServicios.ConexionesInternas.ClienteBuscar(ECliente);
                foreach (var item in lstsECliente)
                {
                    Cedula = item.Cedula.ToString();Nombre = item.Nombre;
                    PrimerApellido = item.Apellido1;SegundoApellido = item.Apellido2;
                    FechaNac = item.FechaNac.ToString();Telefono = item.Telefono;
                    Correo = item.Correo;Provincia = item.Provincia;
                    Direccion = item.DireccionExac;SaldoCuenta = item.SaldoCuenta.ToString();
                    Contrasena = item.Contrasena;CuentaInterna = item.CuentaInterna;
                    CuentaSimpe = item.CuentaSimpe;Descripcion = item.Descripcion;
                    Estado = item.Estado;



                    if (item.Cedula.ToString().Equals(this.Cedula.Text.Trim()))
                    {     
                        this.Nombre.Text = Nombre; this.PrimerApellido.Text = PrimerApellido;
                        this.SegundoApellido.Text = SegundoApellido;this.FechaNac.Text = FechaNac;
                        this.Telefono.Text = Telefono;this.Correo.Text = Correo;
                        this.Provincia.Text = Provincia;this.Direccion.Text = Direccion;
                        this.Monto.Text = SaldoCuenta; this.Contrasena.Text = Contrasena;
                        this.Contrasena2.Text = Contrasena;
                        if (Estado != true)
                        {
                            //this.Estado.Text = "Inactivo";
                            this.Estado.SelectedValue = "Inactivo";
                        }
                        else
                        {
                            //this.Estado.Text = "Activo";
                            this.Estado.SelectedValue = "Activo";
                        }
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

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente objCliente = new Cliente();
                if (this.Cedula.Text.Trim() != null)
                {
                    objCliente.Cedula = this.Cedula.Text.Trim();
                    ConexionServicios.ConexionesInternas.ClienteEliminar(objCliente);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Datos Eliminados con exito');</script>");
                    Limpiar();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error: el campo Cedula no debe estar vacio');</script>");
                }
            }
            catch (Exception ex)
            {
                //throw ex;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error al Gestionar la Operacion Solicitada');</script>");
            }
        }
        #endregion
    }
}