using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;

namespace Data
{
    public class DPrincipal
    {
        public DataTable VerificaR(String correo)
        {
            DataTable datosE = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_verificar_correo_registro", conection);
                dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Text).Value = correo;
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

        public DataTable VerificaU(String usuario)
        {
            DataTable datosE = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_verificar_usuario_registro", conection);
                dataAdapter.SelectCommand.Parameters.Add("_usuario", NpgsqlDbType.Text).Value = usuario;
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

        public DataTable Registro(String correo, String usuario, String clave, Int32 rol)//
        {
            DataTable datosR = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.registro", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


                dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Text).Value = correo;
                dataAdapter.SelectCommand.Parameters.Add("_usuario", NpgsqlDbType.Text).Value = usuario;
                dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Text).Value = clave;
                dataAdapter.SelectCommand.Parameters.Add("_rol", NpgsqlDbType.Integer).Value = rol;



                conectar.Open();
                dataAdapter.Fill(datosR);

            }
            catch (Exception Ex)
            {
                throw Ex;
            }

            return datosR;

        }
        public DataTable Pqr(String Nombre, String Correop, String Asunto)//
        {
            DataTable datospqr = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.pqr", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                dataAdapter.SelectCommand.Parameters.Add("_nombrepqr", NpgsqlDbType.Text).Value = Nombre;
                dataAdapter.SelectCommand.Parameters.Add("_correopqr", NpgsqlDbType.Text).Value = Correop;
                dataAdapter.SelectCommand.Parameters.Add("_comentariopqr", NpgsqlDbType.Text).Value = Asunto;



                conectar.Open();
                dataAdapter.Fill(datospqr);

            }
            catch (Exception Ex)
            {
                throw Ex;
            }

            return datospqr;
        }

    }
}
