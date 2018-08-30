using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utilitarios;
using Logica;

public partial class views_GenerarToquen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void bt_recuperar_Click(object sender, EventArgs e)
    {
        URecuperarClave recuperarContra = new URecuperarClave();
        LRecuperarClave generaRecuperar = new LRecuperarClave();

        recuperarContra = generaRecuperar.GenerarToken(tb_usuario.Text);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        URecuperarClave atras = new URecuperarClave();
        atras.Url = "Loggin.aspx";
        Response.Redirect(atras.Url);
    }
}