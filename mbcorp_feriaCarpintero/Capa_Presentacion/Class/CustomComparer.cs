using System.Collections.Generic;
using Telerik.WinControls.UI;

namespace Capa_Presentacion
{
    public class CustomComparer : IComparer<RadListDataItem>
    {
        public int Compare(RadListDataItem x, RadListDataItem y)
        {
            return x.Text.Length.CompareTo(y.Text.Length);
        }
    }
}