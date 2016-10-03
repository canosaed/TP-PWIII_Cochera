<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.reservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
  
    <link rel="stylesheet" href="../css/styles.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
     <div class="page-content container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">

    <div class="form-group">	
        <asp:Label ID="label1" runat="server" Text="Período Disponible: "></asp:Label>
   
        <asp:TextBox ID="txtFechaInicio" CssClass="form-control" runat="server" ClientIDMode="Static" Text=" " placeholder="Fecha Inicio" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFechaInicio" ForeColor="Red" runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."></asp:RequiredFieldValidator>
    
        <asp:TextBox ID="txtFechaFin" CssClass="form-control" runat="server" ClientIDMode="Static" Text=" " placeholder="Fecha Fin" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtFechaFin" ForeColor="Red" runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."></asp:RequiredFieldValidator>

        <div class="action">
        <asp:Button ID="btnFiltrar" CssClass="btn btn-primary" runat="server" Text="Filtrar" ClientIDMode="Static"/>   
        </div>
    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
