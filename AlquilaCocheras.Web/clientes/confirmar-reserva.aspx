<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Clientes.Master" AutoEventWireup="true" CodeBehind="confirmar-reserva.aspx.cs" Inherits="AlquilaCocheras.Web.clientes.confirmar_reserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <link rel="stylesheet" href="../css/styles.css"/>
    <%-- <link rel="stylesheet" href="../css/confirmar-reserva.css"/> --%>
    <script src="../js/confirmar-reserva.js"></script>
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <div class="page-content container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
                            <h6>Reservas</h6>
    <div class="form-group">
    <asp:Label ID="label2" runat="server" Text="Fecha Inicio: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtFechaInicio" onkeyup="calcular()" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RegularExpressionValidator ValidationGroup="fecha" ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaInicio"
                  ForeColor="Red"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
    <asp:RequiredFieldValidator ValidationGroup="fecha" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFechaInicio" ForeColor="Red" ErrorMessage="Debe ingresar una fecha de inicio."></asp:RequiredFieldValidator>
   </div>
   <div class="form-group"> 
   <asp:Label ID="label4" runat="server" Text="Fecha Fin: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtFechaFin" onkeyup="calcular()" runat="server" ClientIDMode="Static"></asp:TextBox>
   <asp:RequiredFieldValidator ValidationGroup="fecha" ID="RequiredFieldValidator3" ControlToValidate="txtFechaFin" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar una fecha de expiracion."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ValidationGroup="fecha" ID="RegularExpressionValidator1"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaFin"
                  ForeColor="Red"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
    </div>
       <asp:CustomValidator  ValidationGroup="fecha" ID="CustomValidator1" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="txtFechaFin" ForeColor="Red" runat="server" ErrorMessage="La fechaFin debe ser posterior a FechaInicio "></asp:CustomValidator>
    <div class="form-group">
    <asp:Label ID="label3" runat="server" Text="Hora de Entrada: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtHorarioInicio" onkeyup="calcular()" TextMode="Time" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ValidationGroup="fecha" ID="RequiredFieldValidator4" ControlToValidate="txtHorarioInicio" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar un horario."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ValidationGroup="fecha" ID="RegularExpressionValidator3"
              runat="server" ErrorMessage="Por favor ingrese una horario valido HH:MM."
                   ControlToValidate="txtHorarioInicio"
                  ForeColor="Red"
                  ValidationExpression="(([01]\d)|(2[0-3])):([0-5]\d)">
                  </asp:RegularExpressionValidator>
     </div>
      
     <div class="form-group">   
     <asp:Label ID="label1" runat="server" Text="Hora de Salida: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtHorarioFin" onkeyup="calcular()" TextMode="Time" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ValidationGroup="fecha" ID="RequiredFieldValidator5" ControlToValidate="txtHorarioFin" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar un horario."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ValidationGroup="fecha" ID="RegularExpressionValidator4"
              runat="server" ErrorMessage="Por favor ingrese una horario valido HH:MM."
                   ControlToValidate="txtHorarioFin"
                  ForeColor="Red"
                  ValidationExpression="(([01]\d)|(2[0-3])):([0-5]\d)">
                  </asp:RegularExpressionValidator>
    <asp:CustomValidator ValidationGroup="fecha" ID="CustomValidator2" OnServerValidate="CustomValidator2_ServerValidate" runat="server" ForeColor="Red" ErrorMessage="Ingrese un horario correcto"></asp:CustomValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="lblUbicacion" ClientIDMode="Static" runat="server"></asp:Label>
    </div>
    <div class="form-group">
    <asp:Image ID="imgFoto" ClientIDMode="Static" runat="server" CssClass="img-responsive img-thumbnail"/>
    </div>
    <div class="form-group">
    <asp:Label ID="label5" runat="server" Text="Precio por hora: "></asp:Label>
    <asp:Label ID="lblPrecioHora" Text="4" ClientIDMode="Static" runat="server"></asp:Label>
    </div>
    <div class="form-group">
    <asp:Label ID="label6" runat="server" Text="Precio total: "></asp:Label>
    <asp:Label ID="lblPrecioTotal" ClientIDMode="Static" runat="server"></asp:Label>
    </div>
    
    <div class=" alert-success">
    <asp:Label ID="lblResultado" runat="server" Text=" "></asp:Label>

    </div>

    <div class="caption">
    <asp:Button ValidationGroup="fecha" CssClass="btn btn-primary" ID="btnConfirmar" runat="server" Text="Confirmar Reserva" ClientIDMode="Static" OnClick="btnConfirmar_Click"/>   
    <asp:Button CssClass="btn btn-danger" ID="btnCancelar" runat="server" Text="Cancelar" ClientIDMode="Static" />
    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>
