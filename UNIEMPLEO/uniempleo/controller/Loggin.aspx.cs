using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class views_Loggin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void bt_ingresar_Click(object sender, EventArgs e)
    {
        DUser datos = new DUser();
        Euser usuario = new Euser();
        usuario.UserName = tb_usuario.Text;
        usuario.Clave = tb_clave.Text;
        DataTable usuarios = datos.Login(usuario);
        

        if (usuarios.Rows.Count > 0)

        {
            if (int.Parse(usuarios.Rows[0]["estado"].ToString()) == 1)
            {

                if (int.Parse(usuarios.Rows[0]["id_registro"].ToString()) > 0)
                {
                    Session["id"] = Int32.Parse(usuarios.Rows[0]["id_registro"].ToString());
                    Session["nombre"] = usuarios.Rows[0]["usuario"].ToString();
                    Session["rol"] = Int32.Parse(usuarios.Rows[0]["id_rol"].ToString());
                    Session["estado"] = usuarios.Rows[0]["estado"].ToString();
                    Int32 rol = Int32.Parse(usuarios.Rows[0]["id_rol"].ToString());
                    Euser datauser = new Euser();

                    MAC datosConexion = new MAC();
                    String ipAdress = datosConexion.ip();
                    String mac = datosConexion.mac();

                    datauser.Id = Int32.Parse(usuarios.Rows[0]["id_rol"].ToString());
                    datauser.Ip = ipAdress;
                    datauser.Mac = mac;
                    datauser.Sesion1 = Session.SessionID;

                    datos.GuardarSesion(datauser);
                    if (rol == 1)
                    {

                        Response.Redirect("VerAspirantes.aspx");
                    }


                    if (rol == 2)
                    {

                        Response.Redirect("VerOfertas.aspx");
                    }


                    if (rol == 3)
                    {

                        Response.Redirect("PrincipalAdmi.aspx");
                    }



                }

            }
            else {
                L_error_sus.Text = " Usuario Suspendido ";



            }
        }


        else
        {
                
                L_Error.Text = "Usuario o clave incorrectos";
       
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("GenerarToquen.aspx");
    }
}
