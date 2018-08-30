using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Logica;
using Utilitarios;
public partial class views_Loggin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void bt_ingresar_Click(object sender, EventArgs e)
    {

        ULogin llevaDatos = new ULogin();
        LLogin llevaD = new LLogin();
        llevaDatos.Username1 = tb_usuario.Text;
        llevaDatos.Clave1 = tb_clave.Text;
        llevaDatos = llevaD.Logear(llevaDatos, Session.SessionID);

        Session["id"] = llevaDatos.IdRegistro;
        Session["nombre"] = llevaDatos.Nombre;
        Session["rol"] = llevaDatos.IdRol;
        Session["estado"] = llevaDatos.Estado;


        ScriptManager.RegisterStartupScript(this, typeof(Page), "invocarfuncion", llevaDatos.Script, false);
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message", llevaDatos.Script);

        L_Error.Text = llevaDatos.ErrorInicio;
        L_error_sus.Text = llevaDatos.Script;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("GenerarToquen.aspx");
    }
}
