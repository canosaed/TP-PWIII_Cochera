<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlDefault.ascx.cs" Inherits="AlquilaCocheras.Web.MasterPages.UserControlDefault" %>
<%@ Register Src="~/MasterPages/UserControlMapa.ascx" TagPrefix="ucpw3" TagName="UserControlMapa" %>
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
    <asp:TextBox CssClass="form-control" ID="txtUbicacion" runat="server" ClientIDMode="Static" OnKeyup="initAutocomplete();"></asp:TextBox>       
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUbicacion" ValidationGroup="buscador" runat="server" ErrorMessage="Debes ingresar una ubicacion." ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-horizontal">
    <asp:Label ID="label2" runat="server" Text="Período Disponible: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtFechaInicio" runat="server" ClientIDMode="Static" PlaceHolder="Fecha Inicio" TextMode="Date"></asp:TextBox>
    
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaInicio"
                  ForeColor="Red"
                   ValidationGroup="buscador"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
    <asp:TextBox CssClass="form-control" ID="txtFechaFin" runat="server" ClientIDMode="Static" PlaceHolder="Fecha Finalizado" TextMode="Date"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaFin"
                  ForeColor="Red"
                  ValidationGroup="buscador"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
     
    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtFechaInicio" ControlToCompare="txtFechaFin" ValidationGroup="buscador" ForeColor="Red" Operator="LessThan" Type="Date" runat="server" ErrorMessage="La fecha de inicio debe ser menor que la de expiracion"></asp:CompareValidator>
   </div>

    <%--si no se encuentran resultados mostrar mensaje "No se encontraron resultados"--%>
    <div class="from-control">
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </div> 

    <div class="action">
    <asp:Button CssClass="btn btn-primary btn btn-outline page-scroll" ID="btnFiltrar" ValidationGroup="buscador" runat="server" Text="Buscar" ClientIDMode="Static" OnClick="btnFiltrar_Click"/>
    </div>               
                        </div>
                    </div>			           
                </div>
            </div>
        </div>
    </div>

        <h4 id="titleResultadoBusqueda" runat="server" class="text-center" visible="false">Resultado de la busqueda</h4>

<section>
    <div class="container">
        <div class="row">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive table-condensed table-bordered"> 
            <Columns>
            <%--boton reservar...--%>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center" >
                <ItemTemplate>
                     <asp:HyperLink ID="aConfirmar" runat="server" ClientIDMode="Static" NavigateUrl="/clientes/confirmar-reserva.aspx?idcochera=123" class="btn btn-sm btn-primary btn-outline page-scroll">Reservar</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField> 
            <%-- Imagen  --%>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center" >
                <ItemTemplate>
                 <img alt="" class="img-responsive img-thumbnail" src="<%# Eval("imagen") %>" />
                </ItemTemplate>
            </asp:TemplateField>                  
             <%--Api google Map --%>   
            <asp:TemplateField HeaderText="Ubicación Mapa" ItemStyle-CssClass="mapa">
                <ItemTemplate>
                    <ucpw3:UserControlMapa ID="UCMapa" runat="server" />                
                </ItemTemplate>
            </asp:TemplateField>           

            <%--campos no editables...--%>
            <asp:BoundField DataField="ubicacion" HeaderText="Ubicacion" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="tipo" HeaderText="Tipo" ReadOnly="True" />
            <asp:BoundField DataField="HoraInicio" HeaderText="Hora de inicio" ReadOnly="True" />
            <asp:BoundField DataField="HoraFin" HeaderText="Hora de finalizacion" ReadOnly="True" />
            <asp:BoundField DataField="FechaInicio" HeaderText="Fecha de inicio" ReadOnly="True" />
            <asp:BoundField DataField="FechaFin" HeaderText="Fecha de Finalizado" ReadOnly="True" />
            <%-- --%><asp:BoundField DataField="Latitud" HeaderText="Latitud" ReadOnly="True" />
            <asp:BoundField DataField="Longitud" HeaderText="Longitud" ReadOnly="True" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" ReadOnly="True" />
             <%--campos editables...
            <asp:TemplateField HeaderText="Latitud">
                <ItemTemplate>
                    <asp:Label id="lblLatitud" runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtLatitud" runat="server" CssClass="form-control" ></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Longitud">
                <ItemTemplate>
                    <asp:Label id="lblLongitud" runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtLongitud" runat="server" CssClass="form-control" ></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            --%>
        </Columns>
        </asp:GridView >
       </div>
   </div>
</section>  
    <%--Fin User Control--%>