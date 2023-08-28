<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fin del registro</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
            
            <div class="left" style="display: flex">
                <img src="/MantenimientosComputadores/IMG/registroMantenimiento.png" alt="alt" style=""/>
            </div>
            <div class="right">
                <h1>
                    <div class="mensaje">
                        <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-check2-circle" viewBox="0 0 16 16">
                        <path d="M2.5 8a5.5 5.5 0 0 1 8.25-4.764.5.5 0 0 0 .5-.866A6.5 6.5 0 1 0 14.5 8a.5.5 0 0 0-1 0 5.5 5.5 0 1 1-11 0z"/>
                        <path d="M15.354 3.354a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l7-7z"/>
                        </svg>
                        Mantenimiento registrado exitosamente
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
        </div>
    </body>
</html>
<style>
    *{
        box-sizing: border-box;
        margin: 5px;
    }
    body{
        background: black;
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
    .right #btn:hover{
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
