using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utilitarios;
using Logica;

public partial class view_hvaspirante1 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        int idUsuario = int.Parse(Session["id"].ToString());
        String nombreUser = Session["nombre"].ToString();
        int idRol = int.Parse(Session["rol"].ToString());

        UAspirante validaLink = new UAspirante();
        LAspirante llevaValidacion = new LAspirante();
        validaLink.IdUser = idUsuario;
        validaLink.UserName = nombreUser;
        validaLink.RolId = idRol;
        validaLink = llevaValidacion.ValidacionUrl(validaLink);

        Session["id"] = validaLink.IdUser;
        Session["nombre"] = validaLink.UserName;
        Session["rol"] = validaLink.RolId;

        ScriptManager.RegisterStartupScript(this, typeof(Page), "invocarfuncion", validaLink.Url, false);
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message", validaLink.Url);
        Response.Cache.SetNoStore();
    }

    protected void TB_Listo_Click(object sender, EventArgs e)
    {
        String control = DateTime.Now.ToString("dd/MM/yyyy");
        UAspirante controla = new UAspirante();
        LAspirante llevaHora = new LAspirante();
        controla.ControlTime = DateTime.Parse(control);
        controla.FechaNacimiento = DateTime.Parse(C_FechanacimientoA.Text);

        

        controla.IdUser = (int)Session["id"];
        controla.Nombre = tb_nombre.Text;
        controla.Apellido = tb_apellido.Text;
        controla.FechaNacimiento = DateTime.Parse(C_FechanacimientoA.Text);
        controla.Direccion = TB_Direccion.Text;
        controla.Celular = int.Parse(TB_Celular.Text);
        controla.Documento = int.Parse(TB_Documento.Text);
        controla.Sexo = (DDL_Sexo.SelectedItem).ToString();
        controla.Estadocivil = (RBL_Estado.SelectedItem).ToString();
        controla.Foto = cargarimagen();
        controla.Sesion = Session.SessionID;
        controla.Estado = 1;
        controla = llevaHora.ValidacionHora(controla);

        L_ErrorCalendario.Text = controla.Mensaje;
        Response.Redirect(controla.Url);
        ScriptManager.RegisterStartupScript(this, typeof(Page), "invocarfuncion", controla.Url2, false);
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message", controla.Url2);
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
        //cd.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El archivo de imagen ha sido cargado');</script>");

        return "~\\fotos_usuarios" + "\\" + nombreArchivo;
    }

    
}