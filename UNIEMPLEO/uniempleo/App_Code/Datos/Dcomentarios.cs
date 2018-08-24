using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Dcomentarios
/// </summary>
public class Dcomentarios
{
    public Dcomentarios()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public void Puntua(Elaboral llevapuntaje)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_puntaje_empresa", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_puntuacion", NpgsqlDbType.Integer).Value = llevapuntaje.Puntaje;
            dataAdapter.SelectCommand.Parameters.Add("_idusuario", NpgsqlDbType.Integer).Value = llevapuntaje.Idusuario;
            dataAdapter.SelectCommand.Parameters.Add("_idempresa", NpgsqlDbType.Integer).Value = llevapuntaje.Idempresa;
            dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Integer).Value = llevapuntaje.Estado;



            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (llevapuntaje != null)
            {
                conectar.Close();
            }
        }

    }
    public void PuntuaAspirante(Elaboral llevapuntaje)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_puntaje_aspirante", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_puntuacion", NpgsqlDbType.Integer).Value = llevapuntaje.Puntaje;
            dataAdapter.SelectCommand.Parameters.Add("_idusuario", NpgsqlDbType.Integer).Value = llevapuntaje.Idusuario;
            dataAdapter.SelectCommand.Parameters.Add("_idempresa", NpgsqlDbType.Integer).Value = llevapuntaje.Idempresa;
            dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Integer).Value = llevapuntaje.Estado;



            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (llevapuntaje != null)
            {
                conectar.Close();
            }
        }


    }
    public void Comentar_Emp(Ecomentarios comenta)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_comentario_asp_emp", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_comentario", NpgsqlDbType.Text).Value = comenta.Comentario;
            dataAdapter.SelectCommand.Parameters.Add("_fecha_comentario", NpgsqlDbType.Date).Value = comenta.Fechacomentario;
            dataAdapter.SelectCommand.Parameters.Add("_idaspirante", NpgsqlDbType.Integer).Value = comenta.Idaspirante;
            dataAdapter.SelectCommand.Parameters.Add("_idempresa", NpgsqlDbType.Integer).Value = comenta.Idempresa;
            dataAdapter.SelectCommand.Parameters.Add("_sesion", NpgsqlDbType.Text).Value = comenta.Sesion;



            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (comenta != null)
            {
                conectar.Close();
            }
        }

    }
    public void Comentar_Asp(Ecomentarios comenta)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_comentarios_emp_asp", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_comentario", NpgsqlDbType.Text).Value = comenta.Comentario;
            dataAdapter.SelectCommand.Parameters.Add("_fecha_comentario", NpgsqlDbType.Date).Value = comenta.Fechacomentario;
            dataAdapter.SelectCommand.Parameters.Add("_idempresa", NpgsqlDbType.Integer).Value = comenta.Idempresa;
            dataAdapter.SelectCommand.Parameters.Add("_idaspirante", NpgsqlDbType.Integer).Value = comenta.Idaspirante;
            dataAdapter.SelectCommand.Parameters.Add("_sesion", NpgsqlDbType.Text).Value = comenta.Sesion;



            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (comenta != null)
            {
                conectar.Close();
            }
        }

    }
    public DataTable ValidaPuntos(Elaboral llevar)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_validar_puntos_existentes", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_idasp", NpgsqlDbType.Integer).Value = llevar.Idvalida;
            dataAdapter.SelectCommand.Parameters.Add("_idemp", NpgsqlDbType.Integer).Value = llevar.IdvalidaEm;
            dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Integer).Value = llevar.Estado;



            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (llevar != null)
            {
                conectar.Close();
            }
        }
        return datosR;
    }
    public DataTable ValidaPuntosE(Elaboral llevar)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_validar_puntos_existentes_Emp", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_idasp", NpgsqlDbType.Integer).Value = llevar.Idvalida;
            dataAdapter.SelectCommand.Parameters.Add("_idemp", NpgsqlDbType.Integer).Value = llevar.IdvalidaEm;
            dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Integer).Value = llevar.Estado;



            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (llevar != null)
            {
                conectar.Close();
            }
        }
        return datosR;
    }
}