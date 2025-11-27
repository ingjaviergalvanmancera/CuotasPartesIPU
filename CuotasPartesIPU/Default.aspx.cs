using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuotasPartesIPU
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ListarPrediosPorCedula();
        }

       private void ListarPrediosPorCedula()
        {
            CuoparConDB cdb = new CuoparConDB();
            cdb.ConsultarPrediosPorDocumento(txbDocumento.Text);
        }

        protected void bTtnConsultar_Click(object sender, EventArgs e)
        {
            ListarPrediosPorCedula();
        }
    }
}