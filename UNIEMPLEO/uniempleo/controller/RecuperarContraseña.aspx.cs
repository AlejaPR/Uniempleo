using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Utilitarios;
public partial class views_RecuperarContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LRecuperarClave recibequery = new LRecuperarClave();
        URecuperarClave redireccion = new URecuperarClave();
        redireccion = recibequery.RecuperarClave(redireccion,Request.QueryString[0],Request.QueryString.Count);

        Session["id"] = redireccion.Mensaje;

        ScriptManager.RegisterStartupScript(this, typeof(Page), "invocarfuncion", redireccion.Url, false);
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message", redireccion.Url);
    }

    protected void bt_cambiar_Click(object sender, EventArgs e)
    {
        
        URecuperarClave renueva = new URecuperarClave();
        LRecuperarClave cambia = new LRecuperarClave();
        renueva.Id = int.Parse(Session["id"].ToString());
        renueva.Clave = tb_clave1.Text;

        ScriptManager.RegisterStartupScript(this, typeof(Page), "invocarfuncion", renueva.Url, false);
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message", renueva.Url);

        renueva = cambia.CambiaClave(renueva);

        
    }
}