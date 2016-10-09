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
    <section class="bg-primary">
    <div class="container">
        <h5>Resultado de la busqueda</h5>
        <div class="row">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive table-condensed table-bordered"> 
            <Columns>
            <%--boton reservar...--%>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center" >
                <ItemTemplate>
                     <asp:HyperLink ID="aConfirmar" runat="server" ClientIDMode="Static" NavigateUrl="/clientes/confirmar-reserva.aspx?idcochera=123" CssClass="btn btn-sm btn-outline page-scroll">Reservar</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField> 
             
             <%--Boton de puntuacion...--%>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center"  HeaderText="Puntuar">
                <ItemTemplate>
                    <button type="button" class="btn btn-sm btn-primary btn-outline page-scroll" data-toggle="modal" data-target="#miModal" value="Calificar">
                    Calificar
                    </button>
                </ItemTemplate>
            </asp:TemplateField>

            <%--campos no editables...--%>
            <asp:BoundField DataField="HoraInicio" HeaderText="Hora de inicio" ReadOnly="True" />
            <asp:BoundField DataField="HoraFin" HeaderText="Hora de finalizacion" ReadOnly="True" />
            <asp:BoundField DataField="FechaInicio" HeaderText="Fecha de inicio" ReadOnly="True" />
            <asp:BoundField DataField="FechaFin" HeaderText="Fecha de Finalizado" ReadOnly="True" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" ReadOnly="True" />
            <asp:BoundField DataField="Puntuacion" HeaderText="Puntuacion" ReadOnly="True" />
        </Columns>
        </asp:GridView >
       </div>
   </div>
</section>  
  
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
