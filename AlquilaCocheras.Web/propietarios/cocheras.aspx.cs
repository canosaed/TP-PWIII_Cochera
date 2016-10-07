using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Subgurim.Controles;

namespace AlquilaCocheras.Web.propietarios
{
    public partial class cocheras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /////////////////////////////////
            if (Session["tipo"] == null)
            {
                Session["url"] = "/propietarios/cocheras.aspx";
                Response.Redirect("/login.aspx");
            }
        }

        protected void btnCrearCochera_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblResultado.CssClass = "alert alert-success";
                lblResultado.Text = "Operación exitosa";
            }
        }

    }
}