using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_MasterEmpresa : System.Web.UI.MasterPage
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

    protected void bt_hoja_Click(object sender, EventArgs e)
    {
        //Consulta para saber si la hoja de vida esta llena
        int id = (int)Session["id"];
        DEmpresas consultaHV = new DEmpresas();
        consultaHV.VerificaHVE(id);
        DataTable consultaHVE = consultaHV.VerificaHVE(id);
        if (consultaHVE.Rows.Count > 0)
        {
            LB_HojaEmpLlena.Text = "Hoja de vida llena, si quieres modificar ve a 'MODIFICAR HOJA DE VIDA'";
            bt_hoja.Visible = false;
        }
        else
        {
            bt_hoja.Visible = true;
            Response.Redirect("HojaEmpresa.aspx");
        }
    }

    protected void bt_aspirantes_Click(object sender, EventArgs e)
    {
        Response.Redirect("VerAspirantes.aspx");
    }



    

    

    protected void bt_miperfile_Click(object sender, EventArgs e)
    {
        Response.Redirect("MiPerfilEmpresa.aspx");
    }

    protected void bt_oferta_Click(object sender, EventArgs e)
    {
        Response.Redirect("PublicarOferta.aspx");

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("VerAspirantes.aspx");
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

    protected void bt_modificar_emp_Click(object sender, EventArgs e)
    {
        Response.Redirect("Modificar_H_Empresa.aspx");
    }
}
