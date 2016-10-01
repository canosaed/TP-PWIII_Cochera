<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Anonimo.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AlquilaCocheras.Web.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <link rel="stylesheet" href="css/login.css"/>
    <link href="css/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <div class="page-content container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="login-wrapper">
                    
                     <div class="box">
                         <div class="content-wrap">  
                             <h6>LogIn</h6> 
    <asp:Label ID="label3" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Por favor ingrese un email valido."
                   ControlToValidate="txtEmail"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtEmail" runat="server" ErrorMessage="Debe ingresar una email."></asp:RequiredFieldValidator>
    <asp:Label ID="label2" runat="server" Text="Contraseña: "></asp:Label>
    <asp:TextBox ID="txtContrasenia" CssClass="form-control" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtContrasenia" runat="server" ErrorMessage="Debe ingresar una contraseña."></asp:RequiredFieldValidator>

    <%--Si el usuario no existe o si no coinciden las credenciales, mostrar mensaje "Usuario y/o Contraseña inválidos"--%>
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    <div class="action">
    <asp:Button ID="btnLogin" CssClass="btn btn-primary signup" runat="server" Text="Ingresar" ClientIDMode="Static" OnClick="btnLogin_Click" />
   </div>
                     
    
       
         </div>
            </div>
                    <div class="already">
			            <p>No tienes una Cuenta?</p>
			            <a class="registrarse" href="/registracion.aspx">Registrarse como nuevo usuario.</a>
			        </div>
                </div>
                    </div>
                        </div>
                            </div>
</asp:Content>
