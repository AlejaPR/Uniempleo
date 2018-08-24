using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_PublicarOferta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null)
        {
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        }
    }

    protected void bt_publicar_Click(object sender, EventArgs e)
    {
        String control = DateTime.Now.ToString("dd/MM/yyyy");
        if (DateTime.Parse(tb_fecha.Text) > DateTime.Parse(control))
        {
            L_ErrorContrato.Text = "No puede seleeccionar una fecha anterior";
        }
        else
        {
            EEmpresas publicacion = new EEmpresas();
            DEmpresas publica = new DEmpresas();

            publicacion.Titulo = tb_titulo.Text;
            publicacion.Horario = tb_horario.Text;
            publicacion.Salario = tb_salario.Text;
            publicacion.Fecha = tb_fecha.Text;
            publicacion.Tipo = DDL_contrato.SelectedItem.ToString();
            publicacion.Funcion = tb_funciones.Text;
            publicacion.Idempresa = (int)Session["id"];
            publicacion.Sesion = Session.SessionID;
            publica.Publicar(publicacion);
            Response.Redirect("VerAspirantes.aspx");
        }
    }
}