<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="ProyectoCitt.Views.HTML.Curso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function openModal() {
            $('#mostrarmodal').modal('show');
        }

        function openInfo1() {
            $('[id*=Title]').text("Introduccion al html");
            $('[id*=lblInfo]').text("HTML (HyperText Markup Language) es el primer lenguaje que una persona debe conocer si desea comenzar a realizar páginas web. HTML no es un lenguaje de programación, sino una lenguaje descriptivo, una serie de etiquetas que el navegador interpretará de una u otra forma para mostrar distintos contenidos por pantalla.");
            $('#modalInfo').modal('show');
        }

        function openInfo2() {
            $('[id*=Title]').text("¿Que es una etiqueta en HTML?");
            $('[id*=lblInfo]').text("Es un fragmento que representa algo dentro de una pagina. Ej. un boton");
            $('#modalInfo').modal('show');
        }

        function openInfo3() {
            $('[id*=Title]').text("¿Que es un atributo en HTML");
            $('[id*=lblInfo]').text("Los atributos de las etiquetas HTML sirven para definir detalles de comportamiento o presentación de la etiqueta a los que se les coloca. Se escriben dentro de la propia etiqueta con su nombre de atributo y el valor del atributo entre comillas.");
            $('#modalInfo').modal('show');
        }

         function openInfo4() {
            $('[id*=Title]').text("Estructura basica de un HTML");
            $('[id*=lblInfo]').text("<html><head></head><body></body></html>");
            $('#modalInfo').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container-fluid">
        <div class="row">
            <div class="col-sm-5">
                <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/cqMfPS8jPys?start=13;rel=0;end=882;modestbranding=0;controls=1;fs=1;ecver=2" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="col-sm-5">
                <div>
                    <h2>Contenido del video</h2>
                    <hr />
                </div>
                <div class="col-sm-5">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home" onclick="javascript:openInfo1()">Introduccion al html</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile" onclick="javascript:openInfo2()">¿Que es una etiqueta?</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages"  onclick="javascript:openInfo3()">¿Que es un atributo?</a>
                        <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings"  onclick="javascript:openInfo4()">Estructura de un html</a>
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
    </div>

    <!-- Modal de encuesta -->
    <div class="modal fade screen" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label=""><span>×</span></button>
                </div>
                <div class="modal-body">
                    <div class="table-responsive printable">
                        <asp:Table runat="server" CssClass="table table-bordred table-striped" ID="tablaConsultaPermisos">
                            <asp:TableRow TableSection="TableHeader">
                                <asp:TableHeaderCell>N°1: ¿Que es un HTML?</asp:TableHeaderCell>
                                <asp:TableCell>
                                    <select>
                                        <option>Seleccione Opcion</option>
                                        <option>Es un lenguaje de JAVA</option>
                                        <option>Un lenguaje de programacion</option>
                                        <option>Lenguaje de Hipertexto</option>
                                    </select>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow TableSection="TableHeader">
                                <asp:TableHeaderCell>N°2: ¿Que tag se utiliza para poner un comentario?</asp:TableHeaderCell>
                                <asp:TableCell>
                                    <select>
                                        <option>Seleccione Opcion</option>
                                        <option>< head ></option>
                                        <option>< ! --  -- ></option>
                                        <option>Se escrube sin anteponer el "<"</option>
                                    </select>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow TableSection="TableHeader">
                                <asp:TableHeaderCell>N°3: ¿Que funcion cumple un atributo dentro de una etiqueta?</asp:TableHeaderCell>
                                <asp:TableCell>
                                    <select>
                                        <option>Seleccione Opcion</option>
                                        <option>Es una descripcion</option>
                                        <option>Es una accion de una etiqueta</option>
                                        <option>Define acciones o estilo</option>
                                    </select>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                    <form runat="server">
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
