using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class views_Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    


    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        //Consulta para saber si la hoja de vida esta llena
        String Correo = TB_correo.Text;
        String Usuario = TB_usuario.Text;
        DUser consultaR = new DUser();
        consultaR.VerificaR(Correo);
        DataTable consultaReg = consultaR.VerificaR(Correo);
        DUser consultaU = new DUser();
        consultaU.VerificaU(Usuario);
        DataTable consultaRegU = consultaU.VerificaU(Usuario);
        if (consultaReg.Rows.Count > 0 || consultaRegU.Rows.Count > 0)
        {
            L_registro.Text = "Correo o usuario registrados";
           // btn_registrar.Visible = false;
        }
        else
        {
            EDatos EReg = new EDatos();
            DIDatos registrar = new DIDatos();

            EReg.Correo = TB_correo.Text;
            EReg.Usuario = TB_usuario.Text;
            EReg.Clave = TB_clave.Text;
            EReg.Rol = int.Parse(DDL_rol.SelectedValue.ToString());

            registrar.Registro(EReg);
            

        }
            Response.Write("<script>alert('¡Registro exitoso!');</script>");
            Response.Write("<script language='JavaScript'>window.alert('Registro exitoso');</script>");
            Response.Redirect("Loggin.aspx");
    }
}