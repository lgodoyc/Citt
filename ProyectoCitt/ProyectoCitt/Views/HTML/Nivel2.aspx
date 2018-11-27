<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Nivel2.aspx.cs" Inherits="ProyectoCitt.Views.HTML.Nivel2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script>
        function openModal() {
            $('#mostrarmodal').modal('show');
        }

        function openInfo1() {
            $('[id*=Title]').text("Encabezados <h1></h1>");
            $('[id*=lblInfo]').text("Puede que queramos empezar nuestra web o nuestro texto con un encabezado indicando el título del artículo, categoría, etc. Pues bien, para escribir encabezados tenemos que utilizar las etiquetas <h>. Esta etiqueta viene acompañada de un número, desde el 1 hasta el 6, predefiniendo éstos el tamaño del encabezado. Así, <h1> sería el encabezado más grande mientras que <h6> sería el más pequeño.");
            $('#modalInfo').modal('show');
        }

        function openInfo2() {
            $('[id*=Title]').text("Parrafo <p></p>");
            $('[id*=lblInfo]').text("La finalidad de la etiqueta <p>, es la de definir un párrafo, el texto encerrado entre las mismas será considerado por el navegador como un párrafo. El navegador realiza un ajuste automático de los párrafos al ancho de pantalla determinado por la ventana del programa navegador. Se ha de tener en cuenta que los navegadores cuando realizan la representación del lenguaje HTML5, no tienen en cuenta más de un espacio en blanco de separación entre palabras, es decir aunque deje con su editor de textos entre una palabra y otra más de un espacio en blanco, solo se visualizara uno descartándose el resto.");
            $('#modalInfo').modal('show');
        }

        function openInfo3() {
            $('[id*=Title]').text("Etiqueta span");
            $('[id*=lblInfo]').text("Es un contenedor en línea. Sirve para aplicar estilo al texto o agrupar elementos en línea. Sus etiquetas son: <span> y </span> (ambas obligatorias). Está definido como: Elemento especial, y por lo tanto en línea.");
            $('#modalInfo').modal('show');
        }

        // function openInfo4() {
        //    $('[id*=Title]').text("Estructura basica de un HTML");
        //    $('[id*=lblInfo]').text("<html> <head> </head> <body> </body> </html>");
        //    $('#modalInfo').modal('show');
        //}
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Contenedor principal -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-5">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/TNQleomUw6U?start=19;rel=0;end=519;modestbranding=0;controls=0;fs=1;ecver=2" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="col-sm-5">
                <div>
                    <h2>Contenido del video</h2>
                    <hr />
                </div>
                <div class="col-sm-5">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home" onclick="javascript:openInfo1()">Encabezados</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile" onclick="javascript:openInfo2()">Parrafo</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages"  onclick="javascript:openInfo3()">etiqueta span</a>
                        <%--<a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings"  onclick="javascript:openInfo4()">Estructura de un html</a>--%>
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
                                <asp:TableHeaderCell>N°1: ¿Para que se utiliza la etiqueta < strong >?</asp:TableHeaderCell>
                                <asp:TableCell>
                                    <select>
                                        <option>Seleccione Opcion</option>
                                        <option>un salto de linea</option>
                                        <option>enegrecer el texto</option>
                                        <option>para citar un autor</option>
                                    </select>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow TableSection="TableHeader">
                                <asp:TableHeaderCell>N°2: ¿que etiqueta se utiliza para un titulo?</asp:TableHeaderCell>
                                <asp:TableCell>
                                    <select>
                                        <option>Seleccione Opcion</option>
                                        <option>< span ></option>
                                        <option>< p ></option>
                                        <option>< h 1></option>
                                    </select>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow TableSection="TableHeader">
                                <asp:TableHeaderCell>N°3: ¿que etiqueta se utiliza para crear un parrafo?</asp:TableHeaderCell>
                                <asp:TableCell>
                                    <select>
                                        <option>Seleccione Opcion</option>
                                        <option>< p ></option>
                                        <option>< b ></option>
                                        <option>< span ></option>
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
