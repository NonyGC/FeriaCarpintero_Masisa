using Telerik.WinControls.UI;

namespace Capa_Presentacion
{
    public class CustomAutoCompleteSuggestHelper : AutoCompleteSuggestHelper
    {
        public CustomAutoCompleteSuggestHelper(RadDropDownListElement owner) : base(owner)
        {
        }

        public override void ApplyFilterToDropDown(string filter)
        {
            base.ApplyFilterToDropDown(filter);
            DropDownList.ListElement.DataLayer.DataView.Comparer = new CustomComparer();
        }
    }
}