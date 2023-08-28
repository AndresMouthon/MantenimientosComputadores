<%@page import="java.util.List"%>
<%@page import="Model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Mantenimiento</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <%List<Cliente> listaCliente = (List<Cliente>) request.getAttribute("listaClientes");%>
    </head>
    <body>
    <center>
        <div class = "col-md-8" style="margin-top: 160px">
            <table class="table table-dark table-striped" style="font-family: initial">
                <form action="" method="post">
                    <tr>
                        <td>
                            <h3>
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                                </svg>
                                Seleccione el cliente
                            </h3>
                        </td>
                        <th>
                            <select name="cliente" class="form-select">
                                <option selected>Seleccione una opcion...</option>
                                <%for (Cliente cliente : listaCliente) {%>
                                <option value="<%=cliente.getDocumento()%>"><%=cliente.getNombre()%></option>
                                <%}%>
                            </select>
                        </th>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center">
                            <button name="buscarMantenimientoCliente" type="submit" class="btn btn-light">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                </svg>
                                Buscar
                            </button>&nbsp;&nbsp;
                            <a href="/MantenimientosComputadores/index.html" class="btn btn-danger">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bookmark-x-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zM6.854 5.146a.5.5 0 1 0-.708.708L7.293 7 6.146 8.146a.5.5 0 1 0 .708.708L8 7.707l1.146 1.147a.5.5 0 1 0 .708-.708L8.707 7l1.147-1.146a.5.5 0 0 0-.708-.708L8 6.293 6.854 5.146z"/>
                                </svg>
                                Cancelar
                            </a>
                        </td>
                    </tr>
                </form>
            </table>
        </div>
    </center>
</body>
</html>
<style>
    body{
        background-image: url("/MantenimientosComputadores/IMG/fondoRegistroCliente.png");
        background-repeat: no-repeat;
        background-size: cover;
        background-attachment: fixed;
        background-position: center;
    }
</style>