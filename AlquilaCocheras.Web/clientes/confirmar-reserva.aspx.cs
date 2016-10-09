using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.clientes
{
    public partial class confirmar_reserva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["tipo"] == null)
            {
                Session["url"] = "/clientes/confirmar-reserva.aspx";
                Response.Redirect("/login.aspx");
            }

        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String fechaInicio = txtFechaInicio.Text.Substring(0, 2);
            String fechaFin = txtFechaFin.Text.Substring(0, 2);
            String mesInicio = txtFechaInicio.Text.Substring(4, 6);
            String mesFin = txtFechaFin.Text.Substring(4, 6);
            if (Int32.Parse(fechaInicio) < Int32.Parse(fechaFin))/*|| Int32.Parse(mesInicio) < Int32.Parse(mesFin) && Int32.Parse(fechaFin ) < Int32.Parse(fechaInicio)*/
            {

                args.IsValid = false;

            }
        }
    }
}