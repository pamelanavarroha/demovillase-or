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

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/daterangepicker.css" />
        <title>Clinica Ortodoncia y Odontología Integral Villaseñor</title>
    </head>
    <body>
        <jsp:include page="/nav/nav.jsp"/>
        <div uk-grid>
            <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath}"/>
            <input type="hidden" id="vartest" name="vartest" value="${proyecto_json}"/>


            <div class="uk-width-1-3@l uk-width-1-2@m uk-width-1-1@s uk-card uk-card-body   uk-padding-remove-right "  data-step="2" data-intro="Permite personalizar busquedas y modificaciones en la agenda">
                <div class="uk-container uk-container-expand uk-card-default uk-card-body">

                    <form class="uk-form-stacked uk-form  uk-padding-remove-top  uk-animation-slide-left uk-background-default  uk-grid   uk-child-width-auto@m" uk-grid="">
                        <!--                        <div class="uk-width-1-1">
                                                    <p class="uk-margin-remove-top uk-text-bold uk-margin-remove-bottom">Buscar en la agenda</p>
                                                </div>-->
                        <div class="uk-card-header uk-padding-remove-top uk-width-1-1">
                            <div class="uk-grid-small uk-flex-middle" uk-grid>
                                <div class="uk-width-auto">
                                    <img width="40" height="40" src="${pageContext.request.contextPath}/img/calendar-search.png">
                                </div>
                                <div class="uk-width-auto">
                                    <p class="uk-margin-remove-top uk-text-bold uk-margin-remove-bottom">Buscar en Agenda</p>
                                    <p id="nombreCompleto-header" name="nombreCompleto-header" class="uk-text-meta uk-margin-remove-top"></p>
                                </div>
                            </div>
                        </div>
                        <div class="uk-first-column">
                            <div class="uk-margin">

                                <span class="uk-form-label">Buscar por paciente</span>
                                <div class="uk-inline">
                                    <span class="uk-form-icon uk-icon" uk-icon="icon: user"></span>
                                    <input id="paciente-busqueda" class="uk-input uk-form-width-medium" type="text">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="uk-margin">  
                                <span class="uk-form-label">Buscar por Fecha</span>
                                <div class="uk-inline">
                                    <span class="uk-form-icon uk-icon" uk-icon="icon: calendar"></span>
                                    <input id="fecha-busqueda" type="text" id="ddesde" name="ddesde"class=" uk-input"/>
                                </div>
                            </div>
                        </div>

                        <!--                        <div class="uk-width-1-1">
                                                    <p class="uk-margin-remove-top uk-text-bold uk-margin-remove-bottom">Agendar Cita</p>
                                                </div>-->
                        <div class="uk-card-header uk-padding-remove-top uk-width-1-1">
                            <div class="uk-grid-small uk-flex-middle" uk-grid>
                                <div class="uk-width-auto">
                                    <img width="40" height="40" src="${pageContext.request.contextPath}/img/calendar-plus.png">
                                </div>
                                <div class="uk-width-auto">
                                    <p class="uk-margin-remove-top uk-text-bold uk-margin-remove-bottom">Agendar Cita</p>
                                    <p id="nombreCompleto-header" name="nombreCompleto-header" class="uk-text-meta uk-margin-remove-top"></p>
                                </div>
                            </div>
                        </div>
                        <div class="uk-first-column">
                            <div class="uk-margin">

                                <span class="uk-form-label">Seleccionar paciente</span>
                                <div class="uk-inline">
                                    <span class="uk-form-icon uk-icon" uk-icon="icon: user"></span>
                                    <input class="uk-input uk-form-width-medium" required="true" id="paciente-agendar" type="text">
                                    <button class="uk-button uk-text-bold" type="button" uk-toggle="target: #modal-mostrar-pacientes" >Buscar</button>
                                </div>
                            </div>
                        </div>
                        <div class="uk-first-column">
                            <div class="uk-margin">

                                <span class="uk-form-label">Seleccionar Doctor</span>
                                <div class="uk-inline">
                                    <!--<span class="uk-form-icon uk-icon" uk-icon="icon: user"></span>-->
                                    <!--<input class="uk-input uk-form-width-medium" type="text">-->
                                    <select class="uk-form-width-medium uk-select">
                                        <option class="">Natalia Villaseñor</option>
                                        <option class="">Luis Angel Villaseñor</option>
                                        <option class="">Luis Eduardo Villaseñor</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="uk-margin">  
                                <span class="uk-form-label">Seleccionar Fecha</span>
                                <div class="uk-inline">
                                    <span class="uk-form-icon uk-icon" uk-icon="icon: calendar"></span>
                                    <input type="text" id="ddesde" name="ddesde"class=" uk-input uk-form-width-medium"/>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="uk-margin">

                                <span class="uk-form-label">Seleccionar Hora</span>
                                <div class="uk-inline">
                                    <!--<span class="uk-form-icon uk-icon" uk-icon="icon: user"></span>-->
                                    <!--<input class="uk-input uk-form-width-medium" type="text">-->
                                    <select class="uk-form-width-medium uk-select">
                                        <option class="">11:00 - 11:30</option>
                                        <option class="">11:30 - 12:00</option>
                                        <option class="">12:00 - 12:30</option>
                                        <option class="">12:30 - 13:00</option>
                                        <option class="">16:00 - 16:30</option> 
                                    </select>
                                </div>
                            <a id="sendsolicitud"  name="sendsolicitud" class="uk-button uk-button-primary"  onclick="modalConfirmaAgenda();" >Agendar</a>                            
                        
                            </div>
                        </div>

                      
                    </form>




                </div>
            </div>



            <div class="uk-width-2-3@l uk-width-1-2@m uk-width-1-1@s  uk-card uk-card-body uk-padding-remove-left"  data-step="2" data-intro="Muestra las HDT registradas en sistema">
                <div class="uk-container uk-container-expand">

                    <div uk-grid>
                        <div class="uk-width-1-1">
                            <div class="uk-card uk-card-default">
                                <div class="uk-card-header uk-padding-remove-top">
                                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                                        <div class="uk-width-auto">
                                            <img width="40" height="40" src="${pageContext.request.contextPath}/img/agenda2.png">
                                        </div>
                                        <div class="uk-width-auto">
                                            <p class="uk-margin-remove-top uk-text-bold uk-margin-remove-bottom">Agenda</p>
                                            <p id="nombreCompleto-header" name="nombreCompleto-header" class="uk-text-meta uk-margin-remove-top"></p>
                                        </div>
                                    </div>
                                </div>
                                <hr class="uk-divider-icon">

                                <div class="uk-card-body uk-grid uk-padding-remove-top uk-width-1-1uk-grid-small uk-grid-match uk-child-width-expand@s">
                                    <span class="uk-margin-remove-top uk-text-bold uk-margin-remove-bottom">Busqueda por<label id="etiqueta-busqueda" class="uk-inline uk-text-primary"></label></span>
                                    <table id="listaAgenda" class="display uk-animation-slide-right compact" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Fecha</th>
                                                <th>Horario</th>
                                                <th>Paciente</th>
                                                <th>Atención</th>
                                            </tr>
                                        </thead>
                                    </table>                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div id="modal-mostrar-pacientes" uk-modal bg-close='false' keyboard='false' uk-open>
            <div class="uk-modal-dialog uk-margin-auto-vertical uk-modal-body" uk-overflow-auto>
                <p class="uk-text-center uk-text-bold">
                    Información del Paciente
                </p>
                <table id="listaPacientesModal" class="display uk-animation-slide-right compact" style="width:100%">
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
                        </tr>
                    </thead>
                </table>
            </div>
        </div>


        <script src="${pageContext.request.contextPath}/js/jquery.min.js" ></script>
        <script src="${pageContext.request.contextPath}/js/uikit.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/uikit-icons.min.js"></script>        

        <script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>        
        <script src="${pageContext.request.contextPath}/js/datamodels/catalogos-table.js"></script>   
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/moment.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/daterangepicker.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/datepicker-c.js"></script>




        <script>

                                        $(document).ready(function () {
                                            llenarTablaAgenda();
                                            llenarTablaPacientesModal();
                                            datePickerInit();

                                            $("#etiqueta-busqueda").html("Fecha: 10/05/2021");
                                            $('#fecha-busqueda').bind("enterKey", function (e) {
                                                //do stuff here
                                                $("#etiqueta-busqueda").html("Fecha: 26/05/2021");
                                                llenarTablaAgenda2();

                                            });
                                            $('#fecha-busqueda').keyup(function (e) {
                                                if (e.keyCode == 13)
                                                {
                                                    $(this).trigger("enterKey");
                                                }
                                            });

                                            $('#paciente-busqueda').bind("enterKey", function (e) {
                                                //do stuff here
                                                $("#etiqueta-busqueda").html("Paciente: Azucena Aguas García");
                                                llenarTablaAgendaPaciente()();

                                            });
                                            $('#paciente-busqueda').keyup(function (e) {
                                                if (e.keyCode == 13)
                                                {
                                                    $(this).trigger("enterKey");
                                                }
                                            });
                                        });
        </script>
    </body>
</html>