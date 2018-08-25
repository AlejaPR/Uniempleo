using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAspirantes
/// </summary>
public class DAspirantes
{
    public DAspirantes()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public DataTable obtenerAspirantes()
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_aspi", conexion);
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
    public DataTable AspiranteCompletoDatos(EAspirantes idAspirante)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.aspirantecdato", conection);
            dataAdapter.SelectCommand.Parameters.Add("_idaspirante", NpgsqlDbType.Integer).Value = idAspirante.IdAspirante;
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
    public DataTable ObternerHoja(EAspirantes idAspirante)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.obtener_hoja", conection);
            dataAdapter.SelectCommand.Parameters.Add("_idaspirante", NpgsqlDbType.Integer).Value = idAspirante.IdAspirante;
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
    public DataTable obtenerAspiranteRep()
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_aspi_rep", conexion);
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

    public DataTable obtenerEmpresas()
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_emp_rep", conexion);
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

    public DataTable obtenerOfertas()
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_ofe_rep", conexion);
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
    public DataTable EditarAspirantes(Int32 Idpm, String Nombre, String Apellido, String Nacimiento, String Direccion, String Celular, String Estado, String documento, String sexo, Int32 id_aspirante, String nombre_aspirante, String apellido_aspirante, String fecha_nacim, String direccion_asp, String telefono_asp, String estado_civil)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_modificar_aspirante", conection);


            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = nombre_aspirante;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Text).Value = apellido_aspirante;
            dataAdapter.SelectCommand.Parameters.Add("_nacimiento", NpgsqlDbType.Date).Value = fecha_nacim;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Text).Value = direccion_asp;
            dataAdapter.SelectCommand.Parameters.Add("_celular", NpgsqlDbType.Text).Value = telefono_asp;
            dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Text).Value = estado_civil;
            dataAdapter.SelectCommand.Parameters.Add("_documento", NpgsqlDbType.Text).Value = documento;
            dataAdapter.SelectCommand.Parameters.Add("_sexo", NpgsqlDbType.Text).Value = sexo;
            dataAdapter.SelectCommand.Parameters.Add("_id_aspi", NpgsqlDbType.Integer).Value = id_aspirante;
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
    public DataTable obtenerAspirantesSus()
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_aspi_sus", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            conexion.Open();
            dataAdapter.Fill(perfil);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }

        return perfil;
    }

    public DataTable suspenderAspirante(String nombre_aspirante, String apellido_aspirante, String documento_asp, Int32 estado, Int32 id_aspirante, Int32 id_registro, Int32 id_aspirate, String documento)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_modificar_aspirante_sus", conection);


            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = nombre_aspirante;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Text).Value = apellido_aspirante;
            dataAdapter.SelectCommand.Parameters.Add("_documento", NpgsqlDbType.Text).Value = documento;
            dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Integer).Value = estado;
            dataAdapter.SelectCommand.Parameters.Add("_id_aspi", NpgsqlDbType.Integer).Value = id_aspirate;
            dataAdapter.SelectCommand.Parameters.Add("_id_reg", NpgsqlDbType.Integer).Value = id_registro;
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
public DataTable MostrarMensajes(Eofertas idempresa)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.obtener_mensajes", conection);
            dataAdapter.SelectCommand.Parameters.Add("_idempresa", NpgsqlDbType.Integer).Value = idempresa.Idempresa;
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
    public DataTable VerificaHV(int id)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_verificar_hoja_aspirante", conection);
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
    public DataTable VerMisCitasAsp(int id)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_citas", conection);
            dataAdapter.SelectCommand.Parameters.Add("_id_asp", NpgsqlDbType.Integer).Value = id;
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
    public DataTable eliminarCita(EAspirantes ida) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_eliminar_cita", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_c", NpgsqlDbType.Integer).Value = ida.IdAspirante;

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
}