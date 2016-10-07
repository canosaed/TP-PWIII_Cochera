using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.MasterPages
{
    public partial class UserControlDefault : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (txtUbicacion.Text.ToLower() == "san justo")
            {
                lblResultado.CssClass = "alert alert-info";
                lblResultado.Text = "No se encontraron resultados";
            }
        }
    }
}