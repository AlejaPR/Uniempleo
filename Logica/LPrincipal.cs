using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Data;
using System.Data;
using Utilitarios;

namespace Logica
{
    public class LPrincipal
    {
        public UPrincipal Registrar(String correo, String usuario, String clave, Int32 rol)
        {
            DPrincipal consultaR = new DPrincipal();
            DataTable datosRegistro = consultaR.VerificaR(correo);
            DataTable datosU = consultaR.VerificaU(usuario);
            UPrincipal usuarioR = new UPrincipal();

            if (datosRegistro.Rows.Count > 0 || datosU.Rows.Count > 0)
            {

                usuarioR.Url = "Registro.aspx";// funcion de response redirect 
                usuarioR.Mensaje = "Correo o usuario registrados";


                return usuarioR;

            }
            else
            {
                DPrincipal Registrar = new DPrincipal();
                DataTable registro = Registrar.Registro(correo, usuario, clave, rol);


                usuarioR.Url = "Loggin.aspx";
                usuarioR.Mensaje = "Registro exitoso";

                return usuarioR;
            }

        }

        public UPrincipal EnviarPqr(String nombre, String correop, String asunto)
        {
            DPrincipal pqren = new DPrincipal();
            DataTable enviar = pqren.Pqr(nombre,correop,asunto);

            UPrincipal enviarpqr = new UPrincipal();
            enviarpqr.Url = "Principal.aspx";
            enviarpqr.Mensaje = "Solicitud enviada correctamente";

            return enviarpqr;


        }
    }
}