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
@WebServlet(name = "ServletModificacionEmpleado", urlPatterns = {"/ServletModificacionEmpleado"})
public class ServletModificacionEmpleado extends HttpServlet {

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
         Controladora control=new Controladora();
         String dni= request.getParameter("dni");
         if (control.existeEmpleado(dni)) {
              int idEmpleado= control.getIdEmpleado(dni);
              int idUsuario=control.getIdUsuario(idEmpleado);
              Empleado empleado= control.traerEmpleado(idEmpleado);
//              Usuario usuario= control.traerUsuario(idUsuario);
              
              request.getSession().setAttribute("nombre",empleado.getNombre() );
              request.getSession().setAttribute("apellido", empleado.getApellido());
              request.getSession().setAttribute("dni", dni);
              request.getSession().setAttribute("cargo", empleado.getCargo());
              request.getSession().setAttribute("id",String.valueOf(idEmpleado));
     
              
              
               response.sendRedirect("EdicionEmpleado.jsp");
 
        }else{
             response.sendRedirect("LoginError.jsp");
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
