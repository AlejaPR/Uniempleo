using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_MasterAdministrador : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null)
        {
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        }

        DUser user = new DUser();
        Euser datos = new Euser();
        datos.Sesion1 = Session.SessionID;
        user.cerrarSesion(datos);
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null)
        {
            Response.Redirect("Loggin.aspx");
        }

    }

    protected void bt_ver_asp_Click(object sender, EventArgs e)
    {
        Response.Redirect("Aspirantes.aspx");
    }

    protected void bt_ver_emp_Click(object sender, EventArgs e)
    {
        Response.Redirect("Empresas.aspx");
    }









    protected void bt_ver_asp_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Aspirantes.aspx");
    }

    protected void bt_admi_Click(object sender, EventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }

    protected void bt_reportes_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportesPrincipal.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PrincipalAdmi.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["id"] = null;
        Session["nombre"] = null;
        Session["rol"] = null;
        //Session.Clear();
        //Session.RemoveAll();
        //Session.Abandon();
        Response.Cache.SetNoStore();
        Response.Redirect("Loggin.aspx");
    }
}
