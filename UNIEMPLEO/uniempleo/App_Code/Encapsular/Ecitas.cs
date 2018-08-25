using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Ecitas
/// </summary>
public class Ecitas
{
    public Ecitas()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private int idempresa;
    private int idaspirante;
    private String lugar;
    private DateTime Fecha;
    private TimeSpan Hora;
    private String descripcion;
    private String sesion;
    private DateTime fechavalida;
    private TimeSpan horavalida;

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

    public string Lugar
    {
        get
        {
            return lugar;
        }

        set
        {
            lugar = value;
        }
    }

    public DateTime Fecha1
    {
        get
        {
            return Fecha;
        }

        set
        {
            Fecha = value;
        }
    }

    public TimeSpan Hora1
    {
        get
        {
            return Hora;
        }

        set
        {
            Hora = value;
        }
    }

    public string Descripcion
    {
        get
        {
            return descripcion;
        }

        set
        {
            descripcion = value;
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

    public DateTime Fechavalida
    {
        get
        {
            return fechavalida;
        }

        set
        {
            fechavalida = value;
        }
    }

    public TimeSpan Horavalida
    {
        get
        {
            return horavalida;
        }

        set
        {
            horavalida = value;
        }
    }
}