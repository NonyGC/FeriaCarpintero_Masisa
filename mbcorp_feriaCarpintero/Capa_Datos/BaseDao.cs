using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Capa_Datos
{
    public class BaseDao
    {
        protected SqlConnection conexion()
        {
            SqlConnection conexionValue = new SqlConnection();

            if (conexionValue.State == ConnectionState.Open){
                conexionValue.Close();
            }

            conexionValue.ConnectionString = ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;

            try{

                conexionValue.Open();

            }catch (Exception ex){

            }
            return conexionValue;
        }
    }
}
