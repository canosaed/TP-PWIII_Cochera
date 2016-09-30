<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.reservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <link rel="stylesheet" href="../css/reservasPropietarios.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <asp:Label ID="label1" runat="server" Text="Período Disponible: "></asp:Label>
    <asp:TextBox ID="txtFechaInicio" CssClass="form-control" runat="server" ClientIDMode="Static" Text="Fecha Inicio"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFechaInicio" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtFechaFin" CssClass="form-control" runat="server" ClientIDMode="Static" Text="Fecha Fin"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtFechaFin" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:Button ID="btnFiltrar" CssClass="btn btn-primary" runat="server" Text="Filtrar" ClientIDMode="Static"/>   
</asp:Content>
