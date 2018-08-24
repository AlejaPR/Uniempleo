using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Aspirantes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GV_lista_aspirantes_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void bt_agregar_asp_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegistroAdmi.aspx");
    }

    protected void bt_suspender_Click(object sender, EventArgs e)
    {
        Response.Redirect("SuspenderAspi.aspx");
    }
}