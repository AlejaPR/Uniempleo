using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Euser
/// </summary>
public class Euser
{
    private String userName;
    private String clave;
    private String Sesion;
    private Int32 id;
    private String correo;
    private Int32 estado;
    private DateTime fecha;
    private String cambiaC;
    private String confirmaC;
    private String ip;
    private String mac;
    private DateTime nacimiento;
    private String direccion;
    private String celular;
    private String documento;
    private String sexo;
    private String estadocivil;
    private String foto;
    private String nombre;
    private String apellido;
    private Int32 idpm;



    public Euser()
    {

        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public string UserName
    {
        get
        {
            return userName;
        }

        set
        {
            userName = value;
        }
    }

    public string Clave
    {
        get
        {
            return clave;
        }

        set
        {
            clave = value;
        }
    }

    public string Sesion1
    {
        get
        {
            return Sesion;
        }

        set
        {
            Sesion = value;
        }
    }

    public int Id
    {
        get
        {
            return id;
        }

        set
        {
            id = value;
        }
    }

    public string Correo
    {
        get
        {
            return correo;
        }

        set
        {
            correo = value;
        }
    }

    public DateTime Fecha
    {
        get
        {
            return fecha;
        }

        set
        {
            fecha = value;
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

    public string CambiaC
    {
        get
        {
            return cambiaC;
        }

        set
        {
            cambiaC = value;
        }
    }

    public string ConfirmaC
    {
        get
        {
            return confirmaC;
        }

        set
        {
            confirmaC = value;
        }
    }

    public string Ip
    {
        get
        {
            return ip;
        }

        set
        {
            ip = value;
        }
    }

    public string Mac
    {
        get
        {
            return mac;
        }

        set
        {
            mac = value;
        }
    }

    public DateTime Nacimiento
    {
        get
        {
            return nacimiento;
        }

        set
        {
            nacimiento = value;
        }
    }

    public string Sexo
    {
        get
        {
            return sexo;
        }

        set
        {
            sexo = value;
        }
    }

    public string Estadocivil
    {
        get
        {
            return estadocivil;
        }

        set
        {
            estadocivil = value;
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

    public string Direccion
    {
        get
        {
            return direccion;
        }

        set
        {
            direccion = value;
        }
    }

    public string Celular
    {
        get
        {
            return celular;
        }

        set
        {
            celular = value;
        }
    }

    public string Documento
    {
        get
        {
            return documento;
        }

        set
        {
            documento = value;
        }
    }

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

    public int Idpm
    {
        get
        {
            return idpm;
        }

        set
        {
            idpm = value;
        }
    }
}