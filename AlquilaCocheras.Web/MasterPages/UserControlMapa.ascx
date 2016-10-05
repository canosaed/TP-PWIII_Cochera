<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlMapa.ascx.cs" Inherits="AlquilaCocheras.Web.MasterPages.UserControlMapa" %>
<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc" %>

<div class="form-group">
    <div class="map">
 <%-- <div id="map" class="map">Mapa</div>--%>
 <cc:GMap ID="map" runat="server" />
    </div>
</div> 
