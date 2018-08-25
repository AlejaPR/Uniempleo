using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Dcitas
/// </summary>
public class Dcitas
{
    public Dcitas()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public DataTable GenerarCitas(Ecitas citar) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_generar_cita", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_empresa", NpgsqlDbType.Integer).Value = citar.Idempresa;
            dataAdapter.SelectCommand.Parameters.Add("_id_aspirante", NpgsqlDbType.Integer).Value = citar.Idaspirante;
            dataAdapter.SelectCommand.Parameters.Add("_fecha", NpgsqlDbType.Date).Value = citar.Fecha1;
            dataAdapter.SelectCommand.Parameters.Add("_hora", NpgsqlDbType.Time).Value = citar.Hora1;
            dataAdapter.SelectCommand.Parameters.Add("_lugar", NpgsqlDbType.Text).Value = citar.Lugar;
            dataAdapter.SelectCommand.Parameters.Add("_descripcion", NpgsqlDbType.Text).Value = citar.Descripcion;
            dataAdapter.SelectCommand.Parameters.Add("_sesion", NpgsqlDbType.Text).Value = citar.Sesion;

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
    public DataTable Ofertas_Cita(Ecitas citar) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_ofertasddl_cita", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_empresa", NpgsqlDbType.Integer).Value = citar.Idempresa;

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
    public DataTable ValidaCitaReservas(Ecitas citica) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_valida_citas_hechas", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_fecha", NpgsqlDbType.Date).Value = citica.Fecha1;
            dataAdapter.SelectCommand.Parameters.Add("_hora", NpgsqlDbType.Time).Value = citica.Hora1;
            dataAdapter.SelectCommand.Parameters.Add("_idaspirante", NpgsqlDbType.Integer).Value = citica.Idaspirante;
            dataAdapter.SelectCommand.Parameters.Add("_idempresa", NpgsqlDbType.Integer).Value = citica.Idempresa;


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