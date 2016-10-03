﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Clientes.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="AlquilaCocheras.Web.clientes.reservas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <link rel="stylesheet" href="../css/styles.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">

    <%--    LISTADO DE RESERVAS (gridview, repeater o datalist)
        
            fecha inicio.
            fecha fin
            horario
            precio total.
            puntuación 
        
        --%>
   
    <div class="col-md-2 col-md-offset-5">
         <div class="content-wrap">
	       <span>
    <asp:HyperLink ID="aConfirmar" runat="server" ClientIDMode="Static" NavigateUrl="/clientes/confirmar-reserva.aspx?idcochera=123" CssClass="btn btn-md btn-block btn-default">Reservar</asp:HyperLink>
            </span>
        </div>
    </div>

    <!-- Modal -->
    <div id="miModal" class="modal">
        <!-- Contenido Modal -->
        <div class="modal-content">
            <span class="close">x</span>
            <div>
                <%--hidden donde se guarda el id de la reserva elegida para que desde el codebehind se pueda identificar--%>
                <input type="hidden" id="hdIdReserva" />
                <asp:DropDownList runat="server" ID="ddlPuntuacion" ClientIDMode="Static">
                    <asp:ListItem Text="1" Value="1" />
                    <asp:ListItem Text="2" Value="2" />
                    <asp:ListItem Text="3" Value="3" />
                    <asp:ListItem Text="4" Value="4" />
                    <asp:ListItem Text="5" Value="5" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="ddlPuntuacion" runat="server" ErrorMessage="Debe seleccionar una puntuacion."></asp:RequiredFieldValidator>
                <asp:Button Text="Confirmar" runat="server" ID="btnConfirmar" ClientIDMode="Static" />
                <button class="cerrar">Cerrar</button>
            </div>
        </div>
    </div>
</asp:Content>
