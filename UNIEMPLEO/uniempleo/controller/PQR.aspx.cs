using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class views_prueba : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Principal.aspx");
    }

    protected void bt_enviar_Click(object sender, EventArgs e)
    {
        EDatos EPqr = new EDatos();
        DIDatos pqr = new DIDatos();
        EPqr.NombrePqr = tb_nombre.Text;
        EPqr.CorreoPqr = tb_correo.Text;
        EPqr.Asunto = tb_asunto.Text;
        

        pqr.Pqr(EPqr);
        Response.Redirect("Principal.aspx");
    }
}