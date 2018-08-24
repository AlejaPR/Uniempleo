using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DExpLab
/// </summary>
public class DExpLab
{
    public DExpLab()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public void Elaboral(Elaboral Exlaboral)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_exp_laboral", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            
            dataAdapter.SelectCommand.Parameters.Add("_nombreemp", NpgsqlDbType.Text).Value = Exlaboral.NombreEmp;
            dataAdapter.SelectCommand.Parameters.Add("_cargo", NpgsqlDbType.Text).Value = Exlaboral.Cargo;
            dataAdapter.SelectCommand.Parameters.Add("_jefe", NpgsqlDbType.Text).Value = Exlaboral.Jefe;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Text).Value = Exlaboral.Telefono;
            dataAdapter.SelectCommand.Parameters.Add("_funcionesd", NpgsqlDbType.Text).Value = Exlaboral.Funcionesd;
            dataAdapter.SelectCommand.Parameters.Add("_id_registro", NpgsqlDbType.Integer).Value = Exlaboral.Id_registro;
            dataAdapter.SelectCommand.Parameters.Add("_fechainicio", NpgsqlDbType.Date).Value = Exlaboral.Inicio;
            dataAdapter.SelectCommand.Parameters.Add("_fechafin", NpgsqlDbType.Date).Value = Exlaboral.Fin;



            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (Exlaboral != null)
            {
                conectar.Close();
            }
        }

    }
    public DataTable ObtenerExpL(Int32 idper) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_expl", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_asp", NpgsqlDbType.Integer).Value = idper;

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

    public DataTable ObtenerFacae(Int32 idper) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_facae", conexion);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_asp", NpgsqlDbType.Integer).Value = idper;

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