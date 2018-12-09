<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Nivel2.aspx.cs" Inherits="ProyectoCitt.Views.JQuery.Nivel2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script>
        function openModal() {
            $('#mostrarmodal').modal('show');
        }

        function openInfo1() {
            $('[id*=Title]').text("¿Que es un enlace?");
            $('[id*=lblInfo]').text("En el HTML los enlaces se marcan con la etiqueta <a></a> y el atributo principal es href= donde se escribe la ubicación del archivo de destino que puede estar en la misma carpeta que el archivo que lo está llamando, en otra carpeta del mismo sitio o en otro sitio web.");
            $('#modalInfo').modal('show');
        }

        function openInfo2() {
            $('[id*=Title]').text("Atributo target");
            $('[id*=lblInfo]').text("Cuando abrimos una página web en un navegador (haciendo clic en un enlace) puede especificar dónde y cómo abrir esta ventana. Si no se especifica al navegador una cierta ventana, entonces la página se abrirá en la misma ventana. Podemos decir al navegador que utilice cierta ventana con la ayuda del atributo target de la etiqueta <a>. El valor del atributo target le dice al navegador en donde tiene que abrir esta pagina web. Por ejemplo el valor _blank dice al navegado que tiene que abrir la pagina en una nueva ventana.");
            $('#modalInfo').modal('show');
        }

        function openInfo3() {
            $('[id*=Title]').text("¿Etiqueta <link>");
            $('[id*=lblInfo]').text("El elemento HTML <link> especifica la relación entre el documento actual y un recurso externo. Los usos posibles de este elemento incluyen la definición de un marco relacional para navegación. Este elemento es más frecuentemente usado para enlazar hojas de estilos.");
            $('#modalInfo').modal('show');
        }

         function openInfo4() {
            $('[id*=Title]').text("Abrir Correo");
            $('[id*=lblInfo]').text("Naturalmente, éste debe ser un URL válido. ... Es decir, un enlace HTML cuyo atributo HREF sea un URL del esquema mailto no puede contener más información que la dirección de correo electrónico vinculada: ni asunto, ni cuerpo, ni nada. Sólo la dirección de correo");
            $('#modalInfo').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Contenedor principal -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-7">
                <video autoplay class="embed-responsive-item"  width="900px" height="500px" controls>
                    <source src="../../Scripts/Multimedia/JQUERY_2.mp4" type="video/mp4">
                </video>
            </div>
            <div class="col-sm-5">
                <div>
                    <h2>Contenido del video</h2>
                    <hr />
                </div>
                <div class="col-sm-5">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home" onclick="javascript:openInfo1()">¿Que es un enlace?</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile" onclick="javascript:openInfo2()">¿Que es el atributo target?</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages"  onclick="javascript:openInfo3()">¿Etiqueta Link?</a>
                        <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings"  onclick="javascript:openInfo4()">Abrir correo</a>
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
                <div class="modal-body"><form runat="server">
                        <div class="table-responsive printable">
                            <asp:Table runat="server" CssClass="table table-bordred table-striped" ID="tablaConsultaPermisos">
                                <asp:TableRow TableSection="TableHeader">
                                    <asp:TableHeaderCell>N°1: ¿Que es un HTML?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaUno">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow TableSection="TableHeader">
                                    <asp:TableHeaderCell>N°2: ¿Que tag se utiliza para poner un comentario?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaDos">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow TableSection="TableHeader">
                                    <asp:TableHeaderCell>N°3: ¿Que funcion cumple un atributo dentro de una etiqueta?</asp:TableHeaderCell>
                                    <asp:TableCell>
                                        <asp:DropDownList runat="server" ID="preguntaTres">
                                            <asp:ListItem>Seleccione Opcion</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
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
