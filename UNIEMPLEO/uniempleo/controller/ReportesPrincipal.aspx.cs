using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_ReportesPrincipal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_aspirantes_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReporteAspirantes.aspx");
    }

    protected void bt_rep_empresa_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReporteEmpresa.aspx");
    }

    protected void bt_Ofertas_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReporteOfertas.aspx");
    }
}