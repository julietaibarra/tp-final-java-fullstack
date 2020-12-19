/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Logica.Controladora;
import Logica.Horario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
@WebServlet(name = "ServletAltaHorario", urlPatterns = {"/ServletAltaHorario"})
public class ServletAltaHorario extends HttpServlet {

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
        String horaInicio= request.getParameter("horaInicio");
        String horaFinal= request.getParameter("horaFinal");
        String dia= request.getParameter("dia");
        
        Horario horario= new Horario();
        SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
        Date hora_inicio= new Date();
        Date hora_final= new Date();
        try {
            hora_inicio=control.convertirHoraStringADate(horaInicio);
            hora_final=control.convertirHoraStringADate(horaFinal);
        } catch (ParseException ex) {
            Logger.getLogger(ServletAltaHorario.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        horario.setHora_inicio(hora_inicio);
        horario.setHora_fin(hora_final);
        horario.setDia(dia);
        
        control.crearHorario(horario);
       request.getSession().setAttribute("horaInicio", horaInicio);
       request.getSession().setAttribute("horaFinal", horaFinal);
       request.getSession().setAttribute("dia", dia);
       
        response.sendRedirect("ConfirmacionHorario.jsp");
       
       
                
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
