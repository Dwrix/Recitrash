
using Reciclaje.Controller;
using Reciclaje.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reciclaje.WebForms
{
    public partial class registroSugerenciaMP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                validarLogin();
                cargarDrop();
                
            }
            
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

        public void cargarDrop()
        {
            DrpTema.DataSource = from m in TemaController.getAll()
                                 select new
                                 {
                                     tipo = m.tipo,
                                     id = m.idtipo
                                 };

            DrpTema.DataValueField = "id";
            DrpTema.DataTextField = "tipo";
            DrpTema.DataBind();
        }

        protected void BtnRegistro_Click(object sender, EventArgs e)
        {
            LbMensaje.Text = SugerenciaController.addSugerencia(TxtAsunto.Text, int.Parse(DrpTema.SelectedValue), System.DateTime.Parse(TxtFecha.Text), TxtDescripcion.Text);
                                                              
            //System.Threading.Thread.Sleep(3000);
        }

        protected void LnkListado_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaSugerenciasMP.aspx");
        }

        protected void LnkUser_Click(object sender, EventArgs e)
        {

        }
    }
}