using System;
using System.Data;
using System.Windows.Forms;
using Telerik.WinControls;
using System.Linq;

using Capa_Entidad;
using Capa_Negocio;
namespace Capa_Presentacion
{

    public partial class FrmParticipante : Telerik.WinControls.UI.RadForm
    {

        public FrmParticipante()
        {
            InitializeComponent();
            RadMessageBox.SetThemeName("VisualStudio2012Light");
        }

        ParticipanteCE partCE = new ParticipanteCE();
        ParticipanteCN partCN = new ParticipanteCN();

        bool partEst = false;
        DataTable tableDep = new DataTable();

        private void FrmParticipante_Load(object sender, EventArgs e)
        {
            tableDep = partCN.departamentoGet();
            cboDepartamento.DataSource = tableDep;
            cboDepartamento.ValueMember = "idDep";
            cboDepartamento.DisplayMember = "Departamento";
            ubigeoPredeterminado();
        }
        void ubigeoPredeterminado()
        {
            cboDepartamento.SelectedValue = "15";
            loadProvincia();
            loadDistrito();
            cboDistrito.SelectedIndex = -1;
        }


        protected bool CheckDate(string date)
        {
            DateTime Temp;

            if (DateTime.TryParse(date, out Temp) == true)
                return true;
            else
                return false;
        }
        private static RadioButton GetGrpBxCheckedBbt(GroupBox grpb)
        {
            RadioButton rButton = grpb.Controls.OfType<RadioButton>().Where(r => r.Checked == true).FirstOrDefault();
            return rButton;
        }
        private static void CheckBoxclear(GroupBox grpbx)
        {
            foreach (Control element in grpbx.Controls)
            {
                if (element is CheckBox)
                {
                    if (((CheckBox)element).Checked)
                    {
                        ((CheckBox)element).Checked = false;
                    }
                }
            }
        }

        private static void RadioButtonclear(GroupBox grpbx)
        {
            foreach (Control element in grpbx.Controls)
            {
                if (element is RadioButton)
                {
                    if (((RadioButton)element).Checked)
                    {
                        ((RadioButton)element).Checked = false;
                    }
                }
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            string codUbi = cboDepartamento.SelectedValue.ToString() + cboProvincia.SelectedValue.ToString() + cboDistrito.SelectedValue.ToString();

            string fechaN = string.Empty;
            fechaN = Convert.ToString(txtFechaN.Value);
            fechaN = CheckDate(fechaN) ? fechaN : string.Empty;

            {
                var _ = partCE;
                _.apePat = txtApePat.Text;
                _.apeMat = txtApeMat.Text;
                _.nombres = txtNombres.Text;
                _.fechaNaci = fechaN;
                _.EstadoCiv = cboEstadoCivil.Text;
                _.dnice = txtDNICE.Text.Trim();
                _.sexo = (GetGrpBxCheckedBbt(grpSexo) != null) ? GetGrpBxCheckedBbt(grpSexo).Text : string.Empty;
                _.direccion = txtDireccion.Text;
                _.ubigeo = codUbi;
                _.telFijo = txtCodtel1.Text + txtTelFijo.Text;
                _.telMovil = txtCodtelM1.Text + txtTelMovil.Text;
                _.opeMovil = cboOperadorM.Text;
                _.telFijo2 = txtCodtel2.Text + txtTelFijo2.Text;
                _.telMovil2 = txtCodtelM2.Text + txtTelMovil2.Text;
                _.opeMovil2 = cboOperadorM2.Text;
                _.correo = txtCorreo.Text;
                _.profeOcupa = cboProfesionOficion.SelectedText;
                _.proocuesp = txtProOcuEspeci.Text;
                _.redm = (chbRedM.Checked) ? "SI" : "NO";
            }
            partEst = partCN.participanteInsertCN(partCE) ? true : false;
            if (partEst)
            {
                RadMessageBox.Show("SE REGISTRO CORRECTAMENTE", "", MessageBoxButtons.OK, RadMessageIcon.Info);
                limpiar();
            }
            else
            {
                RadMessageBox.Show("OCURRIO UN ERROR,VUELVA A REGISTRAR", "", MessageBoxButtons.OK, RadMessageIcon.Error);
            }
        }
        void limpiar()
        {
            ubigeoPredeterminado();
            RadioButtonclear(grpSexo);
            txtCodtel1.Text = "(001)";
            txtCodtelM1.Text = "(001)";
            txtCodtel2.Text = "(001)";
            txtCodtelM2.Text = "(001)";
            txtTelFijo.Clear();
            txtTelFijo2.Clear();
            txtTelMovil.Clear();
            txtTelMovil2.Clear();
            cboOperadorM.SelectedIndex = -1;
            cboOperadorM2.SelectedIndex = -1;
            txtDireccion.Clear();
            txtApeMat.Clear();
            txtApePat.Clear();
            txtNombres.Clear();
            cboEstadoCivil.SelectedIndex = -1;
            txtDNICE.Clear();
            txtCorreo.Clear();
            cboProfesionOficion.SelectedIndex = -1;
            txtFechaN.Clear();
            txtProOcuEspeci.Clear();
        }

        private void cboDepartamento_SelectedIndexChanged(object sender, Telerik.WinControls.UI.Data.PositionChangedEventArgs e)
        {
        }

        private void cboDepartamento_Leave(object sender, EventArgs e)
        {
            loadProvincia();
        }

        public void loadProvincia()
        {
            string idDep = cboDepartamento.SelectedValue.ToString();
            if (!ReferenceEquals(idDep, string.Empty))
            {
                string codTel = tableDep.Select("idDep=" + idDep)[0][2].ToString();
                txtCodtel1.Text = "(" + codTel + ")";
                txtCodtel2.Text = "(" + codTel + ")";
                txtCodtelM1.Text = "(" + codTel + ")";
                txtCodtelM2.Text = "(" + codTel + ")";
                cboProvincia.DataSource = partCN.provinciaGet(idDep);
                cboProvincia.ValueMember = "idProv";
                cboProvincia.DisplayMember = "Provincia";
                txtTelFijo.Mask = "000-0000";
                txtTelFijo2.Mask = "000-0000";
                if (cboDepartamento.SelectedValue.ToString() != "15")
                {
                    txtTelFijo.Mask = "000-000";
                    txtTelFijo2.Mask = "000-000";
                }
            }
        }

        private void cboProvincia_Leave(object sender, EventArgs e)
        {
            loadDistrito();
        }
        public void loadDistrito()
        {
            string idDep = cboDepartamento.SelectedValue.ToString();
            string idProv = cboProvincia.SelectedValue.ToString();
            if (!ReferenceEquals(idDep, string.Empty) & !ReferenceEquals(idProv, string.Empty))
            {
                idDep = cboDepartamento.SelectedValue.ToString();
                cboDistrito.DataSource = partCN.distritoGet(idDep, idProv);
                cboDistrito.ValueMember = "idDist";
                cboDistrito.DisplayMember = "Distrito";
            }
        }

        private void cboDepartamento_SelectedValueChanged(object sender, EventArgs e)
        {
            cboProvincia.DataSource = null;
            cboDistrito.DataSource = null;
        }

        private void cboProvincia_SelectedValueChanged(object sender, EventArgs e)
        {
            cboDistrito.DataSource = null;
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        private void grp_Enter(object sender, EventArgs e)
        {

        }
    }
}
