﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Clientes.Master" AutoEventWireup="true" CodeBehind="reservar.aspx.cs" Inherits="AlquilaCocheras.Web.clientes.reservar" %>
<%@ Register Src="~/MasterPages/UserControlReservar.ascx" TagPrefix="ucr" TagName="UserControlReservar"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
   <%--<link rel="stylesheet" href="../css/styles.css"/>--%>
    <link rel="stylesheet" href="../css/app.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
 
    <%--Inicio User Control--%>
    <ucr:UserControlReservar ID="UCReservar" runat="server" />
     
    <%--Fin User Control--%>

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
    --%>
    <div class="col-md-2 col-md-offset-5">
         <div class="content-wrap">
	       <span>
    <asp:HyperLink ID="aConfirmar" runat="server" ClientIDMode="Static" NavigateUrl="/clientes/confirmar-reserva.aspx?idcochera=123" CssClass="btn btn-md btn-block btn-default">Reservar</asp:HyperLink>
            </span>
        </div>
    </div>

    
</asp:Content>
