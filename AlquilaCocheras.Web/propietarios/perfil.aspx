<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Propietarios.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="AlquilaCocheras.Web.propietarios.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <link rel="stylesheet" href="../css/perfil.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">
    <asp:Label ID="label1" runat="server" Text="Nombre: "></asp:Label>
    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNombre" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:Label ID="label2" runat="server" Text="Apellido: "></asp:Label>
    <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtApellido" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:Label ID="label3" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmail" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:Label ID="label4" runat="server" Text="Contraseña: "></asp:Label>
    <asp:TextBox ID="txtContrasenia" CssClass="form-control" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtContrasenia" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:Label ID="label5" runat="server" Text="Confirme Contraseña: "></asp:Label>
    <asp:TextBox ID="txtConfContrasenia" CssClass="form-control" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtConfContrasenia" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:RadioButtonList ID="rblPerfil" runat="server" ClientIDMode="Static">
        <asp:ListItem Text="Cliente" Value="1" />
        <asp:ListItem Text="Propietario" Value="2" />
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="rblPerfil" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    <div class="div-btn">
    <asp:Button ID="btnActualizar" CssClass="btn btn-primary" runat="server" Text="Actualizar perfil" ClientIDMode="Static" />
    <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" ClientIDMode="Static" />
    <div/>
</asp:Content>
