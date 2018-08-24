using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_PerfilEmpresa : System.Web.UI.Page
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

        int idp = (int)Session["id"];
        EDatos empresa = new EDatos();
        Dofertas empresacompleta = new Dofertas();
        empresa.Idempresa = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
        DataTable datos = empresacompleta.obtenerEmpresa(empresa);
        DL_datose.DataSource = datos;
        DL_datose.DataBind();

        EEmpresas perfile = new EEmpresas();
        perfile.IdEmpresa1 = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
        DEmpresas perfilcompletoe = new DEmpresas();
        DataTable perfilge = perfilcompletoe.obtenerPuntosE(perfile);
        GV_puntos.DataSource = perfilge;
        GV_puntos.DataBind();
        DataTable perfilgce = perfilcompletoe.obtenerComentariosE(perfile);
        GV_comentarios.DataSource = perfilgce;
        GV_comentarios.DataBind();



    }

   
    

    protected void bt_comentar_Click(object sender, EventArgs e)
    {
        Dcomentarios comentarEmpresa = new Dcomentarios();
        Ecomentarios Cempresa = new Ecomentarios();
        Cempresa.Comentario = TB_Comentar_Emp.Text;
        Cempresa.Fechacomentario = DateTime.Now;
        Cempresa.Idaspirante = (int)Session["id"];
        Cempresa.Idempresa = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
        Cempresa.Sesion = Session.SessionID;
        comentarEmpresa.Comentar_Emp(Cempresa);
        Page.Response.Write("<script language='JavaScript'>window.alert(' Tu comentario ha sido enviado! ');</script>");
        Response.Redirect("VerOfertas.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int idemp = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
        int idasp = (int)Session["id"];
        Dcomentarios validarpuntos = new Dcomentarios();
        Elaboral valida = new Elaboral();
        valida.Idvalida = idasp;
        valida.IdvalidaEm = idemp;
        valida.Estado = 1;
        DataTable validate = validarpuntos.ValidaPuntosE(valida);
        if (validate.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 10;
            Elaboral llevapuntaje = new Elaboral();
            Session["oferta"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = int.Parse(Session["id"].ToString());
            llevapuntaje.Estado = 1;
            llevapuntaje.Idempresa = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
            puntua.Puntua(llevapuntaje);
            Page.Response.Write("<script language='JavaScript'>window.alert('Tu punto ha sido enviado ');</script>");
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        int idemp = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
        int idasp = (int)Session["id"];
        Dcomentarios validarpuntos = new Dcomentarios();
        Elaboral valida = new Elaboral();
        valida.Idvalida = idasp;
        valida.IdvalidaEm = idemp;
        valida.Estado = 1;
        DataTable validate = validarpuntos.ValidaPuntosE(valida);
        if (validate.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 20;
            Elaboral llevapuntaje = new Elaboral();
            Session["oferta"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = int.Parse(Session["id"].ToString());
            llevapuntaje.Estado = 1;
            llevapuntaje.Idempresa = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
            puntua.Puntua(llevapuntaje);
            Page.Response.Write("<script language='JavaScript'>window.alert('Tu punto ha sido enviado ');</script>");
        }

    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        int idemp = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
        int idasp = (int)Session["id"];
        Dcomentarios validarpuntos = new Dcomentarios();
        Elaboral valida = new Elaboral();
        valida.Idvalida = idasp;
        valida.IdvalidaEm = idemp;
        valida.Estado = 1;
        DataTable validate = validarpuntos.ValidaPuntosE(valida);
        if (validate.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 30;
            Elaboral llevapuntaje = new Elaboral();
            Session["oferta"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = int.Parse(Session["id"].ToString());
            llevapuntaje.Estado = 1;
            llevapuntaje.Idempresa = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
            puntua.Puntua(llevapuntaje);
            Page.Response.Write("<script language='JavaScript'>window.alert('Tu punto ha sido enviado ');</script>");
        }
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        int idemp = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
        int idasp = (int)Session["id"];
        Dcomentarios validarpuntos = new Dcomentarios();
        Elaboral valida = new Elaboral();
        valida.Idvalida = idasp;
        valida.IdvalidaEm = idemp;
        valida.Estado = 1;
        DataTable validate = validarpuntos.ValidaPuntosE(valida);
        if (validate.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 40;
            Elaboral llevapuntaje = new Elaboral();
            Session["oferta"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = int.Parse(Session["id"].ToString());
            llevapuntaje.Estado = 1;
            llevapuntaje.Idempresa = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
            puntua.Puntua(llevapuntaje);
            Page.Response.Write("<script language='JavaScript'>window.alert('Tu punto ha sido enviado ');</script>");
        }
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        int idemp = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
        int idasp = (int)Session["id"];
        Dcomentarios validarpuntos = new Dcomentarios();
        Elaboral valida = new Elaboral();
        valida.Idvalida = idasp;
        valida.IdvalidaEm = idemp;
        valida.Estado = 1;
        DataTable validate = validarpuntos.ValidaPuntosE(valida);
        if (validate.Rows.Count > 0)
        {
            Page.Response.Write("<script language='JavaScript'>window.alert(' Ya has puntuado este usuario no puedes volver a puntuar! ');</script>");
        }
        else
        {
            int punto = 50;
            Elaboral llevapuntaje = new Elaboral();
            Session["oferta"] = llevapuntaje;
            Dcomentarios puntua = new Dcomentarios();
            llevapuntaje.Puntaje = punto;
            llevapuntaje.Idusuario = int.Parse(Session["id"].ToString());
            llevapuntaje.Estado = 1;
            llevapuntaje.Idempresa = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
            puntua.Puntua(llevapuntaje);
            Page.Response.Write("<script language='JavaScript'>window.alert('Tu punto ha sido enviado ');</script>");
        }
    }

    
}