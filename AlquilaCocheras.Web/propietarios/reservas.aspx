<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.reservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
  <%-- <link rel="stylesheet" href="../css/styles.css"/>
         <link rel="stylesheet" href="../css/app.css"/>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
     <div class="page-content container-fluid">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">

    <div class="form-group">	

        <div class="control-label">
            <asp:Label ID="label1" runat="server" Text="Período Disponible: "></asp:Label>
        </div>

        <div class="form-control-static">
        <asp:TextBox ID="txtFechaInicio" CssClass="form-control" runat="server" ClientIDMode="Static" Text=" " placeholder="Fecha Inicio" TextMode="Date" ></asp:TextBox>
        </div>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFechaInicio" ForeColor="Red" runat="server" ErrorMessage="Por favor ingrese una fecha de inicio" ValidationGroup="fecha" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ValidationGroup="fecha" ID="RegularExpressionValidator2"
         runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
         ControlToValidate="txtFechaInicio"
         ForeColor="Red"
         ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d" Display="Dynamic">
         </asp:RegularExpressionValidator>
        
        <div class="form-control-static">
        <asp:TextBox ID="txtFechaFin" CssClass="form-control" runat="server" ClientIDMode="Static" Text=" " placeholder="Fecha Fin" TextMode="Date" ValidationGroup="fecha"></asp:TextBox>
        </div>

        <asp:RegularExpressionValidator ValidationGroup="fecha" ID="RegularExpressionValidator1"
        runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
        ControlToValidate="txtFechaFin"
        ForeColor="Red"
        ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d" Display="Dynamic">
        </asp:RegularExpressionValidator> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtFechaFin" ForeColor="Red" runat="server" ErrorMessage="Por favor ingrese una fecha de finalización" ValidationGroup="fecha" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CustomValidator OnServerValidate="CustomValidator2_ServerValidate"   ID="CustomValidator1" runat="server" ForeColor="Red" ErrorMessage="El periodo de fechas a filtrar no puede ser mayor de 90 días" Display="Dynamic" ValidationGroup="fecha"></asp:CustomValidator>
        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtFechaInicio" ControlToCompare="txtFechaFin" ForeColor="Red" Operator="LessThan" Type="Date" runat="server" ErrorMessage="La fecha de inicio debe ser menor que la de expiracion"></asp:CompareValidator>
    </div>
                           
        <div class="action">
        <asp:Button ID="btnFiltrar" CssClass="btn btn-primary btn-outline btn-xl page-scroll" runat="server" Text="Filtrar" ClientIDMode="Static"/>   
        </div>
    
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section>
    <div class="container">
        <h5>Resultado de la busqueda</h5>
        <div class="row">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive table-condensed table-bordered"> 
            <Columns>
            <%--campos no editables...--%>
            <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" ReadOnly="True" />
            <asp:BoundField DataField="FechaInicio" HeaderText="Fecha de inicio" ReadOnly="True" />
            <asp:BoundField DataField="FechaFin" HeaderText="Fecha de Finalizado" ReadOnly="True" />
            <asp:BoundField DataField="" HeaderText="Usuario que Reserva" ReadOnly="True" />
            <asp:BoundField DataField="" HeaderText="Horas Reservadas" ReadOnly="True" />
            <asp:BoundField DataField="" HeaderText="Puntuacion" ReadOnly="True" />
            <asp:BoundField DataField="Precio" HeaderText="Total" ReadOnly="True" />
        </Columns>
        </asp:GridView >
       </div>
   </div>
</section>  
</asp:Content>
