using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlquilaCocheras.Web.clientes
{
    public partial class reservas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["tipo"] == null)
            {
                Session["url"] = "/clientes/reservas.aspx";
                Response.Redirect("/login.aspx");
            }

            List<Cochera> resultado = new List<Cochera>();
            Cochera miCochera = new Cochera();

            miCochera.ubicacion = "Haedo";
            miCochera.tipo = "Autos";
            miCochera.HoraInicio = "15:00";
            miCochera.HoraFin = "16:00";
            miCochera.FechaInicio = "20/10/2016";
            miCochera.FechaFin = "22/10/2016";
            miCochera.Precio = 50.00;
            miCochera.Puntuacion = 4 ;

            resultado.Add(miCochera);

            GridView1.DataSource = resultado;
            GridView1.DataBind();
            //GridView1.SelectedIndex = 0;
        }
    }
}