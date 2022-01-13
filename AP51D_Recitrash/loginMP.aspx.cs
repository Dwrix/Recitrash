
using Reciclaje.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Reciclaje.Modelo;

namespace Reciclaje.WebForms
{
    public partial class loginMP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                   
            if (Session["error"] != null)
            {
                LbMensaje.Text = Session["error"].ToString();
                Session["error"] = null;
            }
            
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Usuario usuario = LoginController.login(TxtCorreo.Text, TxtPassword.Text);
            if (usuario != null)
            {
                Session["usuario"] = usuario;
                Response.Redirect("indexMP.aspx");
            }
            else
            {
                LbMensaje.Text = "Usuario y/o contrasena incorrectos.";
            }
        }
    }
}