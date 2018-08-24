using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Dofertas
/// </summary>
public class Dofertas
{
    public Dofertas()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public DataTable MostrarOfertas()//
    {
        DataTable user = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_mostrar_ofertas", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conectar.Open();
            dataAdapter.Fill(user);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conectar != null)
            {
                conectar.Close();//
            }
        }
        return user;
    }
    public DataTable BuscarOfertas(String buscar)
    {
        DataTable user = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_buscar_ofertas", conectar);
            dataAdapter.SelectCommand.Parameters.Add("_buscar", NpgsqlDbType.Text).Value =buscar;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.Fill(user);

        }
        catch (Exception Ex)
        {
           
            throw Ex;
        }
        finally
        {
            if (conectar != null)
            {
                conectar.Close();//
            }
        }
        return user;
    }
    


    public DataTable obtenerOferta(Eofertas id)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.obtener_datosoferta", conection);
            dataAdapter.SelectCommand.Parameters.Add("_idofertas", NpgsqlDbType.Integer).Value = id.Idoferta;
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
    public DataTable obtenerEmpresa(EDatos idE)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.obtener_datosemp", conection);
            dataAdapter.SelectCommand.Parameters.Add("_idempresa", NpgsqlDbType.Integer).Value = idE.Idempresa;
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
    
    public DataTable BuscarAspirantes(String buscara)
    {
        DataTable user = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.buscar_aspirantes", conectar);
            dataAdapter.SelectCommand.Parameters.Add("_buscara", NpgsqlDbType.Text).Value = buscara;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.Fill(user);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conectar != null)
            {
                conectar.Close();//
            }
        }
        return user;
    }
public DataTable Mensaje(Eofertas mensaje)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.mensaje_oferta", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_mensaje", NpgsqlDbType.Text).Value = mensaje.Mensaje;
            dataAdapter.SelectCommand.Parameters.Add("_idaspirante", NpgsqlDbType.Integer).Value = mensaje.Idaspirante;
            dataAdapter.SelectCommand.Parameters.Add("_idoferta", NpgsqlDbType.Integer).Value = mensaje.Idoferta;
            dataAdapter.SelectCommand.Parameters.Add("_fecha_solicitud", NpgsqlDbType.Date).Value = mensaje.Fechasolicitud;
            dataAdapter.SelectCommand.Parameters.Add("_sesion", NpgsqlDbType.Text).Value = mensaje.Sesion;



            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (mensaje != null)
            {
                conectar.Close();
            }
        }
        return datosR;
    }
    public DataTable ValidarAgendame(Eofertas validar)//
    {
        DataTable datosR = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_validar_quiero_agendarme", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = validar.Idprueba;



            conectar.Open();
            dataAdapter.Fill(datosR);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (validar != null)
            {
                conectar.Close();
            }
        }
        return datosR;
    }

}