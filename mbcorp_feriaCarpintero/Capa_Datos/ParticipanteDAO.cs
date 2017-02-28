using Capa_Entidad;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;

namespace Capa_Datos
{
   public class ParticipanteDAO : BaseDao
    {

        public bool participanteInsert(ParticipanteCE part)
        {
            try
            {
                int i=0;
                SqlCommand cmd = CommandProcedure("uspParticipanteInsert");
                var _ = part;
                string[] env = { _.codpart, _.apePat, _.apeMat, _.nombres, _.sexo, _.fechaNaci, _.dnice, _.direccion, _.ubigeo, _.telFijo, _.telMovil, _.opeMovil, _.telFijo2, _.telMovil2, _.opeMovil2, _.correo, _.profeOcupa, _.proocuesp };
                cmd = Parameters(cmd,env);
                i =cmd.ExecuteNonQuery();
                return i > 0 ? true : false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            finally
            {
                CloseDB();
            }
        }

        public DataTable departamentoGet()
        {
            DataTable dtDepartamento = new DataTable();
            SqlCommand cmd = CommandText("SELECT idDep,Departamento,codTelef FROM ubDepartamento");
            dtDepartamento = GetDataTable(cmd);
            return dtDepartamento;
        }

        public DataTable provinciaGet(string idDep)
        {
            DataTable dtProvincia = new DataTable();
            SqlCommand cmd = CommandText("SELECT idProv,idDep,Provincia FROM ubProvincia where idDep=@idDep");
            cmd.Parameters.AddWithValue("@idDep", idDep);
            dtProvincia = GetDataTable(cmd);
            return dtProvincia;
        }
        public DataTable distritoGet(string idDep, string idProv)
        {
            DataTable dtDistrito = new DataTable();
            SqlCommand cmd = CommandText("SELECT idDist,idProv,idDep,Distrito FROM ubDistrito WHERE idDep=@idDep and idProv=@idPro");
            cmd.Parameters.AddWithValue("@idDep", idDep);
            cmd.Parameters.AddWithValue("@idPro", idProv);
            dtDistrito = GetDataTable(cmd);
            return dtDistrito;
        } 

    }

}
