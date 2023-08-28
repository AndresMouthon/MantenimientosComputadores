/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ServletConexion;

import Controller.ClienteController;
import Controller.MantenimientoController;
import Model.Cliente;
import Model.Mantenimiento;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Andres Mouthon 
 */
@WebServlet(name = "ServletConexion", urlPatterns = {"/ServletConexion"})
public class ServletConexion extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        /*Controladores*/
        ClienteController controladorCliente = new ClienteController();
        MantenimientoController controladorMantemiento = new MantenimientoController();

        /*Botones del index*/
        String registrarCliente = request.getParameter("registrarCliente");
        String registrarMantenimiento = request.getParameter("registrarMantenimiento");
        String verMantenimientosCliente = request.getParameter("verMantenimientosCliente");

        /*Datos para registrar datos al cliente*/
        String registrarDatosCliente = request.getParameter("registrarDatosCliente");
        String documentoIdentidad = request.getParameter("documento");
        String nombreCliente = request.getParameter("nombre");
        String apellidoCliente = request.getParameter("apellido");
        
        /*Datos para registrar al mantenimiento*/
        String registrarDatosMantenimiento = request.getParameter("registrarDatosMantenimiento");
        String documentoCliente = request.getParameter("cliente");
        String mantenimientoDescripcion = request.getParameter("mantenimiento");
        String equipo = request.getParameter("equipo");
        String fechaMantenimiento = request.getParameter("fechaMantenimiento");
        
        /*Datos para buscar mantenimiento por cliente*/
        String buscarMantenimientoCliente = request.getParameter("buscarMantenimientoCliente");
        String docIdentidad = request.getParameter("cliente");
        
        /*Peticiones*/
        if (registrarCliente != null) {
            request.getRequestDispatcher("/JSP/RegistrarCliente.jsp").forward(request, response);
        } else if (registrarDatosCliente != null) {
            Cliente clienteNuevo = new Cliente(documentoIdentidad, nombreCliente, apellidoCliente);
            boolean respuesta = controladorCliente.verificarCliente(clienteNuevo);
            if (respuesta == true) {
                controladorCliente.registrarCliente(clienteNuevo);
                request.setAttribute("respuesta", respuesta);
                request.getRequestDispatcher("/JSP/FinRegistroCliente.jsp").forward(request, response);
            } else {
                request.setAttribute("respuesta", respuesta);
                request.getRequestDispatcher("/JSP/FinRegistroCliente.jsp").forward(request, response);
            }
        }
        else if(registrarMantenimiento != null){
            List clientes = controladorCliente.getClientes();
            request.setAttribute("listaClientes", clientes);
            request.getRequestDispatcher("/JSP/RegistrarMantenimiento.jsp").forward(request, response);
        }
        else if(registrarDatosMantenimiento != null){
            Double precio = controladorMantemiento.generarPrecio(mantenimientoDescripcion);
            Cliente cliente = controladorCliente.getByDocumento(documentoCliente);
            Integer id = controladorMantemiento.getMantenimiento().size()+1;
            Mantenimiento mantenimientoNuevo = new Mantenimiento(id);
            mantenimientoNuevo.setDescripcion(controladorMantemiento.generarDescripcion(mantenimientoDescripcion));
            mantenimientoNuevo.setEquipo(equipo);
            mantenimientoNuevo.setPrecio(precio);
            mantenimientoNuevo.setCliente(cliente);
            mantenimientoNuevo.setFechaMantenimiento(fechaMantenimiento);
            controladorMantemiento.registrarMantenimiento(mantenimientoNuevo);
            request.getRequestDispatcher("/JSP/FinRegistroMantenimiento.jsp").forward(request, response);
        }
        else if (verMantenimientosCliente != null){
            List clientes = controladorCliente.getClientes();
            request.setAttribute("listaClientes", clientes);
            request.getRequestDispatcher("/JSP/BuscarMantenimientoCliente.jsp").forward(request, response);
        }
        else if (buscarMantenimientoCliente != null){
            List<Mantenimiento> mantenimientosCliente = controladorMantemiento.mostrarMantenimientos(docIdentidad);
            request.setAttribute("listaMantenimientos", mantenimientosCliente);
            request.getRequestDispatcher("/JSP/MostrarMantenimientosCliente.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
