using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class views_Principal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    

    protected void bt_registro_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registro.aspx");
    }

    protected void Btn_inicioS_Click(object sender, EventArgs e)
    {
        Response.Redirect("Loggin.aspx");
    }
}