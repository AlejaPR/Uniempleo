using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_RegistroAdmi_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void bt_agregar_Click(object sender, EventArgs e)
    {
        DEmpresas empresa = new DEmpresas();
        EEmpresas emp = new EEmpresas();
        emp.Correo = tb_correo.Text;
        emp.Usuario = tb_usuario.Text;
        emp.Clave = tb_clave.Text;
        emp.Rol = int.Parse(DDL_rol.SelectedValue.ToString());
        empresa.registroEmpresa(emp);
        Response.Redirect("PrincipalAdmi.aspx");
    }
}