namespace Capa_Presentacion
{
    public partial class FrmEvento : Telerik.WinControls.UI.RadForm
    {
        private string codEvento;

        public FrmEvento()
        {
            InitializeComponent();
        }

        public FrmEvento(string codEvento)
        {
            this.codEvento = codEvento;
            InitializeComponent();
        }

        public string getDescripcion
        {
            get
            {
                return txtDescripcion.Text;
            }
        }

        public string getCodigo
        {
            get {
                return txtCodigo.Text;
            }
        }

        private void radButton1_Click(object sender, System.EventArgs e)
        {

        }

        private void FrmEvento_Load(object sender, System.EventArgs e)
        {
            txtCodigo.Text = codEvento;
        }
    }
}