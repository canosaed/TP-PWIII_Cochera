﻿using AlquilaCocheras.Web.App_Code;
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
           lblResultado.Text=String.Empty;
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
                   
                    lblResultado.Text = String.Empty;
                   
                    titleResultadoBusqueda.Visible=true; 
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
                    miCochera.imagen = "/imagenes/cocheras/ejemplo.jpg";
                    resultado.Add(miCochera);
                   
                    GridView1.DataSource = resultado;
                    
                    GridView1.DataBind();
                    //GridView1.SelectedIndex = 0;

                   var f = DateTime.Now.Date;
                   
                     
                }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}