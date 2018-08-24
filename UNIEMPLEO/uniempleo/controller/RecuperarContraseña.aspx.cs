using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class views_RecuperarContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if(Request.QueryString.Count > 0)
        {
            DUser user = new DUser();
            DataTable info = user.obtenerUsuarioToken(Request.QueryString[0]);
            if (int.Parse(info.Rows[0][0].ToString()) == -1)
                this.Page.Response.Write("<script language='JavaScript'>window.alert(' Token invalido. Genere uno nuevo ');</script>");
            else if (int.Parse(info.Rows[0][0].ToString()) == -2)
                    this.Page.Response.Write("<script language='JavaScript'>window.alert(' La fecha de vigencia termino por favor solicite otro token ');</script>");
                else
                    Session["id"] = int.Parse(info.Rows[0][0].ToString());
            }
        else
        {
            Response.Redirect("Loggin.aspx");
        }
        //DataTable info = user.obtenerUsuarioToken();
        //Session["user_id"] = int.Parse(info.Rows[0][0].ToString());
    }

    protected void bt_cambiar_Click(object sender, EventArgs e)
    {
        
        DUser renueva = new DUser();
        Euser cambiarclave = new Euser();
        cambiarclave.Id = int.Parse(Session["id"].ToString());
        cambiarclave.CambiaC = tb_clave1.Text;

        renueva.CambiarClave(cambiarclave);
        Page.Response.Write("<script language='JavaScript'>window.alert(' Su contraseña ha sido renovada por favor inicie sesión ! ');</script>");
        Response.Redirect("Loggin.aspx");
    }
}