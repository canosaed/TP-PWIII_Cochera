<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlMapa.ascx.cs" Inherits="AlquilaCocheras.Web.MasterPages.UserControlMapa" %>

<div id="map">My map will go here</div>

<script src="https://maps.googleapis.com/maps/api/js?callback=myMap" type="text/javascript"></script>
<script type="text/javascript">
function myMap() {
  var mapCanvas = document.getElementById("map");
  var mapOptions = {
    center: new google.maps.LatLng(51.5, -0.2), zoom: 10
  };
  var map = new google.maps.Map(mapCanvas, mapOptions);
}

</script>