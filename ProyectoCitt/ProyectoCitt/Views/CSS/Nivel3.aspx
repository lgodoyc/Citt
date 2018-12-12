<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Nivel3.aspx.cs" Inherits="ProyectoCitt.Views.CSS.Nivel3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function openModal() {
            $('#mostrarmodal').modal('show');
        }

        function openInfo1() {
            $('[id*=Title]').text("¿Que es una unidad de medida en CSS?");
            $('[id*=lblInfo]').text("Las medidas en CSS se emplean, entre otras, para definir la altura, anchura y márgenes de los elementos y para establecer el tamaño de letra del texto. Todas las medidas se indican como un valor numérico entero o decimal seguido de una unidad de medida (sin ningún espacio en blanco entre el número y la unidad de medida).");
            $('#modalInfo').modal('show');
        }

        function openInfo2() {
            $('[id*=Title]').text("Unidad de medida relativa en CSS");
            $('[id*=lblInfo]').text("La unidad relativa, son medidas flexibles que se ajustan mas a nuestro trabajo (%)");
            $('#modalInfo').modal('show');
        }

        function openInfo3() {
            $('[id*=Title]').text("Unidad de medida absoluta en CSS");
            $('[id*=lblInfo]').text("La unidad absoluta, nos permite establecer un valor fijo y que no se modifique para nada (px, em, rem,cm,in,mm)");
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
                    <source src="../../Scripts/Multimedia/CSS_3.mp4" type="video/mp4">
                </video>
            </div>
            <div class="col-sm-5">
                <div>
                    <h2>Contenido del video</h2>
                    <hr />
                </div>
                <div class="col-sm-5">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home" onclick="javascript:openInfo1()">¿Que es una unidad de medida en CSS?</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile" onclick="javascript:openInfo2()">Unidad de medida relativa en CSS</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages" onclick="javascript:openInfo3()">Unidad de medida absoluta en CSS</a>
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
                                    <asp:TableHeaderCell>N°1: ¿Como puedo hacer que un elemento < p > que esta dentro de un < div > tome el tamaño del body?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaUno">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem>con la unidad de medida rem</asp:ListItem>
                                            <asp:ListItem>con la unidad de medida em</asp:ListItem>
                                            <asp:ListItem>con la unidad de medida px</asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableHeaderCell>N°2: ¿Para que me sirve la unidad de medida em?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaDos">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem>toma la medida padre</asp:ListItem>
                                            <asp:ListItem>toma la medida del body</asp:ListItem>
                                            <asp:ListItem>adopta el 100 % de la pantalla</asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableHeaderCell>N°3: ¿En cual de estas opciones todas sus medidas son absoluta?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaTres">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem>em, rem, %, cm, mm</asp:ListItem>
                                            <asp:ListItem>rem, %, px, cm</asp:ListItem>
                                            <asp:ListItem>Ninguna de las dos anteriores</asp:ListItem>
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
