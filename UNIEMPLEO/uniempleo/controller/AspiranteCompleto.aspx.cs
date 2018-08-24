using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_AspiranteCompleto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        int idp = (int)Session["id"];
        EAspirantes aspirante = new EAspirantes();
        DAspirantes aspirantecompleto = new DAspirantes();
        aspirante.IdAspirante = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
        DataTable datosp = aspirantecompleto.AspiranteCompletoDatos(aspirante);
        DL_datosp.DataSource = datosp;
        DL_datosp.DataBind();

        
        DataTable datosh = aspirantecompleto.ObternerHoja(aspirante);
        
        DL_hoja.DataSource = datosh;
        DL_hoja.DataBind();

        Eperfil perfilcompleto = new Eperfil();
        Dperfil perfil = new Dperfil();
        perfilcompleto.Idasp = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
        perfilcompleto.Estado = 2;
        DataTable perfilgp = perfil.obtenerPuntos(perfilcompleto);
        GV_puntos.DataSource = perfilgp;
        GV_puntos.DataBind();
        DataTable perfilgc = perfil.obtenerComentariosAsp(perfilcompleto);
        GV_comentarios.DataSource = perfilgc;
        GV_comentarios.DataBind();
        //Pinta suma de puntos
        Eperfil perf = new Eperfil();
        Dperfil perfile = new Dperfil();
        perf.Idasp = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
        DataTable pinta = perfile.ObtienePuntosTotalesA(perf);
        DL_SumaPuntosAsp.DataSource = pinta;
        DL_SumaPuntosAsp.DataBind();

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int idasp = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
        int idemp = (int)Session["id"];
        Elaboral validate = new Elaboral();
        Dcomentarios vali = new Dcomentarios();
        validate.Idvalida = idasp;
        validate.IdvalidaEm = idemp;
        validate.Estado = 2;
        DataTable validar = vali.ValidaPuntos(validate);
        if (validar.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 10;
            Elaboral llevapuntaje = new Elaboral();
            Session["aspirante"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
            llevapuntaje.Estado = 2;
            llevapuntaje.Idempresa = int.Parse(Session["id"].ToString());
            puntua.PuntuaAspirante(llevapuntaje);
        }

        
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        int idasp = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
        int idemp = (int)Session["id"];
        Elaboral validate = new Elaboral();
        Dcomentarios vali = new Dcomentarios();
        validate.Idvalida = idasp;
        validate.IdvalidaEm = idemp;
        validate.Estado = 2;
        DataTable validar = vali.ValidaPuntos(validate);
        if (validar.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 20;
            Elaboral llevapuntaje = new Elaboral();
            Session["aspirante"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
            llevapuntaje.Estado = 2;
            llevapuntaje.Idempresa = int.Parse(Session["id"].ToString());
            puntua.PuntuaAspirante(llevapuntaje);
        }
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        int idasp = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
        int idemp = (int)Session["id"];
        Elaboral validate = new Elaboral();
        Dcomentarios vali = new Dcomentarios();
        validate.Idvalida = idasp;
        validate.IdvalidaEm = idemp;
        validate.Estado = 2;
        DataTable validar = vali.ValidaPuntos(validate);
        if (validar.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 30;
            Elaboral llevapuntaje = new Elaboral();
            Session["aspirante"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
            llevapuntaje.Estado = 2;
            llevapuntaje.Idempresa = int.Parse(Session["id"].ToString());
            puntua.PuntuaAspirante(llevapuntaje);
        }
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        int idasp = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
        int idemp = (int)Session["id"];
        Elaboral validate = new Elaboral();
        Dcomentarios vali = new Dcomentarios();
        validate.Idvalida = idasp;
        validate.IdvalidaEm = idemp;
        validate.Estado = 2;
        DataTable validar = vali.ValidaPuntos(validate);
        if (validar.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 40;
            Elaboral llevapuntaje = new Elaboral();
            Session["aspirante"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
            llevapuntaje.Estado = 2;
            llevapuntaje.Idempresa = int.Parse(Session["id"].ToString());
            puntua.PuntuaAspirante(llevapuntaje);
        }
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        int idasp = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
        int idemp = (int)Session["id"];
        Elaboral validate = new Elaboral();
        Dcomentarios vali = new Dcomentarios();
        validate.Idvalida = idasp;
        validate.IdvalidaEm = idemp;
        validate.Estado = 2;
        DataTable validar = vali.ValidaPuntos(validate);
        if (validar.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 50;
            Elaboral llevapuntaje = new Elaboral();
            Session["aspirante"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
            llevapuntaje.Estado = 2;
            llevapuntaje.Idempresa = int.Parse(Session["id"].ToString());
            puntua.PuntuaAspirante(llevapuntaje);
        }
    }

    protected void bt_comentar_Click(object sender, EventArgs e)
    {
        Dcomentarios comentarAspirante = new Dcomentarios();
        Ecomentarios Caspirante = new Ecomentarios();
        Caspirante.Comentario = TB_comentar_Asp.Text;
        Caspirante.Fechacomentario = DateTime.Now;
        Caspirante.Idaspirante = Int32.Parse(Convert.ToString(Request.QueryString["id"]));
        Caspirante.Idempresa = (int)Session["id"];
        Caspirante.Sesion = Session.SessionID;
        comentarAspirante.Comentar_Asp(Caspirante);
        Response.Redirect("VerAspirantes.aspx");
    }





    protected void DL_hoja_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("citar"))
        {
            String ida = e.CommandArgument.ToString();
            Response.Redirect("GenerarCita.aspx?valor=" + ida);
        }
    }



    protected void DL_datosp_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}