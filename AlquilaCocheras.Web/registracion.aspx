<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Anonimo.Master" AutoEventWireup="true" CodeBehind="registracion.aspx.cs" Inherits="AlquilaCocheras.Web.registracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <%-- <link rel="stylesheet" href="../css/styles.css"/>
         <link rel="stylesheet" href="../css/app.css"/>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <div class="page-content conntent-box-large">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
			                <h6>Registro de Usuario</h6>
    <div class="form-group">
    <asp:Label ID="label1" runat="server" Text="Nombre: "></asp:Label>
    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtNombre" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar un nombre."></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label2" runat="server" Text="Apellido: "></asp:Label>
    <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="txtApellido" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar un apellido."></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label3" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Por favor ingrese un email valido."
                   ControlToValidate="txtEmail"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtEmail" runat="server" ErrorMessage="Debe ingresar una email."></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label4" runat="server" Text="Contraseña: "></asp:Label>
    <asp:TextBox ID="txtContrasenia" CssClass="form-control" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>

    <asp:Label ID="label5" runat="server" Text="Confirme Contraseña: "></asp:Label>
    <asp:TextBox ID="txtConfContrasenia" CssClass="form-control" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" ForeColor="Red" ControlToValidate="txtConfContrasenia" ControlToCompare="txtContrasenia" Operator="Equal" Type="String" runat="server" ErrorMessage="Las contraseñas no coinciden"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtContrasenia" runat="server" ErrorMessage="Debe ingresar una contraseña."></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-8">
			 <asp:RadioButtonList ID="rblPerfil" runat="server" ClientIDMode="Static">
              <asp:ListItem Text="Cliente"     Value="1"  />
              <asp:ListItem Text="Propietario" Value="2" />
             </asp:RadioButtonList>	
		 </div>
	</div>
   
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    <div class="action">
    <asp:Button ID="btnRegistrarUsuario" CssClass="btn btn-primary" runat="server" Text="Registrar usuario" ClientIDMode="Static" OnClick="btnRegistrarUsuario_Click" />
    </div>                       
                            </div>
                       </div>
                 </div>
			</div>
		</div>
	</div>
</asp:Content>