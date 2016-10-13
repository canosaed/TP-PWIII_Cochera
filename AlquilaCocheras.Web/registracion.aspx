<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Anonimo.Master" AutoEventWireup="true" CodeBehind="registracion.aspx.cs" Inherits="AlquilaCocheras.Web.registracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <%-- <link rel="stylesheet" href="../css/styles.css"/>
         <link rel="stylesheet" href="../css/app.css"/>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <div class="page-content container-fluid">
		<div class="row">
			<div class="col-xs-6 col-xs-offset-3">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
			                <h6>Registro de Usuario</h6>
    <div class="form-group">
    <asp:Label ID="label1" runat="server" Text="Nombre: "></asp:Label>
    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ValidationGroup="registracion" ForeColor="Red" ControlToValidate="txtNombre" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar un nombre."></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label2" runat="server" Text="Apellido: "></asp:Label>
    <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ValidationGroup="registracion" ForeColor="Red" ControlToValidate="txtApellido" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar un apellido."></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label3" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
        <asp:Label ID="lblpepe" runat="server" Text=" "></asp:Label>
    <asp:RegularExpressionValidator ValidationGroup="registracion" ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Por favor ingrese un email valido."
                   ControlToValidate="txtEmail"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ValidationGroup="registracion" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtEmail" runat="server" ErrorMessage="Debe ingresar una email."></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label4" runat="server" Text="Contrase&ntilde;a: "></asp:Label>
    <asp:TextBox ID="txtContrasenia" CssClass="form-control" runat="server" TextMode="Password" ClientIDMode="Static" ValidationGroup="registracion"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="validacion" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtContrasenia" runat="server" ErrorMessage="Debe ingresar una contrase&ntilde;a."></asp:RequiredFieldValidator>
    <asp:Label ID="label5" runat="server" Text="Confirme Contrase&ntilde;a: "></asp:Label>
    <asp:TextBox ID="txtConfContrasenia" CssClass="form-control" runat="server" TextMode="Password" ClientIDMode="Static" ValidationGroup="registracion"></asp:TextBox>
       <asp:RequiredFieldValidator ValidationGroup="registracion" ID="RequiredFieldValidator6" ControlToValidate="txtConfContrasenia" runat="server" ForeColor="Red" ErrorMessage="Debe ingresar una contrase&ntilde;a"></asp:RequiredFieldValidator>  
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" ControlToValidate="txtContrasenia" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" runat="server" ErrorMessage="<BR> La contrase&ntilde;a debe tener al menos 8 caracteres, una mayuscula y un numero." ValidationGroup="validacion"></asp:RegularExpressionValidator>
       <asp:CompareValidator ValidationGroup="validacion" ID="CompareValidator1" ForeColor="Red" ControlToValidate="txtConfContrasenia" ControlToCompare="txtContrasenia" Operator="Equal" Type="String" runat="server" ErrorMessage="Las contrase&ntilde;as no coinciden"></asp:CompareValidator>
    </div>

    <div class="form-group">
        <div class="col-sm-16">
			 <asp:RadioButtonList ID="rblPerfil" runat="server" ClientIDMode="Static">
              <asp:ListItem Text="Cliente"     Value="1" />
              <asp:ListItem Text="Propietario" Value="2" />
             </asp:RadioButtonList>	
		 </div>
        <asp:RequiredFieldValidator ValidationGroup="registracion" ID="RequiredFieldValidator5" runat="server" Display="Static" ErrorMessage="Debe elegir una opción" Text="" ControlToValidate="rblPerfil" ForeColor="Red"></asp:RequiredFieldValidator>
	</div>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert-warning alert" ValidationGroup="validacion" ShowModelStateErrors="True" ShowValidationErrors="True" ShowMessageBox="True" />

    <div class="form-group">
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </div>

    <div class="action">
    <asp:Button ValidationGroup="registracion" ID="btnRegistrarUsuario" CssClass="btn btn-primary btn-outline btn-xl page-scroll" runat="server" Text="Registrar usuario" ClientIDMode="Static" OnClick="btnRegistrarUsuario_Click" />
    </div>                       
                            </div>
                       </div>
                 </div>
			</div>
		</div>
	</div>
</asp:Content>