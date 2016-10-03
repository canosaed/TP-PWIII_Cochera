<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <link rel="stylesheet" href="../css/perfil.css"/>
    <link rel="stylesheet" href="../css/styles.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">

    <div class="page-content container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
                            <h6>Actualizar Usuario</h6>
    <div class="form-group">
    <asp:Label ID="label1" runat="server" Text="Nombre: " ></asp:Label>
    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNombre" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar un nombre"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label2" runat="server" Text="Apellido: "></asp:Label>
    <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtApellido" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar un apellido"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label3" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmail" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar un email"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label4" runat="server" Text="Contraseña: "></asp:Label>
    <asp:TextBox ID="txtContrasenia" CssClass="form-control" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtContrasenia" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar una contrasena"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="label5" runat="server" Text="Confirme Contraseña: "></asp:Label>
    <asp:TextBox ID="txtConfContrasenia" CssClass="form-control" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtConfContrasenia" ForeColor="Red" runat="server" ErrorMessage="Debe reingresar la contrasena"></asp:RequiredFieldValidator>
    </div>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtContrasenia"  ControlToCompare="txtConfContrasenia" ForeColor="Red" ErrorMessage="Las contrasenias deben concidir"></asp:CompareValidator>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-8">
    <asp:RadioButtonList ID="rblPerfil" runat="server" ClientIDMode="Static" CssClass="checkbox-inline">
        <asp:ListItem Text=" Cliente     " Value="1" />
        <asp:ListItem Text=" Propietario " Value="2" />
    </asp:RadioButtonList>
        </div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="rblPerfil" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </div>
    <div class="div-btn">
    <asp:Button ID="btnActualizar" CssClass="btn btn-primary" runat="server" Text="Actualizar perfil" ClientIDMode="Static" />
    <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" ClientIDMode="Static" />
    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

</asp:Content>
