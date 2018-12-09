<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Nivel1.aspx.cs" Inherits="ProyectoCitt.Views.CSS.Nivel1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function openModal() {
            $('#mostrarmodal').modal('show');
        }

        function openInfo1() {
            $('[id*=Title]').text("Introduccion al CSS");
            $('[id*=lblInfo]').text("El CSS (hojas de estilo en cascada) es un lenguaje que define la apariencia de un documento escrito en un lenguaje de marcado (por ejemplo, HTML). Así, a los elementos de la página web creados con HTML se les dará la apariencia que se desee utilizando CSS: colores, espacios entre elementos, tipos de letra, ... separando de esta forma la estructura de la presentación.");
            $('#modalInfo').modal('show');
        }

        function openInfo2() {
            $('[id*=Title]').text("¿Que es la etiqueta style?");
            $('[id*=lblInfo]').text("La etiqueta style, nos permite otorgarle reglas de estilo a un elemnto determinado directamente en la etiqueda del html");
            $('#modalInfo').modal('show');
        }

        function openInfo3() {
            $('[id*=Title]').text("¿Que es una regla CSS?");
            $('[id*=lblInfo]').text("Una regla, es todo el conjunto de grupos para poder darle estilos a un elemento. Se compone de un selector, propiedad y el valor de la propiedad");
            $('#modalInfo').modal('show');
        }

        function openInfo4() {
            $('[id*=Title]').text("¿Como crear una hoja de estulo directamente en el html?");
            $('[id*=lblInfo]').text("<style type='text/css' ></style>");
            $('#modalInfo').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenedor principal -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-7">
                <video  class="embed-responsive-item" width="900px" height="500px" controls>
                    <source src="../../Scripts/Multimedia/CSS_1.mp4" type="video/mp4">
                </video>
            </div>
            <div class="col-sm-5">
                <div>
                    <h2>Contenido del video</h2>
                    <hr />
                </div>
                <div class="col-sm-5">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home" onclick="javascript:openInfo1()">Introduccion al CSS</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile" onclick="javascript:openInfo2()">¿Que es la etiqueta style?</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages" onclick="javascript:openInfo3()">¿Que es una regla CSS?</a>
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
                                    <asp:TableHeaderCell>N°1: ¿Que realiza la propiedad color?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaUno">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem>cambia el color del fondo</asp:ListItem>
                                            <asp:ListItem>Cambia el color de la fuente</asp:ListItem>
                                            <asp:ListItem>Cambia el tipo de letra</asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableHeaderCell>N°2: ¿Que realiza la propiedad blackground?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaDos">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem>Cambia el color de la fuente</asp:ListItem>
                                            <asp:ListItem>Cambia el color del titulo</asp:ListItem>
                                            <asp:ListItem>Cambia el color del fondo</asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableHeaderCell>N°3: ¿Si puede crear una hoja de estilo en el HTML?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaTres">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem>Si</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                            <asp:ListItem>Si, pero no se le recomienda</asp:ListItem>
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
