using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EDatos
/// </summary>
public class EDatos
{
    public EDatos()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private String nombreUsua;
    private String correo;
    private String usuario;
    private String clave;
    private Int32 rol;
    private String hoja;
    private int idregistro;
    private String session; 

    public string NombreUsua
    {
        get
        {
            return nombreUsua;
        }

        set
        {
            nombreUsua = value;
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

    public string NombrePqr
    {
        get
        {
            return nombrePqr;
        }

        set
        {
            nombrePqr = value;
        }
    }

    public string CorreoPqr
    {
        get
        {
            return correoPqr;
        }

        set
        {
            correoPqr = value;
        }
    }

    public string Asunto
    {
        get
        {
            return asunto;
        }

        set
        {
            asunto = value;
        }
    }

    private String nombrePqr;
    private String correoPqr;
    private String asunto;

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

    public string LugarG
    {
        get
        {
            return lugarG;
        }

        set
        {
            lugarG = value;
        }
    }

    public String FechaG
    {
        get
        {
            return fechaG;
        }

        set
        {
            fechaG = value;
        }
    }

    public string TelefonoG
    {
        get
        {
            return telefonoG;
        }

        set
        {
            telefonoG = value;
        }
    }

    public string Certificacion
    {
        get
        {
            return certificacion;
        }

        set
        {
            certificacion = value;
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
    private String nombreA;
    private String apellidoA;
    private String fotoA;
    private String titulo;
    private String lugarG;
    private String fechaG;
    private String telefonoG;
    private String certificacion;
    private String habilidad1;
    private String habilidad2;
    private String habilidad3;

    private String terminoE;
    private String horarioE;
    private String tiempoE;

    public string TerminoE
    {
        get
        {
            return terminoE;
        }

        set
        {
            terminoE = value;
        }
    }

    public string HorarioE
    {
        get
        {
            return horarioE;
        }

        set
        {
            horarioE = value;
        }
    }

    public string TiempoE
    {
        get
        {
            return tiempoE;
        }

        set
        {
            tiempoE = value;
        }
    }

    public string NombreE
    {
        get
        {
            return nombreE;
        }

        set
        {
            nombreE = value;
        }
    }

    public string FormaJ
    {
        get
        {
            return formaJ;
        }

        set
        {
            formaJ = value;
        }
    }

    public string FechaCons
    {
        get
        {
            return fechaCons;
        }

        set
        {
            fechaCons = value;
        }
    }

    public string DireccionE
    {
        get
        {
            return direccionE;
        }

        set
        {
            direccionE = value;
        }
    }

    public string TelefonoE
    {
        get
        {
            return telefonoE;
        }

        set
        {
            telefonoE = value;
        }
    }

    public string SectorE
    {
        get
        {
            return sectorE;
        }

        set
        {
            sectorE = value;
        }
    }

    public string NumEmpleados
    {
        get
        {
            return numEmpleados;
        }

        set
        {
            numEmpleados = value;
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

    public string Pais
    {
        get
        {
            return pais;
        }

        set
        {
            pais = value;
        }
    }

    public string Departamento
    {
        get
        {
            return departamento;
        }

        set
        {
            departamento = value;
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

    public string TipoE
    {
        get
        {
            return tipoE;
        }

        set
        {
            tipoE = value;
        }
    }

    public string Pagina
    {
        get
        {
            return pagina;
        }

        set
        {
            pagina = value;
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

    public string Hoja
    {
        get
        {
            return hoja;
        }

        set
        {
            hoja = value;
        }
    }

    public int IdAspirante1
    {
        get
        {
            return IdAspirante;
        }

        set
        {
            IdAspirante = value;
        }
    }

    public int Idregistro
    {
        get
        {
            return idregistro;
        }

        set
        {
            idregistro = value;
        }
    }

    public string Session
    {
        get
        {
            return session;
        }

        set
        {
            session = value;
        }
    }

    private Int32 idempresa;
    private String nombreE;
    private String formaJ;
    private String fechaCons;
    private String direccionE;
    private String telefonoE;
    private String sectorE;
    private String numEmpleados;
    private String nit;
    private String pais;
    private String departamento;
    private String ciudad;
    private String tipoE;
    private String pagina;
    private String logo;
    private int IdAspirante; 



}