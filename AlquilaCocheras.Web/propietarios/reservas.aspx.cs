using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.propietarios
{
    public partial class reservas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string fechaConFormato = string.Empty;
                //formatea la fecha si viene en formato yyyy-mm-dd
                fechaConFormato = Regex.Replace(txtFechaInicio.Text,
                @"\b(?<yyyy>\d{4})-(?<mm>\d{1,2})-(?<dd>\d{1,2})\b",
                "${dd}/${mm}/${yyyy}");
                txtFechaInicio.Text = fechaConFormato;
            }
            
            if (Session["tipo"] == null)
            {
                Session["url"] = "/propietarios/reservas.aspx";
                Response.Redirect("/login.aspx");
            }

            List<Reserva> resultado = new List<Reserva>();
            Reserva miReserva = new Reserva();

            miReserva.ubicacion = "Haedo";
            miReserva.FechaInicio = "20/10/2016";
            miReserva.FechaFin = "22/10/2016";
            miReserva.Precio = 50.00;
            
            resultado.Add(miReserva);

            GridView1.DataSource = resultado;
            GridView1.DataBind();
            //GridView1.SelectedIndex = 0;
        }

    }
}