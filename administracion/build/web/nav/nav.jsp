<%-- 
    Document   : navcoordinador
    Created on : 9/06/2020, 11:34:12 AM
    Author     : dzmau3t
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconc.css"/>

    </head>
    <body>        

        <div class="tm-header uk-text-primary normal-viewport">
            <div uk-sticky="sel-target: uk-navbar-container; cls-active: uk-navbar-sticky; bottom: #sticky-dropdown" class="uk-sticky" style="">
                <nav class="uk-navbar-container navbar-villaseñor">
                    <div class="uk-container uk-width-1-1">
                        <div uk-navbar="" class="uk-navbar">
                            <div class="uk-navbar-left">                           
                                <!--<div >-->
                                <!--<img data-src="${pageContext.request.contextPath}/img/vwm2.png" style="height:35px;" alt="" uk-img>-->
                                <p class="uk-text-bold uk-text-menu-name uk-margin-remove">Ortodoncia y Odontología Integral Villaseñor</p>
                            </div>
                            <!--</div>-->
                            <div class="uk-navbar-right">
                                <ul class="uk-navbar-nav">
                                    <li><a class="uk-text-menu-element  uk-text-bold" href="${pageContext.request.contextPath}/newrequest">
                                            <span class="uk-margin-small-right uk-icon" uk-icon="icon: plus-circle"></span>Pagos</a></li>
                                    <li><a class="uk-text-menu-element    uk-text-bold" href="${pageContext.request.contextPath}/agenda/agenda.jsp">
                                            <span class="uk-margin-small-right uk-icon" uk-icon="icon: plus-circle"></span>Agenda</a></li>
                                    <li><a class="uk-text-menu-element    uk-text-bold" href="${pageContext.request.contextPath}/newrequest">
                                            <span class="uk-margin-small-right uk-icon" uk-icon="icon: plus-circle"></span>Expedientes</a></li>
                                    <li><a class="uk-text-menu-element    uk-text-bold" href="${pageContext.request.contextPath}/newrequest">
                                            <span class="uk-margin-small-right uk-icon" uk-icon="icon: plus-circle"></span>Administrador</a></li>
                                    <!--<li><a class="uk-text-primary uk-text-bold" href="#"><span class="uk-margin-small-right uk-icon icon-head " uk-icon="icon: push"></span>Pre-registro</a></li>-->
<!--                                    <li><a class="uk-text-primary uk-text-bold" href="${pageContext.request.contextPath}/pages/coordinador/misSolicitudes.jsp">
                                            <span class="uk-margin-small-right uk-icon icon-head " uk-icon="icon: folder"></span>Mis Solicitudes</a></li>-->
                                    <li><a class="uk-text-menu-element   uk-text-bold" href="${pageContext.request.contextPath}/index.jsp"><span class="uk-margin-small-right uk-icon icon-head " uk-icon="icon: home"></span>Inicio</a></li>
                                    <li><a class="uk-text-menu-element   uk-text-bold" href="${pageContext.request.contextPath}/logout"><span class="uk-margin-small-right uk-icon icon-head " uk-icon="icon: sign-out"></span>Salir</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="uk-sticky-placeholder" style="height: 80px; margin: 0px;" hidden=""></div>
        </div>
        <nav class="navbar uk-navbar uk-navbar-container uk-navbar-transparent uk-margin hidden-on-normal-viewport uk-margin-remove-top">
            <!-- SideNav -->
            <div class="uk-navbar-right">  
                <!-- Toggle Icon Nav-->
                <a id="menuside" data-step="1" data-intro="Despliega el menú"  name="menuside" href="#sidenav" class="uk-navbar-toggle" uk-toggle>
                    <span uk-navbar-toggle-icon></span> 
                    <span class="uk-margin-small-left uk-text-bold"></span>
                </a>
                <div id="sidenav" uk-offcanvas="mode: slide">
                    <div class="uk-offcanvas-bar">
                        <h2 class="uk-h2 uk-text-light"> Ortodoncia y Odontología Integral Villaseñor </h2>
                        <ul class="uk-nav uk-nav-parent-icon" uk-nav>                            
                            <li><a class="uk-text-primary  uk-text-bold" href="${pageContext.request.contextPath}/newrequest">
                                    <span class="uk-margin-small-right uk-icon" uk-icon="icon: plus-circle"></span>Pagos</a></li>
                            <li><a class="uk-text-primary  uk-text-bold" href="${pageContext.request.contextPath}/newrequest">
                                    <span class="uk-margin-small-right uk-icon" uk-icon="icon: plus-circle"></span>Agenda</a></li>
                            <li><a class="uk-text-primary  uk-text-bold" href="${pageContext.request.contextPath}/newrequest">
                                    <span class="uk-margin-small-right uk-icon" uk-icon="icon: plus-circle"></span>Expedientes</a></li>
                            <li><a class="uk-text-primary  uk-text-bold" href="${pageContext.request.contextPath}/newrequest">
                                    <span class="uk-margin-small-right uk-icon" uk-icon="icon: plus-circle"></span>Administrador</a></li>
                            <!--<li><a class="uk-text-primary uk-text-bold" href="#"><span class="uk-margin-small-right uk-icon icon-head " uk-icon="icon: push"></span>Pre-registro</a></li>-->
<!--                                    <li><a class="uk-text-primary uk-text-bold" href="${pageContext.request.contextPath}/pages/coordinador/misSolicitudes.jsp">
                                    <span class="uk-margin-small-right uk-icon icon-head " uk-icon="icon: folder"></span>Mis Solicitudes</a></li>-->
                            <li><a class="uk-text-primary uk-text-bold" href="${pageContext.request.contextPath}/index.jsp"><span class="uk-margin-small-right uk-icon icon-head " uk-icon="icon: home"></span>Inicio</a></li>
                            <li><a class="uk-text-primary uk-text-bold" href="${pageContext.request.contextPath}/logout"><span class="uk-margin-small-right uk-icon icon-head " uk-icon="icon: sign-out"></span>Salir</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="uk-navbar-center uk-width-1-4 uk-align-center">        
                <span class="uk-navbar-item uk-logo uk-align-center uk-text-bold uk-width-1-2" >
                    <img  src="${pageContext.request.contextPath}/img/logo.png" />
                </span>
            </div>
        </nav>

        <script src="${pageContext.request.contextPath}/js/jquery.min.js" ></script>
        <script src="${pageContext.request.contextPath}/js/uikit.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/uikit-icons.min.js"></script>
        <script>
        </script>
    </body>
</html>
