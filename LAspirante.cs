using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Data;

namespace Logica
{
    public class LAspirante
    {
        public UAspirante ValidacionUrl(UAspirante link)
        {
            if (link.IdUser.Equals(null) ||  link.UserName.Equals(null) || link.RolId.Equals(null) || link.RolId != 2)
            {
                link.IdUser.Equals(null);
                link.UserName.Equals(null);
                link.RolId.Equals(null);
                link.Url = @"<script type='text/javascript'>Redir_Login();</script>";
                
            }

            return link;
        }
        public UAspirante ValidacionHora(UAspirante hora)
        {
            UAspirante ValFecha = new UAspirante();
            if (hora.FechaNacimiento > hora.ControlTime)
            {
                ValFecha.Mensaje = "No puede seleeccionar una fecha anterior";
            }
            else
            {
                DAspirante llenaDatosP = new DAspirante();
                llenaDatosP.RegistraAspirante(hora);
                ValFecha.Url2= @"<script type='text/javascript'>Redir_FormacionA();</script>";
                ValFecha.Url = "FormacionA.aspx";

            }
            return ValFecha;
        }
    }
}
