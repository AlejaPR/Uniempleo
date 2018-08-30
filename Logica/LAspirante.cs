using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Data;
using System.Data;

namespace Logica
{
    public class LAspirante
    {
       

        public UAspirante EnviarFacade(UAspirante faspi)
        {


            DAspirante formacion = new DAspirante();
            DataTable academica = formacion.FormacionA(faspi);

            UAspirante enviarm = new UAspirante();
            enviarm.Url = "VerOfertas.aspx";
            enviarm.Mensaje = "Registrado correctamente";
            enviarm.MensajeError = "NO SE PUEDE REGISTRAR UNA FECHA ANTERIOR A ESTA";
            return enviarm;


        }

        public UAspirante ValidaHoras(UAspirante control)
        {
            UAspirante validacion = new UAspirante();
          

            if (control.Finicio > control.Ffin)
            {
                validacion.MensajeError = "NO SE PUEDE REGISTRAR UNA FECHA";
            }
            else
            {
                DAspirante registrar = new DAspirante();
                registrar.Exlaboral(control);
                validacion.Url = @"<script type = 'text/javascript'>Dire_expl();</script>";

            }
            return validacion;
        }


        public UAspirante ValidaS(UAspirante ses) {
            UAspirante sesi = new UAspirante();

            if (ses.Idr.Equals(null) || ses.Nombre.Equals(null) || ses.Cargo.Equals(null) || int.Parse(ses.Cargo) !=2)
            {
                ses.Idr.Equals(null);
                ses.Nombre.Equals(null);
                ses.Cargo.Equals(null);
                
                ses.Url= @"<script type = 'text/javascript'>Dire_log();</script>";

            }
            return ses;
        }
	
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
