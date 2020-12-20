/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Cliente;
import Logica.Controladora;
import Logica.Entrada;
import Logica.Horario;
import Logica.Juego;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julieta
 */
@WebServlet(name = "ServletAltaEntrada", urlPatterns = {"/ServletAltaEntrada"})
public class ServletAltaEntrada extends HttpServlet {

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
       int edad= Integer.parseInt(request.getParameter("edad"));
       int idJuego=Integer.parseInt(request.getParameter("juego"));
       Juego juego=new Juego();
       juego=control.traerJuego(idJuego);
       String hora= request.getParameter("hora");
       String fecha=request.getParameter("fecha");
        try { 
            Date horaDate=control.convertirHoraStringADate(hora);
            Date fechaDate=control.convertirHoraStringADate(fecha);
            String dia=control.dateADia(fechaDate);
             Horario horarioDelJuego=juego.getHorario();
       Date horaInicio=horarioDelJuego.getHora_inicio();
       Date horaFin=horarioDelJuego.getHora_fin();
        if (horaInicio.getHours()<horaDate.getHours() && 
            horaFin.getHours()>horaDate.getHours() &&
             horarioDelJuego.getDia().equals(dia)){
            
            if (edad>juego.getEdadMinima()) {
                Cliente cliente= new Cliente();
                cliente.setNombre(nombre);
                cliente.setApellido(apellido);
                cliente.setEdad(edad);
                
                Entrada entrada=new Entrada();
                entrada.setCliente(cliente);
                entrada.setFecha(fechaDate);
                
                control.crearCliente(cliente);
                control.crearEntrada(entrada);
                juego.agregarEntradas(entrada);
                 response.sendRedirect("Confirmacion.jsp");
            }else{
                ///Falta terminar
            }
                
 //falta implementar
        }
      
            
        } catch (ParseException ex) {
            Logger.getLogger(ServletAltaEntrada.class.getName()).log(Level.SEVERE, null, ex);
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
