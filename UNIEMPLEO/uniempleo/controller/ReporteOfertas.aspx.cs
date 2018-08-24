using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_ReporteOfertas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            InformacionOferta reporte = ObtenerInforme();
            CRS_ofertas.ReportDocument.SetDataSource(reporte);
            CRV_Ofertas.ReportSource = CRS_ofertas;
        }
        catch (Exception)
        {

            throw;
        }

    }

    protected InformacionOferta ObtenerInforme()
    {
        DataRow fila;  //dr
        DataTable informacion = new DataTable(); //dt
        InformacionOferta datos = new InformacionOferta();

        informacion = datos.Tables["Ofertas"];
        DAspirantes persona = new DAspirantes();

        DataTable intermedio = persona.obtenerOfertas();

        for (int i = 0; i < intermedio.Rows.Count; i++)
        {
            fila = informacion.NewRow();

            fila["Nombre"] = intermedio.Rows[i]["nombre_oferta"].ToString();
            fila["Horario"] = intermedio.Rows[i]["horario"].ToString();
            fila["Sueldo"] = intermedio.Rows[i]["sueldo"].ToString();
            fila["Contrato"] = intermedio.Rows[i]["tipo_contrato"].ToString();
            fila["Descripcion"] = intermedio.Rows[i]["funciones"].ToString();
            informacion.Rows.Add(fila);

        }

        return datos;
    }
}

