/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Julieta
 */
@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {

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
       //traigo ususario y contrase;a desde el login
        String nombreUsuario=request.getParameter("nombreUsuario");
        String contrasenia=request.getParameter("contrasenia");
         boolean esta= false;
         Controladora control= new Controladora();
         //asigno a mi variable si esta o no
         esta=control.comprobarIngreso(nombreUsuario, contrasenia);
         
         //comprobacion 
         if (esta) {
            
             HttpSession miSession=request.getSession(true);
             miSession.setAttribute("nombreUSsuario", nombreUsuario);
             miSession.setAttribute("contrasenia", contrasenia);
             response.sendRedirect("Index.jsp");
        }else{
             response.sendRedirect("LonginError.jsp");
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
