using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EEmpresas
/// </summary>
public class EEmpresas
{
    public EEmpresas()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private String titulo;
    private String horario;
    private String salario;
    private String fecha;
    private String tipo;
    private String funcion;
    private Int32 idempresa;
    private string sesion;

    private String correo;
    private String usuario;
    private String clave;
    private Int32 rol;


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

    public string Usuario
    {
        get
        {
            return usuario;
        }

        set
        {
            usuario = value;
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

    public int Rol
    {
        get
        {
            return rol;
        }

        set
        {
            rol = value;
        }
    }

    public int IdEmpresa1
    {
        get
        {
            return IdEmpresa;
        }

        set
        {
            IdEmpresa = value;
        }
    }

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

    public string Telefono_empresa
    {
        get
        {
            return telefono_empresa;
        }

        set
        {
            telefono_empresa = value;
        }
    }

    public string Nit
    {
        get
        {
            return nit;
        }

        set
        {
            nit = value;
        }
    }

    public string Dpto_empresa
    {
        get
        {
            return dpto_empresa;
        }

        set
        {
            dpto_empresa = value;
        }
    }

    public string Ciudad
    {
        get
        {
            return ciudad;
        }

        set
        {
            ciudad = value;
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

    public string Titulo
    {
        get
        {
            return titulo;
        }

        set
        {
            titulo = value;
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

    public string Salario
    {
        get
        {
            return salario;
        }

        set
        {
            salario = value;
        }
    }

    public string Fecha
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

    public string Tipo
    {
        get
        {
            return tipo;
        }

        set
        {
            tipo = value;
        }
    }

    public string Funcion
    {
        get
        {
            return funcion;
        }

        set
        {
            funcion = value;
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

    private int IdEmpresa;
    private String nombre_empresa;
    private String telefono_empresa;
    private String nit;
    private String dpto_empresa;
    private String ciudad;
    private String logo;
}