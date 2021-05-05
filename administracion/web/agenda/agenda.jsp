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
          <div uk-grid>
            <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath}"/>
            <input type="hidden" id="vartest" name="vartest" value="${proyecto_json}"/>
            <div class="uk-width-1-2">
                <h1 class="uk-text-muted uk-text-small uk-text-bold uk-text-center">Registro HDT</h1>
                <!-- Search Form -->
                <form name="mainForm" id="mainForm"   data-step="1" data-intro="Formulario de registro de HDT"
                      class="uk-grid-small uk-card uk-card-body uk-box-shadow-large uk-width-5-6 uk-width-3-4 uk-margin-auto uk-animation-slide-left uk-form uk-background-default" uk-grid>

                    <legend class="uk-legend uk-margin-small-bottom">Nueva HDT<span uk-icon="plus-circle"></span></legend>   
                    <input type="hidden" id="user" name="user" value="${pageContext.request.remoteUser}" />
                    <input type="hidden" name="cmd" value="newhdt" />

                    <div class="uk-width-1-3 " data-step="3" data-intro="Indique el proyecto para el que la HDT fue adquirida, si no se despliega la opción deseada reporte con el administrador del sistema">
                        <label class="uk-form-label" for="proycompra">Proyecto Compra</label>
                        <div class="uk-form-controls" data-step="2" data-intro="Indique el proy">
                            <select name="proycompra" class="uk-select" id="proycompra"></select>
                        </div>
                    </div>

                    <div class="uk-width-1-3" data-step="4" data-intro="El nombre lógico de la HDT debe ser único">
                        <label class="uk-form-label" for="nologico">Nombre Lógico</label>
                        <label class="uk-form-label uk-text-danger" for="nologico">*</label>
                        <div class="uk-form-controls">
                            <input type="text" name="nologico" maxlength="100" class="uk-input" id="nologico">
                        </div>
                    </div>
                    <div class="uk-width-1-3" data-step="5" data-intro="El nombre físico es el nombre que se marca en la HDT">
                        <label class="uk-form-label" for="nofisico">Nombre Físico</label>
                        <label class="uk-form-label uk-text-danger" for="nofisico">*</label>
                        <div class="uk-form-controls">
                            <input type="text" name="nofisico" maxlength="100" class="uk-input" id="nofisico">
                        </div>
                    </div>
                    <div class="uk-width-1-3" data-step="6" data-intro="El número de serie de la HDT debe ser único">
                        <label class="uk-form-label" for="noserie">No Serie</label>
                        <label class="uk-form-label uk-text-danger" for="noserie">*</label>
                        <div class="uk-form-controls">
                            <input type="text" name="noserie" maxlength="100" class="uk-input" id="noserie">
                        </div>
                    </div>
                    <!--                    <div class="uk-width-1-3" data-step="7" data-intro="Sí la IP no aparece en el listado puede ser que esté asignada a otra HDT o no esté registrada. 
             En el primer caso busque la ip en la tabla de la derecha y asigne otra a la HDT que la tenga asignada ">
            <label class="uk-form-label" for="ip">IP</label>
            <div class="uk-form-controls">
                <select name="ips" class="uk-select" id="ips"></select>
            </div>
        </div>-->
                    <input type="hidden"  name="ip-param" id="ip-param"/>
                    <!--<div  data-step="5" data-intro="Si la IP ya pertenece a otra HDT considere hacer el intercambio" class="uk-width-1-3 uk-grid" uk-grid name="ip-control">-->

                    <div class="uk-width-1-3" >
                        <label class="uk-form-label" data-step="7" data-intro="Debe seleccionar una dirección IP de la tabla que se despliega al dar clic en el ícono ... " for="ip">Seleccionar IP<a uk-toggle="target: #modal-ip" class="uk-icon-link uk-icon-justify uk-margin-auto uk-text-success" uk-icon="more"></a></label>
                        <input type="text" name="ip" maxlength="15" class="uk-input" id="ip" placeholder="IP" readonly="">
                    </div>

                    <!--</div>-->

                    <div class="uk-width-1-3">
                        <label class="uk-form-label" for="fabricante">Fabricante</label>
                        <div class="uk-form-controls" data-step="8" data-intro="Indique el fabricante" >
                            <input type="text" name="fabricante" maxlength="100" class="uk-input" id="fabricante">
                        </div>
                    </div>
                    <div class="uk-width-1-3">
                        <label class="uk-form-label" for="so">Sistema Operativo</label>
                        <div class="uk-form-controls" data-step="9" data-intro="Indique el Sistema Operativo de la HDT" >
                            <input type="text" name="so" maxlength="100" class="uk-input" id="so">
                        </div>
                    </div>
                    <div class="uk-width-1-3">
                        <label class="uk-form-label" for="modelo">Modelo</label>
                        <div class="uk-form-controls" data-step="10" data-intro="Indique el modelo de la HDT" >
                            <input type="text" name="modelo" maxlength="100" class="uk-input" id="modelo">
                        </div>
                    </div>
                    <legend class="uk-legend uk-margin-small-bottom"  >Actualizar Ubicación<span uk-icon="pencil"></span></legend>

                    <!-- Hidden Inputs -->
                    <input type="hidden" name="user" value="${pageContext.request.remoteUser}" />


                    <div class="uk-width-1-4" data-step="11" data-intro="Se debe especificar la ubicación inicial. El resto de los campos se activarán de acuerdo a su elección">
                        <label class="uk-form-label"  for="new-ubicacion">Ubicación</label>
                        <div class="uk-form-controls">
                            <select name="new-ubicacion" class="uk-select" id="new-ubicacion"></select>
                        </div>
                    </div>
                    <div class="uk-width-1-4">
                        <label class="uk-form-label" for="nave">Segmento</label>
                        <div class="uk-form-controls">
                            <select name="nave" class="uk-select" id="nave"></select>
                        </div>
                    </div>
                    <div class="uk-width-1-4">
                        <label class="uk-form-label" for="gerencia">Gerencia</label>
                        <div class="uk-form-controls">
                            <select name="gerencia" class="uk-select" id="gerencia"></select>
                        </div>
                    </div>
                    <div class="uk-width-1-4">
                        <label class="uk-form-label" for="nave">Proceso</label>
                        <div class="uk-form-controls">
                            <select name="proceso" class="uk-select" id="proceso"></select>
                        </div>
                    </div>
                    <div class="uk-width-1-3" data-step="12" data-intro="Indica el tipo de operación para el que se usará la HDT (solo en caso de que la ubicación sea 'Productivo'">
                        <label class="uk-form-label" for="funcion">Función</label>
                        <div class="uk-form-controls">
                            <select name="funcion" class="uk-select" id="funcion"></select>
                        </div>
                    </div>
                    <div class="uk-width-2-3">
                        <label class="uk-form-label" for="comentarios-ubic">Comentarios</label>
                        <div class="uk-margin">
                            <textarea class="uk-textarea" name="comentarios-ubic" id="comentarios-ubic"rows="3" placeholder="Comentarios"></textarea>
                        </div>
                    </div>

                    <div class="uk-width-1-3 uk-margin-auto uk-" data-step="13" data-intro="Al dar clic en Registrar el equipo quedará dado de alta y se mostrará en la tabla de la derecha" >
                        <a id="save"  name="save" class="uk-button uk-button-primary" onclick="submitDataNewHDT();" >Registrar</a>
                        <!--<a id="save"  name="save" class="uk-button uk-button-primary" onclick="abortreq();" >Refresh</a>-->
                    </div>
                </form>
            </div>
            <div id="modal-ip" uk-modal class="uk-modal-container">
                <div class="uk-modal-dialog uk-modal-body">
                    <h2 class="uk-modal-title">Seleccionar IP</h2>
                    <div class="uk-width-1-1">
                        <table id="forIP" class="display uk-animation-slide-left compact" style="width:100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>IP</th>
                                    <th>HDT actual</th>
                                    <th>Disponible</th>
                                </tr>
                            </thead>
                        </table>
                    </div>

                    <p class="uk-text-right">
                        <button class="uk-button uk-button-default uk-modal-close" type="button">Cancel</button>
                        <button class="uk-button uk-button-primary" type="button">Save</button>
                    </p>
                </div>
            </div>
            <div class="uk-width-1-2  uk-card uk-card-body"  data-step="2" data-intro="Muestra las HDT registradas en sistema">
                <div class="uk-card uk-width-1-1 text-primary uk-text-bolder"><h2><span class="uk-text-background"> HDT Listado General</span></h2>                
                </div>
                <table id="newHDTs" class="display uk-animation-slide-left compact" style="width:100%">
                    <thead>
                        <tr>
                            <th>Proyecto Compra</th>
                            <th>Nombre Físico</th>
                            <th>Nombre Lógico</th>
                            <th>No Serie</th>
                            <th>IP</th>
                            <!--<th>SO</th>-->
                            <th>Fabricante</th>
                            <th>Modelo</th>
                            <th>Ubicación</th>
                            <th>Fallas</th>
                            <th>Bandera*</th>
                            <th>F. Registro</th>
                        </tr>
                    </thead>
                </table> 
            </div>
        </div>
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