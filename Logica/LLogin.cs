using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Data;
using System.Data;
using System.Web;

namespace Logica
{
    public class LLogin
    {
        public ULogin Logear(ULogin logeo, String idsesion)
        {
            DLogin validaUser = new DLogin();
            DataTable usuarios = validaUser.Login(logeo);
            ULogin log = new ULogin();

            if (usuarios.Rows.Count > 0)

            {
                if (int.Parse(usuarios.Rows[0]["estado"].ToString()) == 1)
                {

                    if (int.Parse(usuarios.Rows[0]["id_registro"].ToString()) > 0)
                    {
                        log.IdRegistro = Int32.Parse(usuarios.Rows[0]["id_registro"].ToString());
                        log.Nombre = usuarios.Rows[0]["usuario"].ToString();
                        log.IdRol = Int32.Parse(usuarios.Rows[0]["id_rol"].ToString());
                        log.Estado = Int32.Parse(usuarios.Rows[0]["estado"].ToString()); 

                        ULogin datauser = new ULogin();

                        MAC datosConexion = new MAC();
                        String ipAdress = datosConexion.ip();
                        String mac = datosConexion.mac();

                        datauser.IdRol = Int32.Parse(usuarios.Rows[0]["id_rol"].ToString());
                        datauser.Ip = ipAdress;
                        datauser.Mac = mac;
                        datauser.Sesion = idsesion;

                        validaUser.GuardarSesion(datauser);
                        if (log.IdRol == 1)
                        {

                            log.Script=@"<script type='text/javascript'>Redir_InicioEmpresa();</script>";
                        }


                        if (log.IdRol == 2)
                        {
                            log.Script = @"<script type='text/javascript'>Redir_InicioAspirante();</script>";
                            
                        }


                        if (log.IdRol == 3)
                        {
                            log.Script = @"<script type='text/javascript'>Redir_InicioAdmin();</script>";
                        }

                    }
                }
                else
                {
                    log.Script = "Usuario suspendido";
                }
            }


            else
            {

                log.ErrorInicio = "Usuario o clave incorrecta";

            }
            return log;
        }

    }
}
