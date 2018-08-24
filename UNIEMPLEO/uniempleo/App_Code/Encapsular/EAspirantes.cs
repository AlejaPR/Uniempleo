using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EAspirantes
/// </summary>
public class EAspirantes
{
    public EAspirantes()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private int idAspirante;
    private String nombreA;
    private String apellidoA;
    private String documentoA;
    private String telefonoA;
    private String fotoA;

    private String tituloA;
    private String habilidad1;
    private String habilidad2;
    private String habilidad3;

    private String empresaA;
    private String cargoA;
    private String funcionesA;

    public int IdAspirante
    {
        get
        {
            return idAspirante;
        }

        set
        {
            idAspirante = value;
        }
    }

    public string NombreA
    {
        get
        {
            return nombreA;
        }

        set
        {
            nombreA = value;
        }
    }

    public string ApellidoA
    {
        get
        {
            return apellidoA;
        }

        set
        {
            apellidoA = value;
        }
    }

    public string DocumentoA
    {
        get
        {
            return documentoA;
        }

        set
        {
            documentoA = value;
        }
    }

    public string TelefonoA
    {
        get
        {
            return telefonoA;
        }

        set
        {
            telefonoA = value;
        }
    }

    public string FotoA
    {
        get
        {
            return fotoA;
        }

        set
        {
            fotoA = value;
        }
    }

    public string TituloA
    {
        get
        {
            return tituloA;
        }

        set
        {
            tituloA = value;
        }
    }

    public string Habilidad1
    {
        get
        {
            return habilidad1;
        }

        set
        {
            habilidad1 = value;
        }
    }

    public string Habilidad2
    {
        get
        {
            return habilidad2;
        }

        set
        {
            habilidad2 = value;
        }
    }

    public string Habilidad3
    {
        get
        {
            return habilidad3;
        }

        set
        {
            habilidad3 = value;
        }
    }

    public string EmpresaA
    {
        get
        {
            return empresaA;
        }

        set
        {
            empresaA = value;
        }
    }

    public string CargoA
    {
        get
        {
            return cargoA;
        }

        set
        {
            cargoA = value;
        }
    }

    public string FuncionesA
    {
        get
        {
            return funcionesA;
        }

        set
        {
            funcionesA = value;
        }
    }
}