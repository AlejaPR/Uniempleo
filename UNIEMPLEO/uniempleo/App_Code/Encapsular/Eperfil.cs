using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Eperfil
/// </summary>
public class Eperfil
{
    public Eperfil()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    private String nombre;
    private String apellido;
    private String profesion;
    private String foto;
    private int idperfil;
    private int idasp;
    private int estado;

    public string Nombre
    {
        get
        {
            return nombre;
        }

        set
        {
            nombre = value;
        }
    }

    public string Apellido
    {
        get
        {
            return apellido;
        }

        set
        {
            apellido = value;
        }
    }

    public string Profesion
    {
        get
        {
            return profesion;
        }

        set
        {
            profesion = value;
        }
    }

    public string Foto
    {
        get
        {
            return foto;
        }

        set
        {
            foto = value;
        }
    }

    public int Idperfil
    {
        get
        {
            return idperfil;
        }

        set
        {
            idperfil = value;
        }
    }

    public int Idasp
    {
        get
        {
            return idasp;
        }

        set
        {
            idasp = value;
        }
    }

    public int Estado
    {
        get
        {
            return estado;
        }

        set
        {
            estado = value;
        }
    }
}