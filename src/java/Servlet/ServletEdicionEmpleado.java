/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import Logica.Empleado;
import Logica.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julieta
 */
@WebServlet(name = "ServletEdicionEmpleado", urlPatterns = {"/ServletEdicionEmpleado"})
public class ServletEdicionEmpleado extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Controladora control= new Controladora();
        String nuevoNombre= request.getParameter("nombre");
        String nuevoApellido=request.getParameter("apellido");
        String dni= request.getParameter("dni");
        String nuevoCargo= request.getParameter("cargo");
        
        Empleado empleado= control.traerEmpleado(control.getIdEmpleado(dni));
        empleado.setNombre(nuevoNombre);
        empleado.setApellido(nuevoApellido);
        empleado.setCargo(nuevoCargo);
        
        control.modificarEmpleado(empleado);
         response.sendRedirect("EdicionConfirmacion.jsp");
        
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
