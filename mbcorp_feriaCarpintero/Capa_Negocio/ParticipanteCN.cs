using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;
using Capa_Entidad;
using System.Data;

namespace Capa_Negocio
{
   public class ParticipanteCN
    {
        ParticipanteDAO partDAO = new ParticipanteDAO();
        public bool participanteInsertCN(ParticipanteCE partCE)
        {
            return partDAO.participanteInsert(partCE);
        }

        public DataTable departamentoGet()
        {
            return partDAO.departamentoGet();
        }
        public DataTable provinciaGet(string idDep)
        {
            return partDAO.provinciaGet(idDep);
        }
        public DataTable distritoGet(string idDep, string idProv)
        { 
            return partDAO.distritoGet(idDep, idProv);
        } 


    }
}
