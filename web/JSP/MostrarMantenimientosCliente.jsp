<%@page import="Model.Mantenimiento"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mantenimientos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <%List<Mantenimiento> listaMantenimiento = (List<Mantenimiento>) request.getAttribute("listaMantenimientos");
            Double saldoTotal = 0d;
        %>
    </head>
    <body>
        <div class="contenedor-grid">
            <div class="header">
                <div class="input-group mb-10" id="logo">
                    <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-wrench-adjustable-circle-fill" viewBox="0 0 16 16">
                    <path d="M6.705 8.139a.25.25 0 0 0-.288-.376l-1.5.5.159.474.808-.27-.595.894a.25.25 0 0 0 .287.376l.808-.27-.595.894a.25.25 0 0 0 .287.376l1.5-.5-.159-.474-.808.27.596-.894a.25.25 0 0 0-.288-.376l-.808.27.596-.894Z"/>
                    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16Zm-6.202-4.751 1.988-1.657a4.5 4.5 0 0 1 7.537-4.623L7.497 6.5l1 2.5 1.333 3.11c-.56.251-1.18.39-1.833.39a4.49 4.49 0 0 1-1.592-.29L4.747 14.2a7.031 7.031 0 0 1-2.949-2.951ZM12.496 8a4.491 4.491 0 0 1-1.703 3.526L9.497 8.5l2.959-1.11c.027.2.04.403.04.61Z"/>
                    </svg>
                    <h1>MANTENIMIENTO DIGITAL MANDOSED</h1>
                </div>
            </div>
            <%if (listaMantenimiento.size() == 0) {%>
            <div class="left">
                <img src="/MantenimientosComputadores/IMG/exclamacion.png" alt="alt"/>
            </div>
            <div class="right">
                <h1>
                    <div class="mensaje">
                        <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-exclamation-circle-fill" viewBox="0 0 16 16">
                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
                        </svg>
                        Este usuario no tiene ningun mantenimiento
                    </div>
                    <center>
                        <a href="/MantenimientosComputadores/index.html" class="btn btn-secondary" id="btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-check2-all" viewBox="0 0 16 16">
                            <path d="M12.354 4.354a.5.5 0 0 0-.708-.708L5 10.293 1.854 7.146a.5.5 0 1 0-.708.708l3.5 3.5a.5.5 0 0 0 .708 0l7-7zm-4.208 7-.896-.897.707-.707.543.543 6.646-6.647a.5.5 0 0 1 .708.708l-7 7a.5.5 0 0 1-.708 0z"/>
                            <path d="m5.354 7.146.896.897-.707.707-.897-.896a.5.5 0 1 1 .708-.708z"/>
                            </svg>
                            Confirmar
                        </a>
                    </center>
                </h1>
            </div>
            <%} else {%>
            <div class="container" style="display: flex; margin-left: 5.5%">
                <div class="row align-items-start" style="justify-content: space-between; flex-direction: row">
                    <%for (Mantenimiento mantenimiento : listaMantenimiento) {%>
                    <div class="card" style="width: 20rem;">
                        <img src="/MantenimientosComputadores/IMG/Mantenimiento.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%= mantenimiento.getDescripcion()%></h5>
                            <ul>
                                <li><p><%= mantenimiento.getEquipo()%></p></li>
                                <li><p><%= mantenimiento.getFechaMantenimiento()%></p></li>
                                <li><p>$ <%= mantenimiento.getPrecio()%>00</p></li>
                            </ul>
                        </div>
                    </div>
                    <%
                            saldoTotal += mantenimiento.getPrecio();
                        }
                        String total = String.valueOf(saldoTotal);
                    %>
                </div>
            </div>
        </div>
        <div class="card text-center">
            <div class="card-header">
                SU SALDO TOTAL
            </div>
            <div class="card-body">
                <h5 class="card-title">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cash-coin" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M11 15a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm5-4a5 5 0 1 1-10 0 5 5 0 0 1 10 0z"/>
                    <path d="M9.438 11.944c.047.596.518 1.06 1.363 1.116v.44h.375v-.443c.875-.061 1.386-.529 1.386-1.207 0-.618-.39-.936-1.09-1.1l-.296-.07v-1.2c.376.043.614.248.671.532h.658c-.047-.575-.54-1.024-1.329-1.073V8.5h-.375v.45c-.747.073-1.255.522-1.255 1.158 0 .562.378.92 1.007 1.066l.248.061v1.272c-.384-.058-.639-.27-.696-.563h-.668zm1.36-1.354c-.369-.085-.569-.26-.569-.522 0-.294.216-.514.572-.578v1.1h-.003zm.432.746c.449.104.655.272.655.569 0 .339-.257.571-.709.614v-1.195l.054.012z"/>
                    <path d="M1 0a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h4.083c.058-.344.145-.678.258-1H3a2 2 0 0 0-2-2V3a2 2 0 0 0 2-2h10a2 2 0 0 0 2 2v3.528c.38.34.717.728 1 1.154V1a1 1 0 0 0-1-1H1z"/>
                    <path d="M9.998 5.083 10 5a2 2 0 1 0-3.132 1.65 5.982 5.982 0 0 1 3.13-1.567z"/>
                    </svg>
                    $ <%=total%>00
                </h5>
                <div class="card-footer text-muted">
                    <a href="/MantenimientosComputadores/index.html" class="btn btn-dark" id="btn">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
                        <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5Z"/>
                        </svg>
                        Inicio
                    </a>
                </div>
            </div>
        </div>
        <%}%>
    </div>
</body>
</html>
<style>
    *{
        box-sizing: border-box;
        margin: 5px;
    }
    body{
        background-image: url("/MantenimientosComputadores/IMG/imagenFondo.png");
        background-repeat: no-repeat;
        background-size: cover;
        background-attachment: fixed;
        background-position: center;
    }
    .header{
        background-color: white;
        grid-area: header;
        height: 100px;
        display: flex;
        opacity: .9;
        color: black;
    }
    .header #logo{

        justify-content: center;
        align-content: center;
        align-items: center;
    }
    .left{
        margin-left: 100px;
        display: flex;
        grid-area: left;
        height: 500px;
        position: relative;
        overflow: hidden;
        justify-content: center;
    }
    .right{
        grid-area: right;
        height: 505px;
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        font-family: fantasy;
    }
    .right .mensaje{
        color: white;
    }
    #btn:hover{
        transition: 0.3s;
        color: black;
        background-color: white;
    }
    .contenedor-grid{
        display: grid;
        grid-template-areas:
            "header header header header header"
            "left right right right right";
    }
</style>
