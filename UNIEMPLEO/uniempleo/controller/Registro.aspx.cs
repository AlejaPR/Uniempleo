using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utilitarios;
using Logica;

public partial class views_Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        UPrincipal registro = new UPrincipal();
        LPrincipal registrar = new LPrincipal();

        registro = registrar.Registrar(TB_correo.Text.ToString(), TB_usuario.Text.ToString(), TB_clave.Text.ToString(), int.Parse(DDL_rol.SelectedValue.ToString()));


        
        Response.Redirect(registro.Url);


    }
}