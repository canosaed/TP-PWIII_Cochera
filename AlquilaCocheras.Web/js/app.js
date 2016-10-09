﻿/////////////////////////////////////////
///Clacular precio final////////////////
var fin = document.getElementById('txtFechaFin');
var inicio = document.getElementById('txtFechaInicio');
var dias = function DiferenciaDeDias(fin, inicio) {
   return fin - inicio;
};
var horas = function DiferenciaDeHoras(salida, entrada) {
    return entrada - salida;
};
var horasTotales = horas * dias;

$('#lblPrecioHora').keyup(function () {
    var divParent = $(this).closest('div');
 var qty = horasTotales;
 var price = $('#lblPrecioHora');
if (qty >= 0 && price >= 0)
    $('#lblPrecioTotal',
   divParent).text(qty*price);
});

//////////////////////////
$('#miModal').on('shown.modal', function () {
    $('#miModal').focus()
});
/////////////////////////

//$(document).ready(function () {
//    initAutocomplete();
//});
 
// This example adds a search box to a map, using the Google Place Autocomplete
// feature. People can enter geographical searches. The search box will return a
// pick list containing a mix of places and predicted search terms.

function initAutocomplete() {
    var map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: -34.670173, lng: -58.562059 },
        zoom: 16,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    // Create the search box and link it to the UI element.
    var input = document.getElementById('txtUbicacion');
    var searchBox = new google.maps.places.SearchBox(input);
    //map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

    // Bias the SearchBox results towards current map's viewport.
    map.addListener('bounds_changed', function () {
        searchBox.setBounds(map.getBounds());
    });

    var markers = [];
    // Listen for the event fired when the user selects a prediction and retrieve
    // more details for that place.
    searchBox.addListener('places_changed', function () {
        var places = searchBox.getPlaces();

        if (places.length == 0) {
            return;
        }

        // Clear out the old markers.
        markers.forEach(function (marker) {
            marker.setMap(null);
        });
        markers = [];

        // For each place, get the icon, name and location.
        var bounds = new google.maps.LatLngBounds();
        places.forEach(function (place) {
            var icon = {
                url: place.icon,
                size: new google.maps.Size(71, 71),
                origin: new google.maps.Point(0, 0),
                anchor: new google.maps.Point(17, 34),
                scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
                map: map,
                icon: icon,
                title: place.name,
                position: place.geometry.location
            }));
            //Obtener Lactitud y Longitud
            $("#txtLatitud").val(place.geometry.location.lat());
            $("#txtLongitud").val(place.geometry.location.lng());
            ////
            if (place.geometry.viewport) {
                // Only geocodes have viewport.
                bounds.union(place.geometry.viewport);
            } else {
                bounds.extend(place.geometry.location);
            }
        });
        map.fitBounds(bounds);
    });
}