﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S00Presentacion.SitioWeb.Pages
{
    public partial class Administradores : System.Web.UI.Page
    {
        public void recibirUsuario()
        {
            usuarioconectado.Text = "<p>Bienvenido a InterBankCom <br>" +
                "ID: " + Session["usuario"].ToString() + "<br>" +
                "Nombre:" + Session["nombre"].ToString() + "<br>" +
                "Contraseña:" + Session["pass"].ToString() + "<br>" +
                "El perfil al cual pertenece es: " + Session["perfil"].ToString() + "<br>" +
                "Hacemos nuestro trabajo para hacer de la familia de InterBankCom lo mejor.</p>";
            Session["usuario2"] = Session["usuario"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.recibirUsuario();
        }
    }
}