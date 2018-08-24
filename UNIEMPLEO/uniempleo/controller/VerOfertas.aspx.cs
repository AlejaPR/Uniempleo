using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class view_VerOfertas : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null || (int)Session["rol"] != 2)
        {
            Session["id"] = null;
            Session["nombre"] = null;
            Session["rol"] = null;
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        }
    }


    protected void TB_BuscaOferta_TextChanged(object sender, EventArgs e)
    {

    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        Dofertas busqueda = new Dofertas();
        DataTable busquedaOferta = busqueda.BuscarOfertas(TB_BuscaOferta.Text.ToString());
        if (busquedaOferta.Rows.Count > 0)
        {
            DL_Ofertas.DataSource = busquedaOferta;
            DL_Ofertas.DataBind();
            L_ErrorBuscarOferta.Visible = false;
        }
        else
        {
            L_ErrorBuscarOferta.Visible = true;
            L_ErrorBuscarOferta.Text = "¡Ops! no hemos encontrado una oferta similar a '" + TB_BuscaOferta.Text + "', prueba quizá con otras palabras";
        }
        
        
    }




    protected void DL_ofertas_itemComand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ver mas")
        {
            String id = e.CommandArgument.ToString();
            Response.Redirect("OfertaIndividual.aspx?valor=" + id);
        }
        if (e.CommandName == "ver empresa")
        {
            String idEm = e.CommandArgument.ToString();
            Response.Redirect("PerfilEmpresa.aspx?valor=" + idEm);
        }
    }
    


}