using Reciclaje.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reciclaje.WebForms
{
    public partial class RegistroMP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BntEnviar_Click(object sender, EventArgs e)
        {
            LbMensaje.Text = UsuarioController.addUsuario(TxtRut.Text,TxtNombre.Text,TxtCorreo.Text,TxtContraseña.Text,2);
            Response.Redirect("loginMP.aspx");
        }
    }
}