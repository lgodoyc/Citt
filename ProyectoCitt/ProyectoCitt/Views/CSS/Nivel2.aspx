<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Nivel2.aspx.cs" Inherits="ProyectoCitt.Views.CSS.Nivel2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function openModal() {
            $('#mostrarmodal').modal('show');
        }

        function openInfo1() {
            $('[id*=Title]').text("¿Que es un selector?");
            $('[id*=lblInfo]').text("El selector CSS (Cascading Style Sheet) es el nexo de unión entre la hoja de estilos y los documentos a los que se aplique dicha hoja.");
            $('#modalInfo').modal('show');
        }

        function openInfo2() {
            $('[id*=Title]').text("¿Que es un selector de etiqueta?");
            $('[id*=lblInfo]').text("Permite aplicar css a una determinada etiqueta (Ej. h2) un tipo de estilo. Esto aplica a todos los selectores h2 que se encuentren en la pagina");
            $('#modalInfo').modal('show');
        }

        function openInfo3() {
            $('[id*=Title]').text("¿Que es un selector decendente?");
            $('[id*=lblInfo]').text("Permite aplicar css a un elemento que este dentro de otro elemento");
            $('#modalInfo').modal('show');
        }

        function openInfo4() {
            $('[id*=Title]').text("¿Que es un selector de clase?");
            $('[id*=lblInfo]').text("Permite aplicar css a un elemento que tenga una clasa determinada en su estructura. (Ej. en HTML <a class='btn'>boton</a> y en CSS .btn { color:red; })");
            $('#modalInfo').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenedor principal -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-7">
                <video class="embed-responsive-item" width="900px" height="500px" controls>
                    <source src="../../Scripts/Multimedia/CSS_2.mp4" type="video/mp4">
                </video>
            </div>
            <div class="col-sm-5">
                <div>
                    <h2>Contenido del video</h2>
                    <hr />
                </div>
                <div class="col-sm-5">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home" onclick="javascript:openInfo1()">¿Que es un selector?</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile" onclick="javascript:openInfo2()">¿Que es un selector de etiqueta?</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages" onclick="javascript:openInfo3()">¿Que es un selector decendente?</a>
                        <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings" onclick="javascript:openInfo4()">¿Que es un selector de clase?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div>
        <div>
            <div class="col-md-offset-2">
                <div class="col-md-7">
                    <button id="btnComenzar" class="btn btn-success" onclick="javascriot:openModal()">Comenzar Encuesta</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal de encuesta -->
    <div class="modal fade screen" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label=""><span>×</span></button>
                </div>
                <div class="modal-body">
                    <form runat="server">
                        <div class="table-responsive printable">
                            <asp:Table runat="server" CssClass="table table-bordred table-striped" ID="tablaConsultaPermisos">
                                <asp:TableRow>
                                    <asp:TableHeaderCell>N°1: ¿Como aplico CSS a una clase?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaUno">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem>comenzando con #</asp:ListItem>
                                            <asp:ListItem>comenzando con .</asp:ListItem>
                                            <asp:ListItem>Comenzando con el atributo</asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableHeaderCell>N°2: ¿Como aplico CSS a un element con ID?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaDos">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem>.</asp:ListItem>
                                            <asp:ListItem>#</asp:ListItem>
                                            <asp:ListItem>Comenzando con el elemento</asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableHeaderCell>N°3: ¿Como aplicar CSS a un elemento < a > que esta dentro de un elemento < p >?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaTres">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem>. y atributo</asp:ListItem>
                                            <asp:ListItem># y elemento</asp:ListItem>
                                            <asp:ListItem>elemento espacio elemento</asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                        <asp:Button Style="margin-left: 170px" runat="server" CssClass="btn btn-success" ID="btnEvaluacion" OnClick="btnEvaluacion_Click" Text="Evaluar" />
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal informativo -->
    <div class="modal fade" id="modalInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Title"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <label id="lblInfo"></label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
