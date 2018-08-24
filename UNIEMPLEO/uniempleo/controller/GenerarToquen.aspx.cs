using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class views_GenerarToquen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void bt_recuperar_Click(object sender, EventArgs e)
    {
        DUser dao = new DUser();
        DataTable validez = dao.ValidaUsuario(tb_usuario.Text);

        if (validez.Rows.Count > 0)
        {
            Euser token = new Euser();
            token.Id = int.Parse(validez.Rows[0]["id_registro"].ToString());
            token.UserName = validez.Rows[0]["usuario"].ToString();
            token.Correo = validez.Rows[0]["correo_usuario"].ToString();
            token.Estado = int.Parse(validez.Rows[0]["estado"].ToString());
            token.Fecha = DateTime.Now;

            String userToken = encriptar(JsonConvert.SerializeObject(token));
            //Session["id"] = token.Id;
            Correo correo = new Correo();
            String mensaje = "Ingrese aquí para cambiar su contraseña : " + "" + "http://localhost:59832/view/RecuperarContraseña.aspx?" + userToken + "          ";
            if (Int32.Parse(validez.Rows[0]["estado"].ToString()) != 2)
            {
                dao.almacenarToken(userToken, token.Id);
                correo.enviarCorreo(token.Correo, userToken, mensaje);
                Page.Response.Write("<script language='JavaScript'>window.alert(' ¡Enhorabuena!, su contraseña ha sido enviada a su correo ');</script>");
            }
            else
            {
                Page.Response.Write("<script language='JavaScript'>window.alert(' Ya hemos enviado un link de recuperación, por favor verifique su correo ');</script>");
            }
        }
        else
        {
            Page.Response.Write("<script language='JavaScript'>window.alert('Usuario no registrado en el sistema');</script>");
        }
    }
    private string encriptar(string input)
    {
        SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();

        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashedBytes = provider.ComputeHash(inputBytes);

        StringBuilder output = new StringBuilder();

        for (int i = 0; i < hashedBytes.Length; i++)
            output.Append(hashedBytes[i].ToString("x2").ToLower());

        return output.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Loggin.aspx");
    }
}