<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Anonimo.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AlquilaCocheras.Web._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
<link rel="stylesheet" href="css/default.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <%--Esto va en un UserControl--%>
    <%--Inicio User Control--%>
    <asp:Label ID="label1" runat="server" Text="Ubicación: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtUbicacion" runat="server" ClientIDMode="Static"></asp:TextBox>
    
    <asp:Label ID="label2" runat="server" Text="Período Disponible: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtFechaInicio" runat="server" ClientIDMode="Static" Text="Fecha Inicio"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaInicio"
                  ForeColor="Red"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
    <asp:TextBox CssClass="form-control" ID="txtFechaFin" runat="server" ClientIDMode="Static" Text="Fecha Fin"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaFin"
                  ForeColor="Red"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
    <div class="contenedor-botones">
    <asp:Button CssClass="btn btn-primary" ID="btnFiltrar" runat="server" Text="Buscar" ClientIDMode="Static" />
    
    <%--si no se encuentran resultados mostrar mensaje "No se encontraron resultados"--%>
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
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
    <asp:HyperLink ID="aConfirmar" runat="server" ClientIDMode="Static" NavigateUrl="/clientes/confirmar-reserva.aspx?idcochera=123">Reservar</asp:HyperLink>
    </div>
</asp:Content>

