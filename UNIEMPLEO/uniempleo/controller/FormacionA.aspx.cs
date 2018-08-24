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

        Int32 idp = (int)Session["id"];
    }
    protected void BTN_guarda_Click(object sender, EventArgs e)
    {
        String control = DateTime.Now.ToString("dd/MM/yyyy");
        if (DateTime.Parse(TB_fecha.Text) > DateTime.Parse(control))
        {
            L_CalendarioError.Text = "Ops! no es posible seleccionar una fecha superior a la actual";
        }
        else
        {
            EDatos EFormA = new EDatos();
            DIDatos experiencia = new DIDatos();
            EFormA.Titulo = TB_titulo.Text;
            EFormA.LugarG = TB_lugar.Text;
            EFormA.FechaG = TB_fecha.Text;
            EFormA.TelefonoG = TB_telefono.Text;
            EFormA.Certificacion = cargar();
            EFormA.Habilidad1 = TB_Hab1.Text;
            EFormA.Habilidad2 = TB_Hab2.Text;
            EFormA.Habilidad3 = TB_Hab3.Text;
            EFormA.Idregistro = (int)Session["id"];


            experiencia.FormacionA(EFormA);
            Response.Redirect("FormacionA.aspx");
        }
    }

   
    protected String cargar()
    {
        ClientScriptManager cd = this.ClientScript;
        String nombreArchivo = System.IO.Path.GetFileName(FU_certificado.PostedFile.FileName);
        String extension = System.IO.Path.GetExtension(FU_certificado.PostedFile.FileName);
        String saveLocation = "";

        if (!(string.Compare(extension, ".doc", true) == 0 || string.Compare(extension, ".docx", true) == 0 || string.Compare(extension, ".pdf", true) == 0))
        {
            cd.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Solo se admiten documentos .doc .docx .pdf');</script>");
            return null;
        }
        saveLocation = Server.MapPath("~\\CertificacionesA") + "\\" + nombreArchivo;

        FU_certificado.PostedFile.SaveAs(saveLocation);
        cd.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El archivo ha sido cargado');</script>");

        return "~\\CertificacionesA" + "\\" + nombreArchivo;
    }







    protected void BT_omiteFormacionA_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExperienciaL.aspx");
    }
}