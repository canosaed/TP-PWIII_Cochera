using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary1;
namespace AlquilaCocheras.Web.propietarios
{
    public partial class cocheras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["tipo"] == null)
            {
                Session["url"] = "/propietarios/cocheras.aspx";
                Response.Redirect("/login.aspx");
            }
        }

        protected void btnCrearCochera_Click(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            char[] delimiterChars = { ' ', '-', ',', '.', ':', '\t' };
            string[] fechaInicio = txtFechaInicio.Text.Split(delimiterChars);
            string[] fechaFin = txtFechaFin.Text.Split(delimiterChars);
            int diaInicio = int.Parse(fechaInicio[0]);
            int diaFin = int.Parse(fechaFin[0]);
            int mesInicio = int.Parse(fechaInicio[1]);
            int mesFin = int.Parse(fechaFin[1]);
            int anoInicio = int.Parse(fechaInicio[2]);
            int anoFin = int.Parse(fechaFin[2]);
            if (mesInicio > mesFin || anoInicio < anoFin || diaInicio > diaFin && mesInicio == mesFin && anoInicio == anoFin) /*||  >  Int32.Parse(mesInicio) < Int32.Parse(mesFin) && Int32.Parse(fechaFin ) < Int32.Parse(fechaInicio)*/
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
    }
}