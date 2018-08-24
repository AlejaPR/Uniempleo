using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_OfertaIndividual : System.Web.UI.Page
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
        Eofertas oferta = new Eofertas();
        Dofertas ofertacompleta = new Dofertas();
        oferta.Idoferta = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
        DataTable datos = ofertacompleta.obtenerOferta(oferta);
        DL_oferta.DataSource = datos;
        DL_oferta.DataBind();

    }



    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Eofertas validar = new Eofertas();
        Dofertas validarsoli = new Dofertas();
        validar.Idprueba = (int)Session["id"];
        DataTable validate = validarsoli.ValidarAgendame(validar);
        int idp = (int)Session["id"];
        Eofertas oferta = new Eofertas();
        Dofertas mensaje = new Dofertas();
        if (validate.Rows.Count > 0)
        {
            LB_ErrorAgendaAsp.Text = "Ya has solicitado una cita, no puedes enviar la solicitud de nuevo";
            
        }
        else
        {
            oferta.Mensaje = "Quiero agendar una cita";
            oferta.Idaspirante = (int)Session["id"];
            oferta.Idoferta = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
            oferta.Fechasolicitud = DateTime.Now;
            oferta.Sesion = Session.SessionID;
            mensaje.Mensaje(oferta);
            Page.Response.Write("<script language='JavaScript'>window.alert('Tu mensaje ha sido enviado, en unos dias la empresa te contactará ');</script>");
            //Response.Redirect("VerOfertas.aspx");
        }


        //Response.Redirect("OfertaIndividual.aspx");

    }

    
}