using Capa_Entidad;
using Capa_Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Windows.Forms;
using Telerik.WinControls;
using Telerik.WinControls.UI;

namespace Capa_Presentacion
{
    public partial class FrmEventoParticipante : RadForm
    {
        private ParticipanteCE partCE = new ParticipanteCE();

        private ParticipanteCN partCN = new ParticipanteCN();

        private bool partEst;

        private DataTable tableDep = new DataTable();

        public FrmEventoParticipante()
        {
            InitializeComponent();
            RadMessageBox.SetThemeName("VisualStudio2012Light");
        }

        public void Autocomplete_LimitToList()
        {
            cboOperadorM.DropDownListElement.AutoCompleteAppend.LimitToList = true;
            cboOperadorM2.DropDownListElement.AutoCompleteAppend.LimitToList = true;
            cboEstadoCivil.DropDownListElement.AutoCompleteAppend.LimitToList = true;
            cboDepartamento.DropDownListElement.AutoCompleteAppend.LimitToList = true;
            cboProvincia.DropDownListElement.AutoCompleteAppend.LimitToList = true;
            cboDistrito.DropDownListElement.AutoCompleteAppend.LimitToList = true;
            cboSexo.DropDownListElement.AutoCompleteAppend.LimitToList = true;
            cboProfesionOficion.DropDownListElement.AutoCompleteAppend.LimitToList = true;
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
                cboDistrito.SelectedIndex = -1;
            }
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

        protected bool CheckDate(string date)
        {
            DateTime Temp;

            if (DateTime.TryParse(date, out Temp) == true)
                return true;
            else
                return false;
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

        private static RadioButton GetGrpBxCheckedBbt(GroupBox grpb)
        {
            RadioButton rButton = grpb.Controls.OfType<RadioButton>().Where(r => r.Checked == true).FirstOrDefault();
            return rButton;
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

        private static IEnumerable<string> Split(string str, int chunkSize)
        {
            return Enumerable.Range(0, str.Length / chunkSize)
                .Select(i => str.Substring(i * chunkSize, chunkSize));
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (cboEvento.SelectedIndex == -1)
            {
                RadMessageBox.Show("SELECCIONE UN EVENTO", "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Exclamation);
                return;
            }

            if (txtApePat.Text == string.Empty || txtApeMat.Text == string.Empty || txtNombres.Text == string.Empty)
            {
                RadMessageBox.Show("FALTA INGRESAR DATOS" + Environment.NewLine + "OBLIGATORIO : APELLIDOS Y NOMBRES", "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Exclamation);
                return;
            }
            string Depar = string.Empty, Prov = string.Empty, dist = string.Empty;

            if (cboDepartamento.SelectedValue != null)
            {
                Depar = cboDepartamento.SelectedValue.ToString();
            }
            if (cboProvincia.SelectedValue != null)
            {
                Prov = cboProvincia.SelectedValue.ToString();
            }
            if (cboDistrito.SelectedValue != null)
            {
                dist = cboDistrito.SelectedValue.ToString();
            }

            string codUbi = Depar + Prov + dist;

            string fechaN = string.Empty;
            fechaN = Convert.ToString(txtFechaN.Value);
            fechaN = CheckDate(fechaN) ? fechaN : string.Empty;
            string codigo = string.Empty;

            if (cboParticipanteSearch.SelectedIndex == -1)
            {
                codigo = partCN.participanteCodAutogenerado();
            }
            else
            {
                codigo = cboParticipanteSearch.SelectedValue.ToString();
            }

            {
                var _ = partCE;
                _.codpart = codigo;
                _.apePat = txtApePat.Text;
                _.apeMat = txtApeMat.Text;
                _.nombres = txtNombres.Text;
                _.fechaNaci = fechaN;
                _.EstadoCiv = cboEstadoCivil.Text;
                _.dnice = txtDNICE.Text.Trim();
                _.sexo = cboSexo.Text;
                _.direccion = txtDireccion.Text;
                _.ubigeo = codUbi;
                _.telFijo = txtCodtel1.Text + txtTelFijo.Text;
                _.telMovil = txtCodtelM1.Text + txtTelMovil.Text;
                _.opeMovil = cboOperadorM.Text;
                _.telFijo2 = txtCodtel2.Text + txtTelFijo2.Text;
                _.telMovil2 = txtCodtelM2.Text + txtTelMovil2.Text;
                _.opeMovil2 = cboOperadorM2.Text;
                _.correo = txtCorreo.Text;
                _.profeOcupa = cboProfesionOficion.Text;
                _.proocuesp = txtProOcuEspeci.Text;
                _.redm = (chbRedM.Checked) ? "SI" : "NO";
                _.redminteresado = (chbRedMInteresado.Checked) ? "SI" : "NO";
                _.comoseEntero = (GetGrpBxCheckedBbt(groupBox1) != null) ? GetGrpBxCheckedBbt(groupBox1).Text : string.Empty;
            }
            partEst = false;
            bool eventEst = false;
            string codEvento = cboEvento.SelectedValue.ToString();

            if (cboParticipanteSearch.SelectedIndex == -1)
            {
                partEst = partCN.participanteInsertCN(partCE) ? true : false;
                eventEst = partCN.eventoParticipanteInsertCN(codEvento, codigo);
                if (partEst)
                {
                    string strMensaje = string.Format("SE REGISTRO CORRECTAMENTE AL EVENTO{0}PARTICIPANTE : {1}{2}EVENTO : {3}", Environment.NewLine, codigo, Environment.NewLine, cboEvento.SelectedValue.ToString());
                    RadMessageBox.Show(strMensaje, "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Info);
                    limpiar();
                }

            }
            else
            {
                eventEst = partCN.eventoParticipanteInsertCN(codEvento, codigo);
                if (eventEst)
                {
                    string strMensaje = string.Format("SE REGISTRO CORRECTAMENTE AL EVENTO{0}PARTICIPANTE : {1}{2}EVENTO : {3}", Environment.NewLine, codigo, Environment.NewLine, cboEvento.SelectedValue.ToString());
                    RadMessageBox.Show(strMensaje, "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Info);
                    limpiar();
                    //}
                    //else
                    //{
                    //    RadMessageBox.Show("OCURRIO UN ERROR,VUELVA A INTENTAR", "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Error);
                }
            }

            
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        private void cboDepartamento_Leave_1(object sender, EventArgs e)
        {
            loadProvincia();
        }

        private void cboDepartamento_SelectedValueChanged(object sender, EventArgs e)
        {
            cboProvincia.DataSource = null;
            cboDistrito.DataSource = null;
        }

        private void cboParticipanteSearch_AutoComparer()
        {
            cboParticipanteSearch.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
            cboParticipanteSearch.DropDownListElement.AutoCompleteSuggest = new CustomAutoCompleteSuggestHelper(cboParticipanteSearch.DropDownListElement);
            cboParticipanteSearch.DropDownListElement.AutoCompleteSuggest.SuggestMode = SuggestMode.Contains;
        }

        private void cboParticipanteSearch_Enter(object sender, EventArgs e)
        {
            cboParticipanteSearch.DataSource = partCN.fichaCapacitacion_ParticipanteAutocomplete();
            cboParticipanteSearch.ValueMember = "codigo";
            cboParticipanteSearch.DisplayMember = "participante";
            cboParticipanteSearch.SelectedIndex = -1;
            limpiar();
        }

        private void cboParticipanteSearch_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (char.IsLetter(e.KeyChar))
            {
                e.KeyChar = char.ToUpper(e.KeyChar);
            }
        }

        private void cboParticipanteSearch_Leave(object sender, EventArgs e)
        {
            if (cboParticipanteSearch.SelectedIndex == -1)
            {
                //limpiar();
                pasarDatocboparticipante_aTxtApeyNom();
                return;
            }
            //limpiar();
            string codpart = cboParticipanteSearch.SelectedValue.ToString();
            DataTable dtp = new DataTable();
            dtp = partCN.ParticipanteGetRow(codpart);
            var _ = dtp;
            {
                txtApePat.Text = _.Rows[0]["apellido_pat"].ToString();
                txtApeMat.Text = _.Rows[0]["apellido_mat"].ToString();
                txtNombres.Text = _.Rows[0]["nombres"].ToString();
                cboSexo.SelectedValue = _.Rows[0]["sexo"].ToString();
                txtFechaN.Text = _.Rows[0]["fecha_nacimiento"].ToString();
                txtDNICE.Text = _.Rows[0]["dni_ce"].ToString();
                txtDireccion.Text = _.Rows[0]["direccion"].ToString();
                string ubiCod;
                ubiCod = _.Rows[0]["ubigeo"].ToString().Trim();
                string[] ubigeo;
                ubigeo = Split(ubiCod, 2).ToArray();
                switch (ubigeo.Length)
                {
                    case 3:
                        cboDepartamento.SelectedValue = ubigeo[0];
                        loadProvincia();
                        cboProvincia.SelectedValue = ubigeo[1];
                        loadDistrito();
                        cboDistrito.SelectedValue = ubigeo[2];
                        break;

                    case 2:
                        cboDepartamento.SelectedValue = ubigeo[0];
                        loadProvincia();
                        cboProvincia.SelectedValue = ubigeo[1];
                        loadDistrito();
                        break;

                    case 1:
                        cboDepartamento.SelectedValue = ubigeo[0];
                        loadProvincia();
                        break;
                }
                string telFij = _.Rows[0]["tel_fijo"].ToString();
                string telMov = _.Rows[0]["tel_mol"].ToString();
                if (telFij.Length<=7)
                txtTelFijo.Text = string.IsNullOrEmpty(telFij) ? "" : telFij.Substring(5, telFij.Length - 5);
                txtTelMovil.Text = string.IsNullOrEmpty(telMov) ? "" : telMov.Substring(5, telMov.Length - 5);
                cboOperadorM.SelectedValue = _.Rows[0]["ope_movil"].ToString();

                string telFij2 = _.Rows[0]["tel_fijo2"].ToString();
                string telMov2 = _.Rows[0]["tel_mol2"].ToString();
                
                txtTelFijo2.Text = string.IsNullOrEmpty(telFij2) ? "" : telFij2.Substring(5, telFij2.Length - 5);
                txtTelMovil2.Text = string.IsNullOrEmpty(telMov2) ? "" : telMov2.Substring(5, telMov2.Length - 5);
                cboOperadorM2.SelectedValue = _.Rows[0]["ope_movil2"].ToString();

                txtCorreo.Text = _.Rows[0]["email"].ToString();
                cboEstadoCivil.SelectedValue = _.Rows[0]["estado_civ"].ToString();
                cboProfesionOficion.SelectedValue = _.Rows[0]["profe_ocupa"].ToString();
                txtProOcuEspeci.Text = _.Rows[0]["profocu_esp"].ToString();
                chbRedM.Checked = (_.Rows[0]["redm"].ToString() == "SI") ? true : false;

                chbRedMInteresado.Checked = (_.Rows[0]["redMInteresado"].ToString() == "SI") ? true : false;

                foreach (Control element in groupBox1.Controls)
                {
                    if (element is RadioButton)
                    {
                        if (((RadioButton)element).Text == _.Rows[0]["comoseEntero"].ToString())
                        {
                            ((RadioButton)element).Checked = true;
                        }
                    }
                }
            }
        }

        private void cboProfesionOficion_SelectedIndexChanged(object sender, Telerik.WinControls.UI.Data.PositionChangedEventArgs e)
        {
            if (cboProfesionOficion.SelectedIndex == 9)
            {
                txtProOcuEspeci.Enabled = true;
            }
            else
            {
                txtProOcuEspeci.Enabled = false;
            }
        }

        private void cboProvincia_Leave(object sender, EventArgs e)
        {
            loadDistrito();
        }

        private void cboProvincia_SelectedValueChanged(object sender, EventArgs e)
        {
            cboDistrito.DataSource = null;
        }

        private void FrmParticipante_Load(object sender, EventArgs e)
        {
            tableDep = partCN.departamentoGet();
            cboDepartamento.DataSource = tableDep;
            cboDepartamento.ValueMember = "idDep";
            cboDepartamento.DisplayMember = "Departamento";
            ubigeoPredeterminado();
            Autocomplete_LimitToList();
            cboParticipanteSearch_AutoComparer();
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var mail = new MailAddress(email);
                return true;
            }
            catch
            {
                return false;
            }
        }

        private void limpiar()
        {
            ubigeoPredeterminado();
            cboSexo.SelectedIndex = -1;
            chbRedM.Checked = false;
            chbRedMInteresado.Checked = false;
            RadioButtonclear(groupBox1);
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
            txtFechaN.Mask = "00/00/0000";
            txtFechaN.Text = "__/__/____";
            txtProOcuEspeci.Clear();
            btnGuardar.Text = "GUARDAR";
        }

        private void pasarDatocboparticipante_aTxtApeyNom()
        {
            string[] datoPart = (cboParticipanteSearch.Text).Trim().Split(' ');
            int countSplit = datoPart.Length;
            if (countSplit == 1)
            {
                txtApePat.Text = datoPart[0];
            }
            else if (countSplit == 1)
            {
                txtApePat.Text = datoPart[0];
                txtApeMat.Text = datoPart[1];
            }
            else if (countSplit >= 3)
            {
                txtApePat.Text = datoPart[0];
                txtApeMat.Text = datoPart[1];
                string nom = string.Empty;
                for (int i = 2; i <= datoPart.Length - 1; i++)
                {
                    nom += datoPart[i] + " ";
                }
                txtNombres.Text = nom.Trim();
            }
            cboParticipanteSearch.Text = string.Empty;
        }

        private void txtCorreo_Leave(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCorreo.Text))
            {
                return;
            }
            if (IsValidEmail(txtCorreo.Text) == false)
            {
                RadMessageBox.Show("CORREO NO VALIDO", "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Exclamation);
            }
        }

        private void txtDNICE_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (char.IsNumber(e.KeyChar))
            {
                e.Handled = false;
            }
            else if (char.IsControl(e.KeyChar))
            {
                e.Handled = false;
            }
            else
            {
                e.Handled = true;
            }
        }

        private void ubigeoPredeterminado()
        {
            cboDepartamento.SelectedValue = "15";
            loadProvincia();
            loadDistrito();
            cboDistrito.SelectedIndex = -1;
        }

        private void grp_Enter(object sender, EventArgs e)
        {
        }

        private void btnAddEvento_Click(object sender, EventArgs e)
        {
            string codEvento = partCN.eventoCodAutogenerado();
            FrmEvento FrmE = new FrmEvento(codEvento);
            if (FrmE.ShowDialog(this) == DialogResult.OK)
            {
                string codigo = FrmE.getCodigo;
                string descripcion = FrmE.getDescripcion;
                bool InserEvent = partCN.eventoInsertCN(codigo, descripcion);
                if (InserEvent)
                {
                    RadMessageBox.Show("SE GUARDO CORRECTAMENTE", "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Info);
                    cargarcboEvento();
                    cboEvento.SelectedValue = codigo;
                }
                else
                {
                    RadMessageBox.Show("OCURRIO UN ERROR,VUELVA A INTENTAR", "MBCORP", MessageBoxButtons.OK, RadMessageIcon.Error);
                }
            }
            FrmE.Dispose();
        }

        private void cboEvento_Enter(object sender, EventArgs e)
        {
            cargarcboEvento();
        }

        private void cargarcboEvento()
        {
            cboEvento.DataSource = partCN.eventoParticipante_getEventotbl();
            cboEvento.ValueMember = "codigo";
        }

        private void rbtVer_Click(object sender, EventArgs e)
        {
            if (cboEvento.SelectedIndex==-1)
            {
                return;
            }
            string codEvento = cboEvento.SelectedValue.ToString();
            FrmListado FrmE = new FrmListado(codEvento);
            FrmE.ShowDialog(this);
            FrmE.Dispose();
        }
    }
}