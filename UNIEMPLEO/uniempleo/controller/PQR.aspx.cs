using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utilitarios;
using Logica;

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
        UPrincipal envio    = new UPrincipal();
        LPrincipal enviar = new LPrincipal();

        envio = enviar.EnviarPqr(tb_nombre.Text.ToString(), tb_correo.Text.ToString(), tb_asunto.Text.ToString());



        Response.Redirect(envio.Url);
    }
}