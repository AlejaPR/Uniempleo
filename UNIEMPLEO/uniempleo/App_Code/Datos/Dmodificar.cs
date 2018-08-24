using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Dmodificar
/// </summary>
public class Dmodificar
{
    public Dmodificar()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public DataTable modificarPerfil( Int32 idper) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_datosp", conexion);
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

    public DataTable Editardp(Int32 Idpm, String Nombre, String Apellido, String Nacimiento, String Direccion, String Celular, String Estado, String documento, String sexo, Int32 id_aspirante, String nombre_aspirante, String apellido_aspirante, String fecha_nacim, String direccion_asp, String telefono_asp, String estado_civil)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_modificar_datos_personales", conection);

            dataAdapter.SelectCommand.Parameters.Add("_id_aspi", NpgsqlDbType.Integer).Value = id_aspirante;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = nombre_aspirante;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Text).Value = apellido_aspirante;
            dataAdapter.SelectCommand.Parameters.Add("_fecha", NpgsqlDbType.Date).Value = fecha_nacim;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Text).Value = direccion_asp;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Text).Value = telefono_asp;
            dataAdapter.SelectCommand.Parameters.Add("_estadoc", NpgsqlDbType.Text).Value = estado_civil;
            dataAdapter.SelectCommand.Parameters.Add("_documento", NpgsqlDbType.Text).Value = documento;
            dataAdapter.SelectCommand.Parameters.Add("_sexo", NpgsqlDbType.Text).Value = sexo;
            
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
    public DataTable obtenerFacae(Int32 idper) //Int32 _id_asp
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
    public DataTable obtenerExpL(Int32 idper) //Int32 _id_asp
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

    public DataTable obtenerTipoe(Int32 idper) //Int32 _id_asp
    {
        DataTable perfil = new DataTable();
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_tipoe", conexion);
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
    public DataTable EditarFacae(Int32 Idf, String titulo, String Lugar, String Telefono, String Habi1, String Habi2, String Habi3, Int32 id_formacion, String habilidad1, String habilidad2, String habilidad3, String lugar_grado, String telefono_lugar)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_modificar_facae", conection);

            dataAdapter.SelectCommand.Parameters.Add("_id_for", NpgsqlDbType.Integer).Value = id_formacion;
            dataAdapter.SelectCommand.Parameters.Add("_titulo", NpgsqlDbType.Text).Value = titulo;
            dataAdapter.SelectCommand.Parameters.Add("_lugar", NpgsqlDbType.Text).Value = lugar_grado;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Text).Value = telefono_lugar;
            dataAdapter.SelectCommand.Parameters.Add("_habi1", NpgsqlDbType.Text).Value = habilidad1;
            dataAdapter.SelectCommand.Parameters.Add("_habi2", NpgsqlDbType.Text).Value = habilidad2;
            dataAdapter.SelectCommand.Parameters.Add("_habi3", NpgsqlDbType.Text).Value = habilidad3;
          

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

    public DataTable EditarExpl(Int32 Idexp, String nombre, String cargo, String jefe, String telefono, String funcion, Int32  id_experiencia, String nombre_empresa, String funciones)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_modificar_expl", conection);

            dataAdapter.SelectCommand.Parameters.Add("_id_exp", NpgsqlDbType.Integer).Value = id_experiencia;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = nombre_empresa;
            dataAdapter.SelectCommand.Parameters.Add("_cargo", NpgsqlDbType.Text).Value = cargo;
            dataAdapter.SelectCommand.Parameters.Add("_jefe", NpgsqlDbType.Text).Value = jefe;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Text).Value = telefono;
            dataAdapter.SelectCommand.Parameters.Add("_funcion", NpgsqlDbType.Text).Value = funciones;



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
    public DataTable EditarTipoe(Int32 Idtipo, String termino, String horario, String tiempo, Int32 id_tipo_empleo, String termino_empleo, String horario_empleo, String tiempo_empleo)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_modificar_tipoe", conection);

            dataAdapter.SelectCommand.Parameters.Add("_id_tipo", NpgsqlDbType.Integer).Value = id_tipo_empleo;
            dataAdapter.SelectCommand.Parameters.Add("_termino", NpgsqlDbType.Text).Value = termino_empleo;
            dataAdapter.SelectCommand.Parameters.Add("_horario", NpgsqlDbType.Text).Value = horario_empleo;
            dataAdapter.SelectCommand.Parameters.Add("_tiempo", NpgsqlDbType.Text).Value = tiempo_empleo;




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

        public DataTable obtenerEmpresa(Int32 idper) //Int32 _id_asp
        {
            DataTable perfil = new DataTable();
            NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_obtener_empresag", conexion);
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

    public DataTable EditarEmpresa(Int32 Id, String nombre, String forma, String direccion, String telefono, String sector, String empleados,String nit, String tipo, String id_empresa, String  nombre_empresa, String forma_juridica,String  direccion_empresa,String  telefono_empresa, String  sector_economico, String num_empleados, String tipo_empresa)
    {
        DataTable datosE = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_modificar_empresa", conection);

            dataAdapter.SelectCommand.Parameters.Add("_id_emp", NpgsqlDbType.Integer).Value = id_empresa;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = nombre_empresa;
            dataAdapter.SelectCommand.Parameters.Add("_forma", NpgsqlDbType.Text).Value = forma_juridica;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Text).Value = direccion_empresa;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Text).Value = telefono_empresa;
            dataAdapter.SelectCommand.Parameters.Add("_sector", NpgsqlDbType.Text).Value = sector_economico;
            dataAdapter.SelectCommand.Parameters.Add("_empleados", NpgsqlDbType.Integer).Value = num_empleados;
            dataAdapter.SelectCommand.Parameters.Add("_nit", NpgsqlDbType.Text).Value = nit;
            dataAdapter.SelectCommand.Parameters.Add("_tipo", NpgsqlDbType.Text).Value = tipo_empresa;
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

