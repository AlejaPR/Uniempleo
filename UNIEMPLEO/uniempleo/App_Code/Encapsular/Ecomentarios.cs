using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Ecomentarios
/// </summary>
public class Ecomentarios
{
    public Ecomentarios()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private int idaspirante;
    private int idempresa;
    private int idcomentarios;
    private String comentario;
    private String sesion;
    private DateTime fechacomentario;

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

    public int Idcomentarios
    {
        get
        {
            return idcomentarios;
        }

        set
        {
            idcomentarios = value;
        }
    }

    public string Comentario
    {
        get
        {
            return comentario;
        }

        set
        {
            comentario = value;
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

    public DateTime Fechacomentario
    {
        get
        {
            return fechacomentario;
        }

        set
        {
            fechacomentario = value;
        }
    }
}