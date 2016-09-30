<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Clientes.Master" AutoEventWireup="true" CodeBehind="confirmar-reserva.aspx.cs" Inherits="AlquilaCocheras.Web.clientes.confirmar_reserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <link rel="stylesheet" href="../css/confirmar-reserva.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">

    <asp:Label ID="label2" runat="server" Text="Fecha Inicio: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtFechaInicio" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaInicio"
                  ForeColor="Red"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFechaInicio" ForeColor="Red" ErrorMessage="Debe ingresar una fecha de inicio."></asp:RequiredFieldValidator>
    <asp:Label ID="label4" runat="server" Text="Fecha Fin: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtFechaFin" runat="server" ClientIDMode="Static"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtFechaFin" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar una fecha de expiracion."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
              runat="server" ErrorMessage="Por favor ingrese una fecha valida dd/mm/aaaa."
                   ControlToValidate="txtFechaFin"
                  ForeColor="Red"
                  ValidationExpression="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d">
                  </asp:RegularExpressionValidator> 
    <asp:Label ID="label3" runat="server" Text="Hora de Entrada: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtHorarioInicio" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtHorarioInicio" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar un horario."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
              runat="server" ErrorMessage="Por favor ingrese una horario valido HH:MM."
                   ControlToValidate="txtHorarioInicio"
                  ForeColor="Red"
                  ValidationExpression="(([01]\d)|(2[0-3])):([0-5]\d)">
                  </asp:RegularExpressionValidator>   
     <asp:Label ID="label1" runat="server" Text="Hora de Salida: "></asp:Label>
    <asp:TextBox CssClass="form-control" ID="txtHorarioFin" runat="server" ClientIDMode="Static"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtHorarioFin" ForeColor="Red" runat="server" ErrorMessage="Debe ingresar un horario."></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
              runat="server" ErrorMessage="Por favor ingrese una horario valido HH:MM."
                   ControlToValidate="txtHorarioFin"
                  ForeColor="Red"
                  ValidationExpression="(([01]\d)|(2[0-3])):([0-5]\d)">
                  </asp:RegularExpressionValidator>
    <asp:Label ID="lblUbicacion" ClientIDMode="Static" runat="server"></asp:Label>
    <asp:Image ID="imgFoto" ClientIDMode="Static" runat="server" />
    <asp:Label ID="lblPrecioHora" ClientIDMode="Static" runat="server"></asp:Label>
    <asp:Label ID="lblPrecioTotal" ClientIDMode="Static" runat="server"></asp:Label>

    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    <div class="contenedor-botones">
    <asp:Button CssClass="btn btn-primary" ID="btnConfirmar" runat="server" Text="Confirmar Reserva" ClientIDMode="Static"/>   
    <asp:Button CssClass="btn btn-danger" ID="btnCancelar" runat="server" Text="Cancelar" ClientIDMode="Static" />
    </div>
</asp:Content>
