using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_MiPerfilEmpresa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null)
        {
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        }
        int ide = (int)Session["id"];
        EEmpresas perfile = new EEmpresas();
        DEmpresas perfilcompletoe = new DEmpresas();
        perfile.IdEmpresa1 = int.Parse(ide.ToString());
        perfilcompletoe.EmpresaMiPerfil(perfile);
        DataTable perfilempresa = perfilcompletoe.EmpresaMiPerfil(perfile);
        DL_miperfile.DataSource = perfilempresa;
        DL_miperfile.DataBind();

        DataTable perfilge = perfilcompletoe.obtenerPuntosE(perfile);
        GV_puntos.DataSource = perfilge;
        GV_puntos.DataBind();
        DataTable perfilgce = perfilcompletoe.obtenerComentariosE(perfile);
        GV_comentarios.DataSource = perfilgce;
        GV_comentarios.DataBind();

        EEmpresas perfiloferta = new EEmpresas();
        DEmpresas perfilo = new DEmpresas();
        perfiloferta.IdEmpresa1 = (int)Session["id"]; ;
        perfilo.obtenermisOfertas(ide);
        DataTable consulta = perfilo.consultasuma(perfiloferta);
        LB_PuntosVaciosEmp.Visible = false;
        if (consulta.Rows.Count > 0)
        {
            DataTable sumita = perfilo.SumaPuntosEmp(perfiloferta);
            DL_TotalPuntosEmp.DataSource = sumita;
            DL_TotalPuntosEmp.DataBind();
        }
        else
        {
            LB_PuntosVaciosEmp.Visible = true;
            LB_PuntosVaciosEmp.Text = "0";
        }
    }
}