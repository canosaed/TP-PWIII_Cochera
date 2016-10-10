function calcularDias() {

    var txtFechaInicio = document.getElementById("txtFechaInicio").value;

    var txtFechaFin = document.getElementById("txtFechaFin").value;


    inicial = txtFechaInicio.split("/");

    final = txtFechaFin.split("/");

    var dateStart = new Date(inicial[2], (inicial[1] - 1), inicial[0]);

    var dateEnd = new Date(final[2], (final[1] - 1), final[0]);

    if (dateStart < dateEnd) {


        return (((dateEnd - dateStart) / 86400) / 1000);

    } else {

        return 0;
    }





}
function calcularHoras() {
    var txtHorarioInicio = document.getElementById("txtHorarioInicio").value;
    var txtHorarioFin = document.getElementById("txtHorarioFin").value;
    txtHorarioFin = txtHorarioFin.replace(":", "");
    txtHorarioFin = txtHorarioFin.replace(" a.m", "");
    txtHorarioFin = txtHorarioFin.replace(" p.m", "");
    txtHorarioFin = txtHorarioFin.replace(" ", "");
    txtHorarioInicio = txtHorarioInicio.replace(":", "");
    txtHorarioInicio = txtHorarioInicio.replace(" a.m", "");
    txtHorarioInicio = txtHorarioInicio.replace(" p.m", "");
    txtHorarioInicio = txtHorarioInicio.replace(" ", "");
    var diferenciaHora = txtHorarioFin - txtHorarioInicio;
    diferenciaHora = diferenciaHora / 100;
    return diferenciaHora;
}

function calcular() {
    var txtHorarioInicio = document.getElementById("txtHorarioInicio").value;
    var txtHorarioFin = document.getElementById("txtHorarioFin").value;
    var txtFechaInicio = document.getElementById("txtFechaInicio").value;
    var txtFechaFin = document.getElementById("txtFechaFin").value;
    if (txtFechaFin != "" && txtFechaInicio != "" && txtHorarioFin != "" && txtHorarioInicio != "") {
        var dias = calcularDias();
        var horas = calcularHoras();
        horas = Math.round(horas);
        var horasTotales = dias * horas;
        var precio = document.getElementById("lblPrecioHora").innerHTML;
        var precioTotal = horasTotales * precio;
        document.getElementById("lblPrecioTotal").innerHTML = precioTotal;
    }

}
calcular();
