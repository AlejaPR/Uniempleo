using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_hvaspirante1 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null || Session["nombre"] == null || Session["rol"] == null || (int)Session["rol"] !=2)
        {
            Session["id"] = null;
            Session["nombre"] = null;
            Session["rol"] = null;
            Response.Redirect("Loggin.aspx");
            Response.Cache.SetNoStore();
        } 
    }

    protected void TB_Listo_Click(object sender, EventArgs e)
    {
        String control = DateTime.Now.ToString("dd/MM/yyyy");
        if (DateTime.Parse(C_FechanacimientoA.Text) > DateTime.Parse(control))
        {
           L_ErrorCalendario.Text = "No puede seleeccionar una fecha anterior";
        }
        else
        {
            DIDatos registro1 = new DIDatos();
            Euser enviarR1 = new Euser();
            enviarR1.Id = (int)Session["id"];
            enviarR1.Nombre = tb_nombre.Text;
            enviarR1.Apellido = tb_apellido.Text;
            enviarR1.Nacimiento = DateTime.Parse(C_FechanacimientoA.Text);
            enviarR1.Direccion = TB_Direccion.Text;
            enviarR1.Celular = TB_Celular.Text;
            enviarR1.Documento = TB_Documento.Text;
            enviarR1.Sexo = (DDL_Sexo.SelectedItem).ToString();
            enviarR1.Estadocivil = (RBL_Estado.SelectedItem).ToString();
            enviarR1.Foto = cargarimagen();
            enviarR1.Sesion1 = Session.SessionID;
            enviarR1.Estado = 1;
            registro1.RegistraAspirante(enviarR1);
            
          
            Response.Redirect("FormacionA.aspx");

        }
            


    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
    }

    protected void C_fechanacimiento_SelectionChanged(object sender, EventArgs e)
    {
    }
    protected String cargarimagen()
    {
        ClientScriptManager cd = this.ClientScript;
        String nombreArchivo = System.IO.Path.GetFileName(FU_Foto.PostedFile.FileName);
        String extension = System.IO.Path.GetExtension(FU_Foto.PostedFile.FileName);
        String saveLocation = "";

        if (!(string.Compare(extension, ".jpeg", true) == 0 || string.Compare(extension, ".jpg", true) == 0 || string.Compare(extension, ".gif", true) == 0 || string.Compare(extension, ".png", true) == 0))
        {
            cd.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Solo se admiten imágenes con extensión .jpeg, .jpg, .gif, .png');</script>");
            return null;
        }


        saveLocation = Server.MapPath("~\\fotos_usuarios") + "\\" + nombreArchivo;


        FU_Foto.PostedFile.SaveAs(saveLocation);
        cd.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El archivo de imagen ha sido cargado');</script>");

        return "~\\fotos_usuarios" + "\\" + nombreArchivo;
    }

    
}