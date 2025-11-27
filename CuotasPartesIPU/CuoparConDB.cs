using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CuotasPartesIPU
{
    public class CuoparConDB
    {
        public DataTable ConsultarPrediosPorDocumento(string Documento)
        {
            string strConeccion = ConfigurationManager.ConnectionStrings["cuotaspartes_ConnectionString"].ConnectionString;
            DataTable dt = new DataTable();

            using (SqlConnection sqlconeccion = new SqlConnection(strConeccion))
            {
                try
                {
                    using (SqlCommand cmde = new SqlCommand("PA_CONSULTAR_PREDIO_POR_DOCUMENTO", sqlconeccion))
                    {
                        cmde.CommandType = CommandType.StoredProcedure;
                        cmde.Parameters.AddWithValue("@P_PrePrsDoc", Documento);

                        using (SqlDataAdapter da = new SqlDataAdapter(cmde))
                        {
                            da.Fill(dt);
                        }
                    }
                }
                catch (Exception ex)
                {
                    dt = new DataTable("Error");
                    dt.Columns.Add("MensajeError", typeof(string));
                    dt.Rows.Add("Error al consultar cargues de archivos ESSA: " + ex.Message);
                }
            }

            return dt;
        }

    }
}