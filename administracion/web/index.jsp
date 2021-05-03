<%-- 
    Document   : index
    Created on : 28/04/2021, 02:28:18 PM
    Author     : dzmau3t
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.dataTables.min.css"/>    
        <link href="${pageContext.request.contextPath}/css/buttons.dataTables.css" rel="stylesheet" type="text/css" />
        <title>Clinica Ortodoncia y Odontología Integral Villaseñor</title>
    </head>
    <body>
        <jsp:include page="/nav/nav.jsp"/>
        <div class="content-padder ">
            <div class="uk-section-small">
                <div class="uk-container uk-container-expand">

                    <div uk-grid>
                        <div class="uk-width-1-1@l uk-width-1-1@m uk-width-1-1@s">
                            <div class="uk-card uk-card-default">
                                <div class="uk-card-header uk-padding-remove-top">
                                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                                        <div class="uk-width-auto">
                                            <img class="uk-border-circle" width="40" height="40" src="${pageContext.request.contextPath}/img/pacientes.png">
                                        </div>
                                        <div class="uk-width-auto">
                                            <p class="uk-margin-remove-top uk-text-bold uk-margin-remove-bottom">Nuestros Pacientes</p>
                                            <p id="nombreCompleto-header" name="nombreCompleto-header" class="uk-text-meta uk-margin-remove-top"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="uk-card-body uk-padding-remove-top">
                                    <table id="listaPacientes" class="display uk-animation-slide-right compact" style="width:100%">
                                        <thead>
<!--                                            <tr>
                                                <th colspan="3">Información Personal</th>
                                                <th style="border-bottom:none;" colspan="3"></th>
                                                <th colspan="5">Pagos</th>
                                            </tr>-->
                                            <tr>
                                                <th>Nombre</th>
                                                <th>Edad</th>
                                                <th>email</th> 
                                                <th>Tratamiento</th>
                                                <th>Fecha Inicio</th>
                                                <th>Fecha Cierre</th>
                                                <th>Mensualidad</th>
                                                <th># Mens Cubiertas</th>
                                                <th># Mens pendientes</th>
                                                <th>Monto Cubierto</th>
                                                <th>Monto Pendiente</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="modal-mostrar-mensualidades" uk-modal bg-close='false' keyboard='false' uk-open>
                    <div class="uk-modal-dialog uk-margin-auto-vertical uk-modal-body" uk-overflow-auto>
                        <p class="uk-text-center uk-text-bold">
                            Información del Paciente
                        </p>
                        <div class="uk-text-center uk-text-bold">
                            <a id="sendsolicitud"  name="sendsolicitud" class="uk-button uk-button-primary"  onclick="autorizarSolicitud(4, 2);" >Autorizar</a>
                            <button class="uk-button uk-button-default uk-modal-close" type="button">Cancelar</button>
                        </div>
                    </div>
                </div>
                <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath}"/>                              
            </div>
        </div>


        <script src="${pageContext.request.contextPath}/js/jquery.min.js" ></script>
        <script src="${pageContext.request.contextPath}/js/uikit.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/uikit-icons.min.js"></script>        

        <script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>        
        <script src="${pageContext.request.contextPath}/js/datamodels/catalogos-table.js"></script>   
        <script>

                                    $(document).ready(function () {
                                        llenarTablaPacientes();
                                    });
        </script>
    </body>
</html>