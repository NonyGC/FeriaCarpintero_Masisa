using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Reflection;
using System.Text;
using System.Windows.Forms;
using Telerik.WinControls;
using Telerik.WinControls.UI;

namespace Capa_Presentacion
{
    public partial class MenuMDI : RadForm
    {
        public MenuMDI()
        {
            InitializeComponent();
        }

        private void MenuMDI_Load(object sender, EventArgs e)
        {


        }
        //private bool OpenForm(string formName, object tag)
        //{
        //    Assembly frmAssembly = Assembly.LoadFile(Application.ExecutablePath);
        //    bool cons = false;

        //    foreach (Type type in frmAssembly.GetTypes())
        //    {
        //        if ((type.BaseType == null) == false)
        //        {
        //            if (type.BaseType.ToString.Contains("Form"))
        //            {
        //                if (type.Name == formName)
        //                {
        //                    Form frmShow = (Form)frmAssembly.CreateInstance(type.ToString, true);
        //                    if ((frmShow == null) == false)
        //                    {
        //                        frmShow.Tag = tag;
        //                        frmShow.MdiParent = this;
        //                        frmShow.StartPosition = FormStartPosition.CenterScreen;
        //                        frmShow.Show();
        //                        cons = true;
        //                        break; // TODO: might not be correct. Was : Exit For
        //                    }
        //                }
        //            }
        //        }
        //    }
        //    return cons;
        //}

        
        private void menuItemClick(object sender, EventArgs e)
        {
            ToolStripMenuItem myItem = (ToolStripMenuItem)sender;
            ContextMenuStrip cms = (ContextMenuStrip)myItem.Owner;


        }


        }


    }
}
