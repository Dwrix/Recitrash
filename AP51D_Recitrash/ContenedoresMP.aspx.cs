
using Reciclaje.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reciclaje.WebForms
{
    public partial class ContenedoresMP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            validarLogin();
        }
        public void validarLogin()
        {
            //metodo validacion de session.
            if (Session["usuario"] == null)
            {
                Session["error"] = "Debe iniciar sesión";
                Response.Redirect("loginMP.aspx");
            }

            Usuario usuario = (Usuario)Session["usuario"];
            LnkUser.Text = usuario.nombre + " (" + usuario.Rol.nombreRol + ")";
        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            LbMensaje.Text = "Enviado";
        }
    }
}