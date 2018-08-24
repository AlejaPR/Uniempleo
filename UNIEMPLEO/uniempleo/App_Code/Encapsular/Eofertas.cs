using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Eofertas
/// </summary>
public class Eofertas
{
    public Eofertas()
    { }
    private Int32 idoferta;
    private String nombre_empresa;
    private String logo;
    private String sueldo;
    private String horario;
    private String funciones;
    private String busqueda;
    private String tipo_contrato;
    private String sesion;
    private Int32 idempresa;
    private Int32 idaspirante;
    private DateTime fechasolicitud;
    private String mensaje;
    private int idprueba;

    public string Nombre_empresa
    {
        get
        {
            return nombre_empresa;
        }

        set
        {
            nombre_empresa = value;
        }
    }

    public string Logo
    {
        get
        {
            return logo;
        }

        set
        {
            logo = value;
        }
    }

    public string Sueldo
    {
        get
        {
            return sueldo;
        }

        set
        {
            sueldo = value;
        }
    }

    public string Horario
    {
        get
        {
            return horario;
        }

        set
        {
            horario = value;
        }
    }

    public string Funciones
    {
        get
        {
            return funciones;
        }

        set
        {
            funciones = value;
        }
    }

    public string Busqueda
    {
        get
        {
            return busqueda;
        }

        set
        {
            busqueda = value;
        }
    }

    public string Sesion
    {
        get
        {
            return sesion;
        }

        set
        {
            sesion = value;
        }
    }

    public int Idoferta
    {
        get
        {
            return idoferta;
        }

        set
        {
            idoferta = value;
        }
    }

    public string Tipo_contrato
    {
        get
        {
            return tipo_contrato;
        }

        set
        {
            tipo_contrato = value;
        }
    }

    public int Idempresa
    {
        get
        {
            return idempresa;
        }

        set
        {
            idempresa = value;
        }
    }

    public string Mensaje
    {
        get
        {
            return mensaje;
        }

        set
        {
            mensaje = value;
        }
    }

    public int Idaspirante
    {
        get
        {
            return idaspirante;
        }

        set
        {
            idaspirante = value;
        }
    }

    public DateTime Fechasolicitud
    {
        get
        {
            return fechasolicitud;
        }

        set
        {
            fechasolicitud = value;
        }
    }

    public int Idprueba
    {
        get
        {
            return idprueba;
        }

        set
        {
            idprueba = value;
        }
    }
}
