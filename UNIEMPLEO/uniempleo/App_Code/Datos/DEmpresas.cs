using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DEmpresas
/// </summary>
public class DEmpresas
{
    public DEmpresas()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public DataTable obtenerEmpresas()
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_empresag", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            conexion.Open();
            dataAdapter.Fill(perfil);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conexion != null)
            {
                conexion.Close();
            }
        }
        return perfil;
    }
    public DataTable registroEmpresa(EEmpresas RegEm)
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_registro_emp", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Text).Value = RegEm.Correo;
            dataAdapter.SelectCommand.Parameters.Add("_usuario", NpgsqlDbType.Text).Value = RegEm.Usuario;
            dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Text).Value = RegEm.Clave;
            dataAdapter.SelectCommand.Parameters.Add("_rol", NpgsqlDbType.Integer).Value = RegEm.Rol;
            conexion.Open();
            dataAdapter.Fill(perfil);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conexion != null)
            {
                conexion.Close();
            }
        }
        return perfil;
    }
    public DataTable EmpresaMiPerfil(EEmpresas idEmpresa)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.miperfile", conection);
            dataAdapter.SelectCommand.Parameters.Add("_idempresa", NpgsqlDbType.Integer).Value = idEmpresa.IdEmpresa1;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(datosE);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return datosE;
    }
    public DataTable obtenerPuntosE(EEmpresas ide) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_puntajeEmp", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_e", NpgsqlDbType.Integer).Value = ide.IdEmpresa1;

            conexion.Open();
            dataAdapter.Fill(perfil);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conexion != null)
            {
                conexion.Close();
            }
        }
        return perfil;
    }
    public DataTable obtenerComentariosE(EEmpresas idce) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_comentariose", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_e", NpgsqlDbType.Integer).Value = idce.IdEmpresa1;

            conexion.Open();
            dataAdapter.Fill(perfil);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conexion != null)
            {
                conexion.Close();
            }
        }
        return perfil;
    }
    public void Publicar(EEmpresas Epublica)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_registra_oferta", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            dataAdapter.SelectCommand.Parameters.Add("_titulo", NpgsqlDbType.Text).Value = Epublica.Titulo;
            dataAdapter.SelectCommand.Parameters.Add("_horario", NpgsqlDbType.Text).Value = Epublica.Horario;
            dataAdapter.SelectCommand.Parameters.Add("_salario", NpgsqlDbType.Text).Value = Epublica.Salario;
            dataAdapter.SelectCommand.Parameters.Add("_fecha", NpgsqlDbType.Text).Value = Epublica.Fecha;
            dataAdapter.SelectCommand.Parameters.Add("_tipo", NpgsqlDbType.Text).Value = Epublica.Tipo;
            dataAdapter.SelectCommand.Parameters.Add("_funciones", NpgsqlDbType.Text).Value = Epublica.Funcion;
            dataAdapter.SelectCommand.Parameters.Add("_id_empresa", NpgsqlDbType.Integer).Value = Epublica.Idempresa;
            dataAdapter.SelectCommand.Parameters.Add("_sesion", NpgsqlDbType.Text).Value = Epublica.Sesion;


            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }




    }
    public DataTable EditarEmpresas(Int32 nombre, String forma, String direccion, String telefono, String sector, Int32 numero, String nit, String tipo, Int32 id_empresa, String nombre_empresa, String forma_juridica, String direccion_empresa, String telefono_empresa, String sector_economico, String num_empleados, String tipo_empresa)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_modificar_empresa_admi", conection);


            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = nombre_empresa;
            dataAdapter.SelectCommand.Parameters.Add("_forma", NpgsqlDbType.Text).Value = forma_juridica;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Text).Value = direccion_empresa;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Text).Value = telefono_empresa;
            dataAdapter.SelectCommand.Parameters.Add("_sector", NpgsqlDbType.Text).Value = sector_economico;
            dataAdapter.SelectCommand.Parameters.Add("_numero", NpgsqlDbType.Integer).Value = num_empleados;
            dataAdapter.SelectCommand.Parameters.Add("_nit", NpgsqlDbType.Text).Value = nit;
            dataAdapter.SelectCommand.Parameters.Add("_tipo", NpgsqlDbType.Text).Value = tipo_empresa;
            dataAdapter.SelectCommand.Parameters.Add("_id_empresa", NpgsqlDbType.Integer).Value = id_empresa;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(datosE);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return datosE;

    }
    public DataTable VerificaHVE(int id)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_verificar_hoja_empresa", conection);
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(datosE);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return datosE;
    }
    public DataTable obtenermisOfertas(Int32 idp)
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_misofertas", conexion);
            dataAdapter.SelectCommand.Parameters.Add("_id_emp", NpgsqlDbType.Integer).Value = idp;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            conexion.Open();
            dataAdapter.Fill(perfil);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conexion != null)
            {
                conexion.Close();
            }
        }
        return perfil;
    }
    public DataTable consultasuma(EEmpresas id)
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_consultasuma", conexion);
            dataAdapter.SelectCommand.Parameters.Add("_id_emp", NpgsqlDbType.Integer).Value = id.IdEmpresa1;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            conexion.Open();
            dataAdapter.Fill(perfil);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conexion != null)
            {
                conexion.Close();
            }
        }
        return perfil;
    }
    public DataTable SumaPuntosEmp(EEmpresas id)
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_suma_puntos_empresa", conexion);
            dataAdapter.SelectCommand.Parameters.Add("_id_emp", NpgsqlDbType.Integer).Value = id.IdEmpresa1;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            conexion.Open();
            dataAdapter.Fill(perfil);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conexion != null)
            {
                conexion.Close();
            }
        }
        return perfil;
    }
    public DataTable VerMisCitas(int ide)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_citas_empresa", conection);
            dataAdapter.SelectCommand.Parameters.Add("_id_emp", NpgsqlDbType.Integer).Value = ide;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(datosE);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return datosE;
    }
}
