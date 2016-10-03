<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlReservar.ascx.cs" Inherits="AlquilaCocheras.Web.MasterPages.UserControlReservar" %>
    <%--Esto va en un UserControl--%>
    <%--Inicio User Control--%>
    <div class="page-content container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
    <div class="form-group">
    <asp:Label ID="label1" runat="server" Text="Ubicación: "></asp:Label>
    <asp:TextBox ID="txtUbicacion" CssClass="form-control" runat="server" ClientIDMode="Static" placeholder="Ingresar Ubicación valída"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtUbicacion" runat="server" ErrorMessage="Debe ingresar una ubicacion."></asp:RequiredFieldValidator>
    </div>
        <div class="caption">
        <asp:Button ID="btnFiltrar" CssClass="btn btn-primary btn-lg" runat="server" Text="Buscar" ClientIDMode="Static" OnClick="btnFiltrar_Click"/>
        </div>

     <%--si no se encuentran resultados mostrar mensaje "No se encontraron resultados"--%>
    <div class="alert-success">
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </div>
                             </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    

    <%--Fin User Control--%>