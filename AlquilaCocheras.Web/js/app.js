//////////////////////////
$('#miModal').on('shown.modal', function () {
    $('#miModal').focus()
})
/////////////////////////

$(document).ready(function () {
    initMap();
});
 
var map;
 
function initMap() {
    var myLatlng = new google.maps.LatLng(-34.670173, -58.562059);
    var myOptions = {
        zoom: 16,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map($("#map").get(0), myOptions);
}
 
$('#txtUbicacion').live('click', function () {
    // Obtenemos la dirección y la asignamos a una variable
    var address = $('#txtUbicacion').val();
    // Creamos el Objeto Geocoder
    var geocoder = new google.maps.Geocoder();
    // Hacemos la petición indicando la dirección e invocamos la función
    // geocodeResult enviando todo el resultado obtenido
    geocoder.geocode({ 'address': address}, geocodeResult);
});
 
function geocodeResult(results, status) {
    // Verificamos el estatus
    if (status == 'OK') {
        // Si hay resultados encontrados, centramos y repintamos el mapa
        // esto para eliminar cualquier pin antes puesto
        var mapOptions = {
            center: results[0].geometry.location,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map($("#map").get(0), mapOptions);
        // fitBounds acercará el mapa con el zoom adecuado de acuerdo a lo buscado
        map.fitBounds(results[0].geometry.viewport);
        // Dibujamos un marcador con la ubicación del primer resultado obtenido
        var markerOptions = { position: results[0].geometry.location }
        var marker = new google.maps.Marker(markerOptions);
        marker.setMap(map);
    } else {
        // En caso de no haber resultados o que haya ocurrido un error
        // lanzamos un mensaje con el error
        alert("Geocoding no tuvo éxito debido a: " + status);
    }
    //Obtener Lactitud y Longitud, mostrandolos en cuadros de texto y mostrar un infowindow
    //var markerLatLng = marker.getPosition();
   // $("#txtLatitud").val(markerLatLng.lat());
   // $("#txtLongitud").val(markerLatLng.lng());
   // marker.setMap(map);
    
}