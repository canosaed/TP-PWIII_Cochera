<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Clientes.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="AlquilaCocheras.Web.clientes.reservas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Head" runat="server">
    <%-- <link rel="stylesheet" href="../css/styles.css"/>--%>
    <script type="text/javascript" src="../js/app.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Principal" runat="server">

    <%--    LISTADO DE RESERVAS (gridview, repeater o datalist)
        
            fecha inicio.
            fecha fin
            horario
            precio total.
            puntuación 
        
        --%>
   
    <div class="col-md-2 col-md-offset-5">
         <div class="content-wrap">
	       <span>
    <asp:HyperLink ID="aConfirmar" runat="server" ClientIDMode="Static" NavigateUrl="/clientes/confirmar-reserva.aspx?idcochera=123" CssClass="btn btn-md btn-block btn-default">Reservar</asp:HyperLink>
            </span>
        </div>
    </div>

    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#miModal">
       Calificar
    </button>

    <!-- Modal -->
    <div id="miModal" class="modal fade">
        <div class="modal-dialog" role="document">
        <!-- Contenido Modal -->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">Calificar Cochera </h4>
            </div>
            <div class="modal-body">
                <%--hidden donde se guarda el id de la reserva elegida para que desde el codebehind se pueda identificar--%>
                <input type="hidden" id="hdIdReserva" />
                <asp:DropDownList runat="server" ID="ddlPuntuacion" ClientIDMode="Static" CssClass="form-control">
                    <asp:ListItem Text="1" Value="1" />
                    <asp:ListItem Text="2" Value="2" />
                    <asp:ListItem Text="3" Value="3" />
                    <asp:ListItem Text="4" Value="4" />
                    <asp:ListItem Text="5" Value="5" />
                </asp:DropDownList>
            </div>
            <div class="modal-footer">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="ddlPuntuacion" runat="server" ErrorMessage="Debe seleccionar una puntuacion."></asp:RequiredFieldValidator>
            <asp:Button Text="Confirmar" runat="server" ID="btnConfirmar" ClientIDMode="Static" CssClass="btn btn-primary"/>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
            </div> <!-- /.modal-content -->   
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

</asp:Content>
