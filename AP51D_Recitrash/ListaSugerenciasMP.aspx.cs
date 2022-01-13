
using Reciclaje.Controller;
using Reciclaje.Modelo;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reciclaje.WebForms
{
    public partial class ListaSugerenciasMP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargarGrid();
                
            }

            
        }

        public void cargarGrid()
        {
            GrdSugerencia.DataSource = from m in SugerenciaController.getAll()
                                       select new
                                       {
                                           idsugerencia = m.idSugerencia,
                                           Asunto = m.asunto,
                                           Tema = m.Tema,
                                           Fecha = m.fecha,
                                           Descripcion = m.descripcion
                                       };
            GrdSugerencia.DataBind();

        }

        

        protected void LnkNuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("registroSugerenciaMP.aspx");
        }

        
        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            LbMensaje2.Text = SugerenciaController.removeSugerencia(int.Parse(Lbid.Value));
            Response.Redirect("ListaSugerenciasMP.aspx");
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            
            Sugerencia sugerencia = SugerenciaController.findSugerencia(int.Parse(TxtBuscar.Text));

            if (sugerencia != null)
            {
                LbMensaje1.Text = "Encontrado";
                LbMensaje1.ForeColor = Color.Green;
                Panel1.Visible = true;

                Lbid.Value = sugerencia.idSugerencia.ToString();
                TxtAsunto.Text = sugerencia.asunto;
                LbTema.Text = sugerencia.Tema.tipo.ToString();
                Lbfecha.Text = sugerencia.fecha.ToString();
                TxtDescripcion.Text = sugerencia.descripcion;


            }
            else
            {
                LbMensaje1.Text = " No encontrado";
                LbMensaje1.ForeColor = Color.Red;
                Panel1.Visible = false;
            }
        }

        

        protected void LnkEditar_Click(object sender, EventArgs e)
        {
            LbTema.Enabled = true;
            TxtAsunto.Enabled = true;
            TxtDescripcion.Enabled = true;
            BtnEliminar.Visible = true;
            BtnModificar.Visible = true;
            

        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            LbMensaje2.Text = SugerenciaController.editSugerencia(int.Parse(Lbid.Value),TxtAsunto.Text, TxtDescripcion.Text);
            Response.Redirect("ListaSugerenciasMP.aspx");
        }

       

        
    }
}