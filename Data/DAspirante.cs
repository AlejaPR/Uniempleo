﻿using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace Data
{
    public class DAspirante
    {

        public DataTable Exlaboral(UAspirante expl )//
        {
            DataTable datosR = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_exp_laboral", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


                dataAdapter.SelectCommand.Parameters.Add("_nombreemp", NpgsqlDbType.Text).Value = expl.Nombre;
                dataAdapter.SelectCommand.Parameters.Add("_cargo", NpgsqlDbType.Text).Value = expl.Cargo;
                dataAdapter.SelectCommand.Parameters.Add("_jefe", NpgsqlDbType.Text).Value = expl.Jefe;
                dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Text).Value = expl.Telefono;
                dataAdapter.SelectCommand.Parameters.Add("_funcionesd", NpgsqlDbType.Text).Value = expl.Funcion;
                dataAdapter.SelectCommand.Parameters.Add("_id_registro", NpgsqlDbType.Integer).Value = expl.Idr;
                dataAdapter.SelectCommand.Parameters.Add("_fechainicio", NpgsqlDbType.Date).Value = expl.Finicio;
                dataAdapter.SelectCommand.Parameters.Add("_fechafin", NpgsqlDbType.Date).Value = expl.Ffin;



                conectar.Open();
                dataAdapter.Fill(datosR);

            }
            catch (Exception Ex)
            {
                throw Ex;
            }

            return datosR;
 
        }

        public DataTable FormacionA(UAspirante aspif)
        {
            DataTable documentos = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.formacion", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


                dataAdapter.SelectCommand.Parameters.Add("_titulo", NpgsqlDbType.Text).Value = aspif.Titulo ;
                dataAdapter.SelectCommand.Parameters.Add("_lugarg", NpgsqlDbType.Text).Value = aspif.Lugar;
                dataAdapter.SelectCommand.Parameters.Add("_fechag", NpgsqlDbType.Timestamp).Value = aspif.Fecha;
                dataAdapter.SelectCommand.Parameters.Add("_telefonog", NpgsqlDbType.Text).Value = aspif.Telefono;
                dataAdapter.SelectCommand.Parameters.Add("_documentos", NpgsqlDbType.Varchar).Value = aspif.Documento;
                dataAdapter.SelectCommand.Parameters.Add("_habilidad1", NpgsqlDbType.Text).Value = aspif.Habilidad1;
                dataAdapter.SelectCommand.Parameters.Add("_habilidad2", NpgsqlDbType.Text).Value = aspif.Habilidad2;
                dataAdapter.SelectCommand.Parameters.Add("_habilidad3", NpgsqlDbType.Text).Value = aspif.Habilidad3;
                dataAdapter.SelectCommand.Parameters.Add("_idregistro", NpgsqlDbType.Integer).Value = aspif.Idr;



                conection.Open();
                dataAdapter.Fill(documentos);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }

            return documentos;

        }


    }
}