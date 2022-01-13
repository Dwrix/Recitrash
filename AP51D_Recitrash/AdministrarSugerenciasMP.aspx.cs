
using Reciclaje.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reciclaje.WebForms
{
    public partial class AdministrarSugerenciasMP : System.Web.UI.Page
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
            if (usuario.Rol.idRol == 1)
            {
                Response.Redirect("AdministrarSugerenciasMP.aspx");
            }
            else
            {
                Session["error"] = "Privilegios insuficientes";
                Response.Redirect("loginMP.aspx");
            }
        }
    }
}