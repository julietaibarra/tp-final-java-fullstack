/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import Logica.Empleado;
import Logica.Horario;
import Logica.Juego;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julieta
 */
@WebServlet(name = "ServletAltaJuego", urlPatterns = {"/ServletAltaJuego"})
public class ServletAltaJuego extends HttpServlet {

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
           int capacidad= Integer.parseInt(request.getParameter("capacidad"));
           int edadMinima= Integer.parseInt(request.getParameter("edadMinima"));
           Horario horario= control.traerHorario(Integer.parseInt(request.getParameter("horario")));
           String [] idsEmpleados=request.getParameterValues("empleados[]");
          
           
           List<Empleado> empleados=new ArrayList();
           for (int i = 0; i < idsEmpleados.length; i++) {
            String idEmpleado = idsEmpleados[i];
            Empleado empleado=control.traerEmpleado(Integer.parseInt(idEmpleado));
            empleados.add(empleado);
        }
           
           Juego juego=new Juego();
           juego.setNombre(nombre);
           juego.setCapacidad(capacidad);
           juego.setHorario(horario);
           juego.setEmpleados(empleados);
           juego.setEdadMinima(edadMinima);
           control.crearJuego(juego);
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
