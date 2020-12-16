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
@WebServlet(name = "PruebaServlet", urlPatterns = {"/PruebaServlet"})
public class PruebaServlet extends HttpServlet {

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
       String nombre= request.getParameter("nombre");
       String apellido= request.getParameter("apellido");
       String dni= request.getParameter("dni");
       String cargo=request.getParameter("cargo");
       String nombreUsuario=request.getParameter("nombreUsuario");
       String contrasenia= request.getParameter("contrasenia");
     
       Usuario usuario= new Usuario();
       usuario.setNombre_usuario(nombreUsuario);
       usuario.setContrasenia(contrasenia);
       
       Empleado empleado= new Empleado();
       empleado.setNombre(nombre);
       empleado.setApellido(apellido);
       empleado.setDni(dni);
       empleado.setCargo(cargo);
       empleado.setUnUsuario(usuario);
       
       control.crearUsuario(usuario);
       control.creaEmpleado(empleado);
       
       request.getSession().setAttribute("nombre", nombre);
       request.getSession().setAttribute("apellido", apellido);
       request.getSession().setAttribute("dni", dni);
       request.getSession().setAttribute("cargo", cargo);
       request.getSession().setAttribute("nombreUsuario", nombreUsuario);
       response.sendRedirect("Confirmacion.jsp");
      
  
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
