using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_GenerarCita : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null || (int)Session["rol"] !=1)
        {
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        }

        Ecitas cita = new Ecitas();
        Dcitas citar = new Dcitas();
        cita.Idempresa = (int)Session["id"];
        DataTable holo = citar.Ofertas_Cita(cita);

        DDL_OfertaCita.DataSource = holo;
        DDL_OfertaCita.DataBind();
    }

    protected void BT_CitarAsp_Click(object sender, EventArgs e)
    {
        String control = DateTime.Now.ToString("dd/MM/yyyy");
        if (DateTime.Parse(TB_FechaCita.Text) < DateTime.Parse(control))
        {
            LB_ErrorFechaCita.Text = "La fecha no puede ser anterior a la actual";
        }
        else
        {
            Dcitas DatosCita = new Dcitas();
            Ecitas EncapCita = new Ecitas();
            EncapCita.Idempresa = (int)Session["id"];
            EncapCita.Idaspirante = Int32.Parse(Convert.ToString(Request.QueryString["valor"]));
            EncapCita.Lugar = TB_LugarCita.Text;
            EncapCita.Fecha1 = DateTime.Parse(TB_FechaCita.Text);
            EncapCita.Hora1 = TimeSpan.Parse(TB_Hora.Text);
            EncapCita.Descripcion = TB_Requisitos.Text;
            EncapCita.Sesion = Session.SessionID;
            DatosCita.GenerarCitas(EncapCita);
            Page.Response.Write("<script language='JavaScript'>window.alert(' La persona ha sido citada para la entrevista de trabajo ');</script>");
            Response.Redirect("VerAspirantes.aspx");
        }

    }

    protected void DDL_OfertaCita_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}