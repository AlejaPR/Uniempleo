using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_ExperienciaL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null || (int)Session["rol"] != 2)
        {
            Session["id"] = null;
            Session["nombre"] = null;
            Session["rol"] = null;
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        }

        int idp = (int)Session["id"];
    }


    

    protected void bt_agregar_Click(object sender, EventArgs e)
    {
        if (DateTime.Parse(tb_inicio.Text) > DateTime.Parse(tb_fin.Text))
        {
            LB_ErrorFechasAsp.Text = "La fecha de inicio de contrato debe ser inferior a la fecha de finalización e este";
        }
        else
        {
            Elaboral ELab = new Elaboral();
            DExpLab dExpLab = new DExpLab();
            ELab.Id_registro = (int)Session["id"];
            ELab.NombreEmp = tb_nomemp.Text;
            ELab.Cargo = tb_cargo.Text;
            ELab.Jefe = tb_jefe.Text;
            ELab.Telefono = tb_telefonoE.Text;
            ELab.Funcionesd = tb_funcion.Text;
            ELab.Inicio = DateTime.Parse(tb_inicio.Text);
            ELab.Fin = DateTime.Parse(tb_fin.Text);


            dExpLab.Elaboral(ELab);
            Response.Redirect("ExperienciaL.aspx");
        }
    }



    protected void BT_omitirExperienciaL_Click(object sender, EventArgs e)
    {
        Response.Redirect("TipoEmpleo.aspx");
    }
}