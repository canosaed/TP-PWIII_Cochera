<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="cocheras.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.cocheras" %>

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
                            <h6>Registrar Cochera</h6> 
    <div class="form-group">
    <asp:Label ID="label1" runat="server" Text="Ubicación: "></asp:Label>
    <asp:TextBox ID="txtUbicacion" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUbicacion" ForeColor="Red" ErrorMessage="Debe ingresar una Ubicacion."></asp:RequiredFieldValidator>
    </div>
    <%--inicio periodo disponible --%>
    <div class="form-group">
    <asp:Label ID="label2" runat="server" Text="Período Disponible: "></asp:Label>
    
    <asp:TextBox ID="txtFechaInicio" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                   runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaInicio"
                   ForeColor="Red"
                   ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                 </asp:RegularExpressionValidator> 

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtFechaInicio" ForeColor="Red" 
        ErrorMessage="Debe ingresar una fecha de inicio." ClientIDMode="Static">
    </asp:RequiredFieldValidator>
   
    <asp:TextBox ID="txtFechaFin" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtFechaFin" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar una fecha de expiracion."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaFin"
                  ForeColor="Red"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtFechaInicio" ControlToCompare="txtFechaFin" ForeColor="Red" Operator="LessThan" Type="Date" runat="server" ErrorMessage="La fecha de inicio debe ser menor que la de expiracion"></asp:CompareValidator>
    </div>
    <%--fin periodo disponible --%>
    <div class="form-group">
    <asp:Label ID="label3" runat="server" Text="Horario Diario Disponible: "></asp:Label>
    <asp:TextBox ID="txtHorarioInicio" CssClass="form-control" runat="server" ClientIDMode="Static" Text="Horario Inicio"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtHorarioInicio" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar un horario."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
              runat="server" ErrorMessage="Por favor ingrese una horario valido HH:MM."
                   ControlToValidate="txtHorarioInicio"
                  ForeColor="Red"
                  ValidationExpression="(([01]\d)|(2[0-3])):([0-5]\d)">
                  </asp:RegularExpressionValidator>
    </div>

    <div class="form-group">
    <asp:TextBox ID="txtHorarioFin" CssClass="form-control" runat="server" ClientIDMode="Static" Text="Horario Fin"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtHorarioFin" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar un horario."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
              runat="server" ErrorMessage="Por favor ingrese una horario valido HH:MM."
                   ControlToValidate="txtHorarioFin"
                  ForeColor="Red"
                  ValidationExpression="(([01]\d)|(2[0-3])):([0-5]\d)">
                  </asp:RegularExpressionValidator>
    
    </div>

    <div class="form-group">
    <asp:Label ID="label4" runat="server" Text="Descripción: "></asp:Label>
    <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtDescripcion" ForeColor="Red" runat="server" ErrorMessage="Debe intresar una descripcion."></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label5" runat="server" Text="Latitud: "></asp:Label>
    <asp:TextBox ID="txtLatitud" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtLatitud" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar una latitud."></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
              runat="server" ErrorMessage="Por favor ingrese una latitud valida."
                   ControlToValidate="txtLatitud"
                  ForeColor="Red"
                  ValidationExpression="^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,6}">
                  </asp:RegularExpressionValidator>

    </div>
    <div class="form-group">
    <asp:Label ID="label6" runat="server" Text="Longitud: "></asp:Label>
    <asp:TextBox ID="txtLongitud" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtLongitud" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar una longitud."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator6"
              runat="server" ErrorMessage="Por favor ingrese una longitud valida."
                   ControlToValidate="txtLongitud"
                  ForeColor="Red"
                  ValidationExpression="^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,6}">
                  </asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label7" runat="server" Text="Metros Cuadrados: "></asp:Label>
    <asp:TextBox ID="txtMetrosCuadrados" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtMetrosCuadrados" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar la cantidad de metros cuadrados."></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtMetrosCuadrados" valueToCompare="5" ForeColor="Red" Operator="GreaterThanEqual" Type="Integer" runat="server" ErrorMessage="</br> Los metros cuadrados no deben ser menores a 5"></asp:CompareValidator>
      
    </div>

    <div class="form-group">	
    <asp:Label ID="label8" runat="server" Text="Tipo Vehículo: "></asp:Label>
    <asp:ListBox ID="lbTipoVehiculo" runat="server" ClientIDMode="Static" CssClass="form-control custom-scroll">
        <asp:ListItem Value="0">Seleccione:</asp:ListItem>
        <asp:ListItem Value="1">Auto</asp:ListItem>
        <asp:ListItem Value="2">Pickup</asp:ListItem>
        <asp:ListItem Value="3">Camion</asp:ListItem>
        <asp:ListItem Value="4">Moto</asp:ListItem>
    </asp:ListBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="lbTipoVehiculo" ForeColor="Red" runat="server" ErrorMessage="Debe indicar el tipo de vehiculo."></asp:RequiredFieldValidator>
    </div>

     <div class="form-group">
             <asp:Label ID="label9" runat="server" Text="Precio por Hora: "></asp:Label>
             <asp:TextBox ID="txtPrecioHora" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txtPrecioHora" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar el precio por hora."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7"
              runat="server" ErrorMessage="<br> Por favor ingrese un precio valido con formato 0.00."
                   ControlToValidate="txtPrecioHora"
                  ForeColor="Red"
                  ValidationExpression="(?!^0*$)(?!^0*\.0*$)^\d{1,18}(\.\d{1,2})?$">
                  </asp:RegularExpressionValidator>
     </div>

    <div class="form-group">									   
        <asp:Label ID="label10" runat="server" Text="Foto: " CssClass="col-md-2 control-label"></asp:Label>
        <asp:FileUpload ID="fuFoto" runat="server" ClientIDMode="Static" CssClass="btn btn-default"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="fuFoto" ForeColor="Red" ErrorMessage="Debe Subir una imagen"></asp:RequiredFieldValidator>
    </div>
    
    <div class="action">
    <asp:Button ID="btnCrearCochera" CssClass="btn btn-primary" runat="server" Text="Crear Cochera" ClientIDMode="Static"/>   
    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
</asp:Content>
