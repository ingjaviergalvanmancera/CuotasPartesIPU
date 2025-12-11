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

        public string InsertarRadicadoEnCupatra(string TipoDoco, string Documento, string Nombre, string Apellido, 
            string Correo, string TipoDocumento, string Direccion, string Departamento, string Pais, string Descripcion,
            string Apoderado, string CertificadoLibertad, string Poder, string Ususario, string Estado)
        { 
            string strConeccion = ConfigurationManager.ConnectionStrings["cuotaspartes_ConnectionString"].ConnectionString;
            DataTable dt = new DataTable();

            using (SqlConnection sqlconeccion = new SqlConnection(strConeccion))
            {
                try
                {
                    using (SqlCommand cmde = new SqlCommand("PA_INSERTAR_RADICADO_CUPATRA", sqlconeccion))
                    {
                        cmde.CommandType = CommandType.StoredProcedure;
                        cmde.Parameters.AddWithValue("@P_CupTipDoc", TipoDoco);
                        cmde.Parameters.AddWithValue("@P_CupDoc", Documento);
                        cmde.Parameters.AddWithValue("@P_CupNom", Nombre);
                        cmde.Parameters.AddWithValue("P_CupApe", Apellido);
                        cmde.Parameters.AddWithValue("@P_CupCorreo", Correo);
                        cmde.Parameters.AddWithValue("@P_CupTipoPet", TipoDocumento);       
                        cmde.Parameters.AddWithValue("@P_CupDir", Direccion);
                        cmde.Parameters.AddWithValue("@P_CupDep", Departamento);
                        cmde.Parameters.AddWithValue("@P_CupPais", Pais);
                        cmde.Parameters.AddWithValue("@P_CupDesc", Descripcion);
                        cmde.Parameters.AddWithValue("@P_CupDocApo", Apoderado);
                        cmde.Parameters.AddWithValue("@P_CupLyT", CertificadoLibertad);
                        cmde.Parameters.AddWithValue("@P_CupPoder", Poder);
                        cmde.Parameters.AddWithValue("@P_CupIdUsu", Ususario);
                        cmde.Parameters.AddWithValue("@P_CupEsta", Estado);

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

            return "";
        }

    }
}
