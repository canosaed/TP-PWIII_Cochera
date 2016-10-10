using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AlquilaCocheras.Web.App_Code;
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
            } else
            {
                Reserva miReserva = new Reserva();
                miReserva.ubicacion = "Haedo";
                miReserva.FechaInicio = "20/10/2016";
                miReserva.FechaFin = "22/10/2016";
                miReserva.HoraInicio = "20:00";
                miReserva.HoraFin = "22:00";
                miReserva.Precio = 50.00;

                txtFechaInicio.Text = miReserva.FechaInicio;
                txtFechaFin.Text = miReserva.FechaFin;
                txtHorarioInicio.Text = miReserva.HoraInicio;
                txtHorarioFin.Text = miReserva.HoraFin;
                lblPrecioHora.Text = miReserva.Precio.ToString();
                lblUbicacion.Text = miReserva.ubicacion;
                imgFoto.ImageUrl = "../imagenes/cocheras/ejemplo.jpg";
            }

        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            char[] delimiterChars = { ' ', '-', ',', '.', ':', '\t' };
            string[] fechaInicio = txtFechaInicio.Text.Split(delimiterChars);
            string[] fechaFin = txtFechaFin.Text.Split(delimiterChars);
            int diaInicio = int.Parse(fechaInicio[1]);
            int diaFin = int.Parse(fechaFin[0]);
            int mesInicio = int.Parse(fechaInicio[2]);
            int mesFin = int.Parse(fechaFin[1]);
            int anoInicio = int.Parse(fechaInicio[3]);
            int anoFin = int.Parse(fechaFin[2]);
            if (mesInicio == mesFin && diaInicio > diaFin || mesInicio > mesFin || anoInicio > anoFin) /*||  >  Int32.Parse(mesInicio) < Int32.Parse(mesFin) && Int32.Parse(fechaFin ) < Int32.Parse(fechaInicio)*/
            {

                args.IsValid = false;

            }
        }
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            char[] delimiterChars = { ' ', '-', ',', '.', ':', '\t' };
            string[] horaInicio = txtHorarioInicio.Text.Split(delimiterChars);
            string[] horaFin = txtHorarioFin.Text.Split(delimiterChars);
            int HourInicio = int.Parse(horaInicio[0]);
            int HourFin = int.Parse(horaFin[0]);
            int MinInicio = int.Parse(horaInicio[1]);
            int MinFin = int.Parse(horaFin[1]);
            string[] fechaInicio = txtFechaInicio.Text.Split(delimiterChars);
            string[] fechaFin = txtFechaFin.Text.Split(delimiterChars);
            int diaInicio = int.Parse(fechaInicio[0]);
            int diaFin = int.Parse(fechaFin[0]);
            if (diaInicio == diaFin && HourFin < HourInicio || diaInicio == diaFin && HourInicio == HourFin && MinFin <= MinInicio) { args.IsValid = false; }
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            lblResultado.Text = "Operacion exitosa!";
        }
    }
}