using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
    public class UAspirante
    {
        private string nombre;
        private string cargo;
        private string jefe;
        private string telefono;
        private string funcion;
        private DateTime finicio;
        private DateTime ffin;
        private Int32 idr;
        private string mensaje;
        private string url;
        private String mensajeError;

        private String titulo;
        private String lugar;
        private DateTime fecha;
        
        private String documento;
        private String habilidad1;
        private String habilidad2;
        private String habilidad3;
        


        public string Nombre { get => nombre; set => nombre = value; }
        public string Cargo { get => cargo; set => cargo = value; }
        public string Jefe { get => jefe; set => jefe = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public string Funcion { get => funcion; set => funcion = value; }
        
        public int Idr { get => idr; set => idr = value; }
        public string Mensaje { get => mensaje; set => mensaje = value; }
        public string Url { get => url; set => url = value; }
        public string MensajeError { get => mensajeError; set => mensajeError = value; }
        public DateTime Finicio { get => finicio; set => finicio = value; }
        public DateTime Ffin { get => ffin; set => ffin = value; }
        public string Titulo { get => titulo; set => titulo = value; }
        public string Lugar { get => lugar; set => lugar = value; }
        public DateTime Fecha { get => fecha; set => fecha = value; }
        public string Documento { get => documento; set => documento = value; }
        public string Habilidad1 { get => habilidad1; set => habilidad1 = value; }
        public string Habilidad2 { get => habilidad2; set => habilidad2 = value; }
        public string Habilidad3 { get => habilidad3; set => habilidad3 = value; }
    }
}
