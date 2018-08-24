using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Elaboral
/// </summary>
public class Elaboral
{
    public Elaboral()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private String nombreEmp;
    private String cargo;
    private String jefe;
    private String telefono;
    private String funcionesd;
    private Int32 puntaje;
    private Int32 idusuario;
    private Int32 idempresa;
    private Int32 estado;
    private Int32 id_registro;
    private Int32 id_aspirante;
    private DateTime inicio;
    private DateTime fin;
    private int idvalida;
    private int idvalidaEm; 


    public string NombreEmp
    {
        get
        {
            return nombreEmp;
        }

        set
        {
            nombreEmp = value;
        }
    }

    public string Cargo
    {
        get
        {
            return cargo;
        }

        set
        {
            cargo = value;
        }
    }

    public string Jefe
    {
        get
        {
            return jefe;
        }

        set
        {
            jefe = value;
        }
    }

    public string Telefono
    {
        get
        {
            return telefono;
        }

        set
        {
            telefono = value;
        }
    }

    public string Funcionesd
    {
        get
        {
            return funcionesd;
        }

        set
        {
            funcionesd = value;
        }
    }

    public int Idusuario
    {
        get
        {
            return idusuario;
        }

        set
        {
            idusuario = value;
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

    public int Puntaje
    {
        get
        {
            return puntaje;
        }

        set
        {
            puntaje = value;
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

    public int Id_registro
    {
        get
        {
            return id_registro;
        }

        set
        {
            id_registro = value;
        }
    }

    public int Id_aspirante
    {
        get
        {
            return id_aspirante;
        }

        set
        {
            id_aspirante = value;
        }
    }

    public DateTime Inicio
    {
        get
        {
            return inicio;
        }

        set
        {
            inicio = value;
        }
    }

    public DateTime Fin
    {
        get
        {
            return fin;
        }

        set
        {
            fin = value;
        }
    }

    public int Idvalida
    {
        get
        {
            return idvalida;
        }

        set
        {
            idvalida = value;
        }
    }

    public int IdvalidaEm
    {
        get
        {
            return idvalidaEm;
        }

        set
        {
            idvalidaEm = value;
        }
    }
}