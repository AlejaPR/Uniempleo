using Npgsql;
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
        public DataTable RegistraAspirante(UAspirante enviarR1)
        {
            DataTable Usuario = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("uniempleo.f_registrar_aspirante", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar).Value = enviarR1.Nombre;
                dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Varchar).Value = enviarR1.Apellido;
                dataAdapter.SelectCommand.Parameters.Add("_nacimiento", NpgsqlDbType.Date).Value = enviarR1.FechaNacimiento;
                dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar).Value = enviarR1.Direccion;
                dataAdapter.SelectCommand.Parameters.Add("_celular", NpgsqlDbType.Varchar).Value = enviarR1.Celular;
                dataAdapter.SelectCommand.Parameters.Add("_documento", NpgsqlDbType.Varchar).Value = enviarR1.Documento;
                dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Varchar).Value = enviarR1.Estadocivil;
                dataAdapter.SelectCommand.Parameters.Add("_sexo", NpgsqlDbType.Varchar).Value = enviarR1.Sexo;
                dataAdapter.SelectCommand.Parameters.Add("_foto", NpgsqlDbType.Varchar).Value = enviarR1.Foto;
                dataAdapter.SelectCommand.Parameters.Add("_sesion", NpgsqlDbType.Varchar).Value = enviarR1.Sesion;
                dataAdapter.SelectCommand.Parameters.Add("_idaspirante", NpgsqlDbType.Integer).Value = enviarR1.IdUser;
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
    }
}
