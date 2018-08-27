using Npgsql;
using NpgsqlTypes;
using System;
using System.Configuration;
using System.Data;

public class DIDatos
{
    public DIDatos()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    
    public void Pqr(EDatos EPqrs)//
    {
        DataTable datosP = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.pqr", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_nombrepqr", NpgsqlDbType.Text).Value = EPqrs.NombrePqr;
            dataAdapter.SelectCommand.Parameters.Add("_correopqr", NpgsqlDbType.Text).Value = EPqrs.CorreoPqr;
            dataAdapter.SelectCommand.Parameters.Add("_comentariopqr", NpgsqlDbType.Text).Value = EPqrs.Asunto;



            conectar.Open();
            dataAdapter.Fill(datosP);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (EPqrs != null)
            {
                conectar.Close();
            }
        }

    }
    public DataTable RegistraAspirante(Euser enviarR1)
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_registrar_aspirante", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar).Value = enviarR1.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Varchar).Value = enviarR1.Apellido;
            dataAdapter.SelectCommand.Parameters.Add("_nacimiento", NpgsqlDbType.Date).Value = enviarR1.Nacimiento;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar).Value = enviarR1.Direccion;
            dataAdapter.SelectCommand.Parameters.Add("_celular", NpgsqlDbType.Varchar).Value = enviarR1.Celular;
            dataAdapter.SelectCommand.Parameters.Add("_documento", NpgsqlDbType.Varchar).Value = enviarR1.Documento;
            dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Varchar).Value = enviarR1.Estadocivil;
            dataAdapter.SelectCommand.Parameters.Add("_sexo", NpgsqlDbType.Varchar).Value = enviarR1.Sexo;
            dataAdapter.SelectCommand.Parameters.Add("_foto", NpgsqlDbType.Varchar).Value = enviarR1.Foto;
            dataAdapter.SelectCommand.Parameters.Add("_sesion", NpgsqlDbType.Varchar).Value = enviarR1.Sesion1;
            dataAdapter.SelectCommand.Parameters.Add("_idaspirante", NpgsqlDbType.Integer).Value = enviarR1.Id;
            dataAdapter.SelectCommand.Parameters.Add("_e_stado", NpgsqlDbType.Integer).Value = enviarR1.Estado;
            conection.Open();
            dataAdapter.Fill(Usuario);
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return Usuario;
    }
    public void FormacionA(EDatos doc)
    {
        DataTable documentos = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.formacion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            dataAdapter.SelectCommand.Parameters.Add("_titulo", NpgsqlDbType.Text).Value = doc.Titulo;
            dataAdapter.SelectCommand.Parameters.Add("_lugarg", NpgsqlDbType.Text).Value = doc.LugarG;
            dataAdapter.SelectCommand.Parameters.Add("_fechag", NpgsqlDbType.Timestamp).Value = doc.FechaG;
            dataAdapter.SelectCommand.Parameters.Add("_telefonog", NpgsqlDbType.Text).Value = doc.TelefonoG;
            dataAdapter.SelectCommand.Parameters.Add("_documentos", NpgsqlDbType.Varchar).Value = doc.Certificacion;
            dataAdapter.SelectCommand.Parameters.Add("_habilidad1", NpgsqlDbType.Text).Value = doc.Habilidad1;
            dataAdapter.SelectCommand.Parameters.Add("_habilidad2", NpgsqlDbType.Text).Value = doc.Habilidad2;
            dataAdapter.SelectCommand.Parameters.Add("_habilidad3", NpgsqlDbType.Text).Value = doc.Habilidad3;
            dataAdapter.SelectCommand.Parameters.Add("_idregistro", NpgsqlDbType.Integer).Value = doc.Idregistro;



            conection.Open();
            dataAdapter.Fill(documentos);
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

    }
    public void TipoE(EDatos ETipoE)//
    {
        DataTable datosT = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_tipo_empleo", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            dataAdapter.SelectCommand.Parameters.Add("_id_registro", NpgsqlDbType.Integer).Value = ETipoE.Idregistro;
            dataAdapter.SelectCommand.Parameters.Add("_terminoe", NpgsqlDbType.Text).Value = ETipoE.TerminoE;
            dataAdapter.SelectCommand.Parameters.Add("_horarioe", NpgsqlDbType.Text).Value = ETipoE.HorarioE;
            dataAdapter.SelectCommand.Parameters.Add("_tiempoe", NpgsqlDbType.Text).Value = ETipoE.TiempoE;
            dataAdapter.SelectCommand.Parameters.Add("_hoja", NpgsqlDbType.Varchar).Value = ETipoE.Hoja;
            dataAdapter.SelectCommand.Parameters.Add("_sesion", NpgsqlDbType.Text).Value = ETipoE.Session;


            conectar.Open();
            dataAdapter.Fill(datosT);

        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (ETipoE != null)
            {
                conectar.Close();
            }
        }

    }
    public void HojaEmpresa(EDatos emp)
    {
        DataTable documentos = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.hojaEm", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


            dataAdapter.SelectCommand.Parameters.Add("_idempresa", NpgsqlDbType.Integer).Value = emp.Idempresa;
            dataAdapter.SelectCommand.Parameters.Add("_nombreem", NpgsqlDbType.Text).Value = emp.NombreE;
            dataAdapter.SelectCommand.Parameters.Add("_formaj", NpgsqlDbType.Text).Value = emp.FormaJ;
            dataAdapter.SelectCommand.Parameters.Add("_fechacons", NpgsqlDbType.Timestamp).Value = emp.FechaCons;
            dataAdapter.SelectCommand.Parameters.Add("_direccione", NpgsqlDbType.Text).Value = emp.DireccionE;
            dataAdapter.SelectCommand.Parameters.Add("_telefonoe", NpgsqlDbType.Text).Value = emp.TelefonoE;
            dataAdapter.SelectCommand.Parameters.Add("_sectore", NpgsqlDbType.Text).Value = emp.SectorE;
            dataAdapter.SelectCommand.Parameters.Add("_numemp", NpgsqlDbType.Text).Value = emp.NumEmpleados;
            dataAdapter.SelectCommand.Parameters.Add("_nit", NpgsqlDbType.Text).Value = emp.Nit;
            dataAdapter.SelectCommand.Parameters.Add("_pais", NpgsqlDbType.Text).Value = emp.Pais;
            dataAdapter.SelectCommand.Parameters.Add("_departamento", NpgsqlDbType.Text).Value = emp.Departamento;
            dataAdapter.SelectCommand.Parameters.Add("_ciudad", NpgsqlDbType.Text).Value = emp.Ciudad;
            dataAdapter.SelectCommand.Parameters.Add("_tipoemp", NpgsqlDbType.Text).Value = emp.TipoE;
            dataAdapter.SelectCommand.Parameters.Add("_pagina", NpgsqlDbType.Text).Value = emp.Pagina;
            dataAdapter.SelectCommand.Parameters.Add("_logo", NpgsqlDbType.Text).Value = emp.Logo;


            conection.Open();
            dataAdapter.Fill(documentos);
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

    }
}