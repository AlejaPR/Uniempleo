using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
    public class UPrincipal
    {
        private String url;
        private String mensaje;
        private String correo;
        private String usuario;
        private String claveU;
        private Int32 rol;

        public string Url { get => url; set => url = value; }
        public string Mensaje { get => mensaje; set => mensaje = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Usuario { get => usuario; set => usuario = value; }
        public string ClaveU { get => claveU; set => claveU = value; }
        public int Rol { get => rol; set => rol = value; }
    }
}
