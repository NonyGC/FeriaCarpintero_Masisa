using Capa_Entidad;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using Telerik.WinControls;

namespace Capa_Datos
{
    public class ParticipanteDAO : BaseDao
    {
        public DataTable departamentoGet()
        {
            DataTable dtDepartamento = new DataTable();
            SqlCommand cmd = CommandText("SELECT idDep,Departamento,codTelef FROM ubDepartamento");
            dtDepartamento = GetDataTable(cmd);
            return dtDepartamento;
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

        public DataTable getTableEventoParticipante(string codEvento)
        {
            DataTable tbl = new DataTable();
            SqlCommand cmd = CommandProcedure("uspListadoParticipanteEvento");
            cmd.Parameters.AddWithValue("@evento", codEvento);
            tbl = GetDataTable(cmd);
            return tbl;
        }

        public DataTable fichaCapacitacion_ParticipanteAutocomplete()
        {
            DataTable tbl = new DataTable();
            SqlCommand cmd = CommandText("SELECT codigo,RTRIM(CONCAT(apellido_pat,' ',apellido_mat,' ',nombres,' ',dni_ce,' ',DBASE)) participante FROM [participanteCite]");
            tbl = GetDataTable(cmd);
            return tbl;
        }

        public bool eventoInsert(string codigo, string descripcion)
        {
            try
            {
                int i = 0;
                SqlCommand cmd = CommandProcedure("uspEventoInsert");
                string[] env = { codigo, descripcion };
                cmd = Parameters(cmd, env);
                i = cmd.ExecuteNonQuery();
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


        public bool eventoParticipanteInsertCN(string codEvento, string codigo)
        {
            try
            {
                int i = 0;
                SqlCommand cmd = CommandProcedure("uspEventoParticipanteInsert");
                string[] env = { codEvento, codigo };
                cmd = Parameters(cmd, env);
                i = cmd.ExecuteNonQuery();
                return i > 0 ? true : false;
            }
            catch (SqlException ex)
            {
                RadMessageBox.SetThemeName("VisualStudio2012Light");
                if (ex.Number== 2627)
                {
                    RadMessageBox.Show("YA SE ENCUENTRA REGISTRADO EN EL EVENTO", "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Exclamation);
                    return false;
                }
                RadMessageBox.Show(ex.Message);
                return false;
            }
            finally
            {
                CloseDB();
            }
        }

        public string eventoCodAutogenerado()
        {
            SqlCommand cmd = CommandProcedure("uspEventoCodigo");
            return Convert.ToString(cmd.ExecuteScalar());
        }

        public object eventoParticipante_getEventotbl()
        {
            DataTable tbl = new DataTable();
            SqlCommand cmd = CommandText("SELECT [codigo],[descripcion],[createat]  FROM [DBFERIACITEMASISA].[dbo].[evento]");
            tbl = GetDataTable(cmd);
            return tbl;
        }

        public string participanteCodAutogenerado()
        {
            SqlCommand cmd = CommandProcedure("uspParticipanteCodigo");
            return Convert.ToString(cmd.ExecuteScalar());
        }

        public DataTable ParticipanteGetRow(string codpart)
        {
            DataTable tbl = new DataTable();
            SqlCommand cmd = CommandText("SELECT * FROM [participanteCite] WHERE [codigo]=@codPar");
            cmd.Parameters.AddWithValue("@codPar", codpart);
            tbl = GetDataTable(cmd);
            return tbl;
        }

        public bool participanteInsert(ParticipanteCE part)
        {
            try
            {
                int i = 0;
                SqlCommand cmd = CommandProcedure("uspParticipanteCiteInsert");
                var _ = part;
                string[] env = { _.codpart, _.apePat, _.apeMat, _.nombres, _.fechaNaci, _.EstadoCiv, _.dnice, _.sexo, _.direccion, _.ubigeo, _.telFijo, _.telMovil, _.opeMovil, _.telFijo2, _.telMovil2, _.opeMovil2, _.correo, _.profeOcupa, _.proocuesp, _.redm, _.redminteresado, _.comoseEntero };
                cmd = Parameters(cmd, env);
                i = cmd.ExecuteNonQuery();
                return i > 0 ? true : false;
            }
            catch (SqlException ex)
            {
                RadMessageBox.SetThemeName("VisualStudio2012Light");
                if (ex.Number == 2627)
                {
                    RadMessageBox.Show("YA ESTA REGISTRADO EN LA BASE DE DATOS", "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Exclamation);
                    return false;
                }
                RadMessageBox.Show(ex.Message);
                return false;
            }
            finally
            {
                CloseDB();
            }
        }

        public bool participanteUpdateCN(ParticipanteCE partCE)
        {
            try
            {
                int i = 0;
                SqlCommand cmd = CommandProcedure("uspParticipanteCiteUpdate");
                var _ = partCE;
                string[] env = { _.codpart, _.apePat, _.apeMat, _.nombres, _.fechaNaci, _.EstadoCiv, _.dnice, _.sexo, _.direccion, _.ubigeo, _.telFijo, _.telMovil, _.opeMovil, _.telFijo2, _.telMovil2, _.opeMovil2, _.correo, _.profeOcupa, _.proocuesp, _.redm, _.redminteresado, _.comoseEntero };
                cmd = Parameters(cmd, env);
                i = cmd.ExecuteNonQuery();
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

        public DataTable provinciaGet(string idDep)
        {
            DataTable dtProvincia = new DataTable();
            SqlCommand cmd = CommandText("SELECT idProv,idDep,Provincia FROM ubProvincia where idDep=@idDep");
            cmd.Parameters.AddWithValue("@idDep", idDep);
            dtProvincia = GetDataTable(cmd);
            return dtProvincia;
        }
    }
}