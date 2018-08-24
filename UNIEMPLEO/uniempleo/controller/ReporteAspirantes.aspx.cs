using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_ReporteAspirantes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            InformacionAspi reporte = ObtenerInforme();
            CRS_aspi.ReportDocument.SetDataSource(reporte);
            CRV_Reportea.ReportSource = CRS_aspi;
        }
        catch (Exception)
        {

            throw;
        }
    }

    protected InformacionAspi ObtenerInforme()
    {
        DataRow fila;  //dr
        DataTable informacion = new DataTable(); //dt
        InformacionAspi datos = new InformacionAspi();

        informacion = datos.Tables["Aspirantes"];
        DAspirantes persona = new DAspirantes();

        DataTable intermedio = persona.obtenerAspiranteRep();

        for (int i = 0; i < intermedio.Rows.Count; i++)
        {
            fila = informacion.NewRow();

            fila["Nombre"] = intermedio.Rows[i]["nombre_aspirante"].ToString();
            fila["Apellido"] = intermedio.Rows[i]["apellido_aspirante"].ToString();
            fila["Cedula"] = intermedio.Rows[i]["documento"].ToString();
            fila["Direccion"] = intermedio.Rows[i]["direccion_asp"].ToString();
            fila["Telefono"] = intermedio.Rows[i]["telefono_asp"].ToString();
            fila["Foto"] = streamFile(intermedio.Rows[i]["foto"].ToString());

            informacion.Rows.Add(fila);
        
        }

        return datos;
    }
    private byte[] streamFile(string filename)
    {
        FileStream fs;
        if (!filename.Equals(""))
        {
            fs = new FileStream(Server.MapPath(filename), FileMode.Open, FileAccess.Read);
        }
        else
        {
            fs = new FileStream(Server.MapPath("~/Imagenes/noexiste.jpg"), FileMode.Open, FileAccess.Read);
        }

        // Create a byte array of file stream length
        byte[] ImageData = new byte[fs.Length];

        //Read block of bytes from stream into the byte array
        fs.Read(ImageData, 0, System.Convert.ToInt32(fs.Length));

        //Close the File Stream
        fs.Close();
        return ImageData; //return the byte data
    }

}
