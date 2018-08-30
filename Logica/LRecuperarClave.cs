using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Data;
using System.Data;
using Utilitarios;
using Newtonsoft.Json;

namespace Logica
{
    public class LRecuperarClave
    {
        public URecuperarClave GenerarToken(String username)
        {
            DRecuperarClave UsuarioValido = new DRecuperarClave();
            DataTable ValidarUser = UsuarioValido.ValidaUsuario(username);
            URecuperarClave validar = new URecuperarClave();

            if (ValidarUser.Rows.Count > 0)
            {
                URecuperarClave token = new URecuperarClave();
                token.Id = int.Parse(ValidarUser.Rows[0]["id_registro"].ToString());
                token.Username = ValidarUser.Rows[0]["usuario"].ToString();
                token.Correo = ValidarUser.Rows[0]["correo_usuario"].ToString();
                token.Estado = int.Parse(ValidarUser.Rows[0]["estado"].ToString());
                token.Fecha = DateTime.Now;

                URecuperarClave tokenizar = new URecuperarClave();
                Encriptar encripta = new Encriptar();
                tokenizar.Tokenizado = encripta.encriptar(JsonConvert.SerializeObject(token));

                URecuperarClave enviaMsj = new URecuperarClave();
                Correo correo = new Correo();
                enviaMsj.Mensaje = "Ingrese aquí para cambiar su contraseña : " + "" + "http://localhost:50177/view/RecuperarContraseña.aspx?" + tokenizar.Tokenizado + "";


                if (Int32.Parse(ValidarUser.Rows[0]["estado"].ToString()) != 2)
                {
                    UsuarioValido.almacenarToken(tokenizar.Tokenizado, token.Id);
                    correo.enviarCorreo(token.Correo, tokenizar.Tokenizado, enviaMsj.Mensaje);
                    URecuperarClave muestramensaje = new URecuperarClave();

                    muestramensaje.Mensajerespuesta = "<script language='JavaScript'>window.alert(' ¡Enhorabuena!, su contraseña ha sido enviada a su correo. ');</script>";
                }
                else
                {
                    URecuperarClave msjLinkEnviado = new URecuperarClave();
                    msjLinkEnviado.Mensajerespuesta = "<script language='JavaScript'>window.alert(' Ya hemos enviado un link de recuperación, por favor verifique su correo. ');</script>";
                }
            }
            else
            {
                URecuperarClave msjNoExiste = new URecuperarClave();
                msjNoExiste.Mensajerespuesta = "<script language='JavaScript'>window.alert(' Ya hemos enviado un link de recuperación, por favor verifique su correo. ');</script>";
            }
            return validar;
        }
        public URecuperarClave RecuperarClave(URecuperarClave entrada,String qry, int queri)
        {
            URecuperarClave reco = new URecuperarClave();
            if (queri > 0)
            {
                
                DRecuperarClave obtieneToken = new DRecuperarClave(); 
                DataTable traeToken = obtieneToken.obtenerUsuarioToken(qry);
                if (int.Parse(traeToken.Rows[0][0].ToString()) == -1)
                    reco.Mensajerespuesta = @"<script type='text/javascript'>alert('Este link no existe por favor solicite un cambio');</script>";
                else if (int.Parse(traeToken.Rows[0][0].ToString()) == -2)
                    reco.Mensajerespuesta= @"<script type='text/javascript'>alert('La fecha de vigencia caducó, por favor solicite de nuevo el cambio de clave');</script>";
                else
                   reco.Mensaje = traeToken.Rows[0][0].ToString();
            }
            else
            {
                //reco.Url2 = "Loggin.aspx";
                reco.Url = @"<script type='text/javascript'>Redir_Login();</script>";
            }
            return reco;
        }
        public URecuperarClave CambiaClave(URecuperarClave renueva)
        {
            DRecuperarClave renovar = new DRecuperarClave();
            DataTable cambiar = renovar.CambiarClave(renueva);

            renueva.Mensaje = @"<script type='text/javascript'>alert('¡Su contraseña ha sido renovada por favor inicie sesión!');</script>";
            renueva.Url = @"<script type='text/javascript'>Redir_Login();</script>";
            return renueva;
        }
        
    }
}
