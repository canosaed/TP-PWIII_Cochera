﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlDefault.ascx.cs" Inherits="AlquilaCocheras.Web.MasterPages.UserControlDefault" %>
 <%--Esto va en un UserControl--%>
    <%--Inicio User Control--%>

    <div class="page-content container-fluid">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
                            <h6>Buscar Cochera Disponible</h6>
    <div class="form-horizontal">
    <asp:Label ID="label1" runat="server" Text="Ubicación: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtUbicacion" runat="server" ClientIDMode="Static"></asp:TextBox>
    </div>
    <div class="form-horizontal">
    <asp:Label ID="label2" runat="server" Text="Período Disponible: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtFechaInicio" runat="server" ClientIDMode="Static" PlaceHolder="Fecha Inicio" TextMode="Date"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaInicio"
                  ForeColor="Red"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
    <asp:TextBox CssClass="form-control" ID="txtFechaFin" runat="server" ClientIDMode="Static" PlaceHolder="Fecha Finalizado" TextMode="Date"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaFin"
                  ForeColor="Red"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
     
    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtFechaInicio" ControlToCompare="txtFechaFin" ForeColor="Red" Operator="LessThan" Type="Date" runat="server" ErrorMessage="La fecha de inicio debe ser menor que la de expiracion"></asp:CompareValidator>
   </div>

    <%--si no se encuentran resultados mostrar mensaje "No se encontraron resultados"--%>
    <div class="from-control">
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </div> 

    <div class="action">
    <asp:Button CssClass="btn btn-primary btn btn-outline page-scroll" ID="btnFiltrar" runat="server" Text="Buscar" ClientIDMode="Static" OnClick="btnFiltrar_Click"/>
    </div>               
                        </div>
                    </div>			           
                </div>
            </div>
        </div>
    </div>    
    <%--Fin User Control--%>