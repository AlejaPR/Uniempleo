using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class view_VerAspirantes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null)
        {
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        }
        int idp = (int)Session["id"];
        Eofertas mensaje = new Eofertas();
        DAspirantes mostrarmensajes = new DAspirantes();
         mensaje.Idempresa = (int)Session["id"];
        DataTable mensajes = mostrarmensajes.MostrarMensajes(mensaje);
        DL_mensajes.DataSource = mensajes;
        DL_mensajes.DataBind();
        //Envia id para las citas pendientes del aspirante
        DAspirantes miscitas = new DAspirantes();
        miscitas.VerMisCitasAsp(idp);
    }

    protected void IBAspirante_Click(object sender, ImageClickEventArgs e)
    {
        Dofertas busqueda = new Dofertas();
        DataTable busquedaAspirante = busqueda.BuscarAspirantes(TB_BuscaAspirante.Text.ToString());
        if (busquedaAspirante.Rows.Count > 0)
        {
            DL_a.DataSource = busquedaAspirante;
            DL_a.DataBind();
            L_ErrorBuscarAspirante.Visible = false;
        }
        else
        {
            L_ErrorBuscarAspirante.Visible = true;
            L_ErrorBuscarAspirante.Text = "¡Ops! no hemos encontrado una oferta similar a '" + TB_BuscaAspirante.Text + "', prueba quizá con otras palabras";
        }
    }
    protected void DL_mensajes_itemComand(object source, DataListCommandEventArgs ex)
    {
        if (ex.CommandName == "ver mas")
        {
            String id = ex.CommandArgument.ToString();
            Response.Redirect("AspiranteCompleto.aspx?id=" + id);
        }
    }
    protected void DL_a_itemComand(object source, DataListCommandEventArgs ex)
    {
        if (ex.CommandName == "ver mas")
        {
            String id = ex.CommandArgument.ToString();
            Response.Redirect("AspiranteCompleto.aspx?id=" + id);
        }
    }
}