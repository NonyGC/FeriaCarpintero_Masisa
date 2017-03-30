using Capa_Negocio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using Telerik.WinControls.UI;

namespace Capa_Presentacion
{
    
    public partial class FrmListado : Telerik.WinControls.UI.RadForm
    {
        private string codEvento;
        ParticipanteCN partCN = new ParticipanteCN();
        public FrmListado()
        {
            InitializeComponent();
        }

        public FrmListado(string codEvento)
        {
            InitializeComponent();
            this.codEvento = codEvento;
        }

        private void frmListado_Load(object sender, EventArgs e)
        {
            grvListado.MultiSelect = true;
            grvListado.SelectionMode = GridViewSelectionMode.FullRowSelect;
            DataTable tbl = new DataTable();
            tbl = partCN.getTableEventoParticipante(codEvento);
            grvListado.DataSource = tbl;
            lblTotalParticipante.Text=tbl.Rows.Count.ToString();

        }
    }
}
