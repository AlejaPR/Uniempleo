using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_HojaEmpresa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null)
        {
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        }
        
        


    }

    protected void BTN_agregarE_Click(object sender, EventArgs e)
    {
        String control = DateTime.Now.ToString("dd/MM/yyyy");
        if (DateTime.Parse(TB_fechaC.Text) > DateTime.Parse(control))
        {
            L_ErrorCEmpresa.Text = "No puede seleeccionar una fecha mayor a la actual";
        }
        else { 
            EDatos EHojae = new EDatos();
            DIDatos hojaEmp = new DIDatos();
        EHojae.Idempresa = (int)Session["id"];
        EHojae.NombreE = TB_nombreE.Text;
        EHojae.FormaJ = TB_formaJ.Text;
        EHojae.FechaCons = TB_fechaC.Text;
        EHojae.DireccionE = TB_direccionE.Text;
        EHojae.TelefonoE = TB_telefonoE.Text;
        EHojae.SectorE = TB_sectorE.Text;
        EHojae.NumEmpleados = TB_numEmpleado.Text;
        EHojae.Nit = TB_Nit.Text;
        EHojae.Pais = TB_paisE.Text;
        EHojae.Departamento = TB_deptoE.Text;
        EHojae.Ciudad = TB_ciudadE.Text;
        EHojae.TipoE = (DDL_TipoEmpresa.SelectedItem).ToString();
        EHojae.Pagina = TB_pagina.Text;
        EHojae.Logo = cargar();

        hojaEmp.HojaEmpresa(EHojae);
        Response.Redirect("VerAspirantes.aspx");
            }
    }

    protected String cargar()
    {
        ClientScriptManager cd = this.ClientScript;
        String nombreArchivo = System.IO.Path.GetFileName(FU_logo.PostedFile.FileName);
        String extension = System.IO.Path.GetExtension(FU_logo.PostedFile.FileName);
        String saveLocation = "";

        if (!(string.Compare(extension, ".jpeg", true) == 0 || string.Compare(extension, ".jpg", true) == 0 || string.Compare(extension, ".gif", true) == 0 || string.Compare(extension, ".png", true) == 0))
        {
            cd.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Solo se admiten documentos .doc .docx .pdf');</script>");
            return null;
        }


        saveLocation = Server.MapPath("~\\logos") + "\\" + nombreArchivo;

        FU_logo.PostedFile.SaveAs(saveLocation);
        cd.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El archivo ha sido cargado');</script>");

        return "~\\logos" + "\\" + nombreArchivo;
    }

}