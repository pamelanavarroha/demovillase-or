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
                                        <div class="uk-navbar-right">
                                            <a class="uk-margin-remove-top uk-text-bold uk-margin-remove-bottom uk-link-muted" href="${pageContext.request.contextPath}/newrequest" uk-toggle="target: #modal-agregar-paciente">
                                            <span class="uk-margin-small-right uk-icon" uk-icon="icon: plus-circle"></span>Agregar Paciente</a>
                                        </div>
                                    </div>
                                            
                                    <div id="modal-agregar-paciente" class="uk-modal-container" uk-modal>
                                        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">
                                            <form class="uk-form-stacked">
                                                <div class="uk-margin">
                                                    <h3 class="uk-modal-title uk-modal-header"> Datos del Paciente </h3>
                                                    <label class="uk-form-label" for="form-stacked-text">Nombre completo:</label>
                                                    <div class="uk-form-controls">
                                                        <input class="uk-input" id="form-stacked-text" type="text" placeholder="Escribe el nombre del paciente">
                                                    </div>
                                                </div>

                                        <div class="uk-margin">
                                            <label class="uk-form-label" for="form-stacked-select">Edad:</label>
                                                <div class="uk-form-controls">
                                                    <input class="uk-input" id="form-stacked-text" type="text" placeholder="Edad del paciente">
                                                </div>
                                                <div class="uk-margin">
                                                    <label class="uk-form-label" for="form-stacked-select">Tratamiento</label>
                                                        <div class="uk-form-controls">
                                                            <select class="uk-select" id="form-stacked-select">
                                                                <option>Seleccionar tratamiento</option>
                                                                <option>Ortodoncia</option>
                                                                <option>Limpieza</option>
                                                            </select>
                                                        </div>
                                                </div>
                                            </form> 
                                                <div class="uk-margin">
                                                    <span class="uk-form-label">Seleccionar Fecha:</span>
                                                    <div class="uk-margin uk-inline">
                                                        <span class="uk-form-icon uk-icon" uk-icon="icon: calendar"></span>
                                                            <input type="text" name="datefilter" value="" class="uk-input"/>
                                                            
                                                    </div>
                                                </div>
                                                <div class="uk-margin">
                                                    <label class="uk-form-label" for="form-stacked-text">Mensualidad:</label>
                                                        <div class="uk-form-controls">
                                                            <input class="uk-input" id="form-stacked-text" type="text" placeholder="Cantidad que abona el paciente">
                                                        </div>
                                                </div>
                                                <div class="uk-margin uk-modal-footer">
                                                    <button class="uk-modal-close uk-button uk-button-primary uk-align-center" type="button">Añadir paciente</button>
                                                </div>
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
                        <div  data-step="5" data-intro="Seleccionar el periodo durante el cual este usuario debe ser válido. "  class=" uk-padding-remove-bottom uk-margin-remove-bottom">
                            <label class="uk-form-label" for="ddesde">Periodo de validez</label>
                            <input type="text" id="ddesde" name="ddesde"class=" uk-input"/>
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