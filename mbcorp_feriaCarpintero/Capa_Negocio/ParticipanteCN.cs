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
        public DataTable departamentoGet()
        {
            return partDAO.departamentoGet();
        }

        public DataTable distritoGet(string idDep, string idProv)
        {
            return partDAO.distritoGet(idDep, idProv);
        }

        public DataTable fichaCapacitacion_ParticipanteAutocomplete()
        {
            return partDAO.fichaCapacitacion_ParticipanteAutocomplete();
        }

        public string participanteCodAutogenerado()
        {
            return partDAO.participanteCodAutogenerado();
        }

        public DataTable ParticipanteGetRow(string codpart)
        {
            return partDAO.ParticipanteGetRow(codpart);
        }

        public bool participanteInsertCN(ParticipanteCE partCE)
        {
            return partDAO.participanteInsert(partCE);
        }
        public bool participanteUpdateCN(ParticipanteCE partCE)
        {
            return partDAO.participanteUpdateCN(partCE);
        }

        public DataTable provinciaGet(string idDep)
        {
            return partDAO.provinciaGet(idDep);
        }
    }
}
