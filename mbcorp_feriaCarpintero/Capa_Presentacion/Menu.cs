using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;

namespace Capa_Presentacion
{
    public partial class Menu : Telerik.WinControls.UI.RadForm
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void radButton1_Click(object sender, EventArgs e)
        {
            FrmParticipante frm = new FrmParticipante();
            frm.Show();
        }

        private void radButton2_Click(object sender, EventArgs e)
        {
            FrmEventoParticipante frm = new FrmEventoParticipante();
            frm.Show();
        }
    }
}
