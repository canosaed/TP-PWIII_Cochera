using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.MasterPages
{
    public partial class Propietarios : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["tipo2"] = "Propietario";
            if ( Session["tipo"] != Session["tipo2"])
            {
                Response.Redirect("/clientes/reservas.aspx");
            }
        }
    }
}