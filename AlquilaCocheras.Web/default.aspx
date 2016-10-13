<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Anonimo.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AlquilaCocheras.Web._default" %>
<%@ Register Src="~/MasterPages/UserControlDefault.ascx" TagPrefix="ucpw3" TagName="UserControlBuscador"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
<%-- <link rel="stylesheet" href="../css/styles.css"/>
     <link rel="stylesheet" href="../css/app.css"/>--%>
    <script type="text/javascript" src="../js/app.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    
    <ucpw3:UserControlBuscador ID="UCDefault" runat="server" /> 

    <%--    LISTADO  (gridview, repeater o datalist)
    Por cada disponibilidad se deberá mostrar la siguiente información:
    precio, 
    nombre y 
    apellido del propietario, 
    precio total por las horas que se desean reservar, 
    la foto, 
    el mapa del lugar donde está ubicado (utilizar la API de Google Maps) 
    la puntuación promedio        
    y el link a confirmar reserva que esta agregado abajo como asp:HyperLink, 
        donde deberán cambiarle dinamicamente el link y ponerle el idcochera correspondiente
   
    
	<div class="col-md-2 col-md-offset-5">
         <div class="content-wrap">
	       <span>
             <asp:HyperLink ID="aConfirmar" runat="server" ClientIDMode="Static" NavigateUrl="/clientes/confirmar-reserva.aspx?idcochera=123" CssClass="btn btn-sm btn-outline page-scroll">Reservar</asp:HyperLink>
            </span>
        </div>
    </div>
    --%> 
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&callback=MapMostar"></script> 
                             
</asp:Content>

