$(document).ready(function () {
    ///////////////////////// LOGIN /////////////////////////////////
    /*
     * Inicia modal de carga.
     */
    $('#btnLogin').on('click', function () {

        var user = $('#txtUsuario').val();
        var pass = $('#txtContraseña').val();

        if (user != "" && pass != "") {

            var $modal = $(this);

            $modal.attr("data-target", "#modalCarga");
        }
    });

    /*
     * Oculta el mensaje de error al presionar el spam
     */
    $('#btnClose').on('click', function () {


        $mensaje = $('#errorSession');

        $mensaje.attr('hidden','true');
    });

    //////////////////////// CONSULTA PERMISO  JEFE INTERNO/////////////////////////

    $('#validarDocumento').on('click', function () {

        var cod = $('#txtCodSolicitud').val();

        if (cod != "") {
            var $modalSolicitud = $(this);
            
            $modalSolicitud.attr("data-target", "#solicitudPDF");
        }
    });

    //////////////////// ESTADO PERMISO FUNCIONARIO ////////////////////
    /*
     * Oculta el mensaje de error al presionar el spam
     */
    $('#btnClose').on('click', function () {

        //document.getElementById("errerrorBuscaSolicitudor").attributes("style", "display:none");
        document.getElementById('#errorBuscaSolicitudor').attributes.style.display = "none";
    
    });


    ////////////////////// JEFE SUPERIOR
    $('#txtRut').on('click', function () {

        var rut = $('#inputSuccess5').val();

        if (rut != "") {

            var $modal = $(this);

            $modal.attr("data-target", "#modalSolicitud");
        }
    });
}); 