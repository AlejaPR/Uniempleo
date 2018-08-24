using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_TipoEmpleo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null)
        {
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        }
        int id = (int)Session["id"];
    }

    protected void BTN_agrega_Click(object sender, EventArgs e)
    {
        DIDatos tipoE = new DIDatos();
        EDatos tipo = new EDatos();
        tipo.Idregistro = (int)Session["id"];
        tipo.TerminoE = (RBL_termino.SelectedItem).ToString();
        tipo.HorarioE = (DDL_horario.SelectedItem).ToString();
        tipo.TiempoE = (RBL_tiempo.SelectedItem).ToString();
        tipo.Session = Session.SessionID;
        tipo.Hoja = cargarHoja();
        tipoE.TipoE(tipo);
        Response.Redirect("VerOfertas.aspx");

    }
    protected String cargarHoja()
    {
        ClientScriptManager cd = this.ClientScript;
        String nombreArchivo = System.IO.Path.GetFileName(Fu_hoja.PostedFile.FileName);
        String extension = System.IO.Path.GetExtension(Fu_hoja.PostedFile.FileName);
        String saveLocation = "";

        if (!(string.Compare(extension, ".doc", true) == 0 || string.Compare(extension, ".docx", true) == 0 || string.Compare(extension, ".pdf", true) == 0))
        {
            cd.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Solo se admiten documentos .doc .docx .pdf');</script>");
            return null;
        }


        saveLocation = Server.MapPath("~\\Hojas") + "\\" + nombreArchivo;

        Fu_hoja.PostedFile.SaveAs(saveLocation);
        cd.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El archivo ha sido cargado');</script>");

        return "~\\Hojas" + "\\" + nombreArchivo;
    }
}