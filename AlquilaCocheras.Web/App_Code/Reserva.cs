using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AlquilaCocheras.Web.App_Code
{
    public class Reserva
    {
        public String ubicacion { get; set; }
        public String FechaInicio { get; set; }
        public String FechaFin { get; set; }
        public String HoraInicio { get; set; }
        public String HoraFin { get; set; }
        public Double Precio { get; set; }
    }
}
