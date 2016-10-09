using ClassLibrary1;
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
                if (txtUbicacion.Text == "" && txtFechaFin.Text == "" && txtFechaInicio.Text == "")
                {
                    lblResultado.CssClass = "alert alert-info";
                    lblResultado.Text = "Debe completar al menos uno de los campos";
                }
                else if (txtUbicacion.Text.ToLower() == "san justo")
                {
                    lblResultado.CssClass = "alert alert-info";
                    lblResultado.Text = "No se encontraron resultados";
                }
                else if (txtUbicacion.Text.ToLower() == "haedo" || txtUbicacion.Text == "Haedo, Buenos Aires, Argentina")
                {
                    lblResultado.CssClass = " ";
                    //lblResultado.Text = "<h5>Buscando ...</h5>";
                
                    ///////////////
                    
                    List<Cochera> resultado = new List<Cochera>();
                    Cochera miCochera = new Cochera();
                
                    miCochera.ubicacion = "Haedo";
                    miCochera.tipo = "Autos";
                    miCochera.HoraInicio = "15:00";
                    miCochera.HoraFin = "16:00";
                    miCochera.FechaInicio = "20/10/2016";
                    miCochera.FechaFin = "22/10/2016";
                    miCochera.Latitud = 20.22;
                    miCochera.Longitud = 32.33;
                    miCochera.Precio = 50.00;
                   
                    resultado.Add(miCochera);

                    GridView1.DataSource = resultado;
                    GridView1.DataBind();
                    //GridView1.SelectedIndex = 0;
                     
                }
        }
    }
}