/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.ControladoraPersistencia;
import java.util.List;

/**
 *
 * @author Julieta
 */
public class Controladora {
    ControladoraPersistencia controlPersis=new ControladoraPersistencia();
        
    
    public void crearEmpleado(Empleado emple) {
        controlPersis.crearEmpleado(emple);
    }
    public void eliminarEmpleado(int id){
        controlPersis.eliminarEmpleado(id);
    }
    public void modificarEmpleado(Empleado empleado){
        controlPersis.modificarEmpleado(empleado);
    }
    public List<Empleado> traerEmpleados(){
        return controlPersis.traerEmpleados();
    }
    
    public Empleado traerEmpleado(int id){
        return controlPersis.traerEmpleado(id);
    }

    public void crearJuego(Juego juego){
        controlPersis.crearJuego(juego);
    }
       public void crearUsuario(Usuario usu) {
        controlPersis.crearUsuario(usu);
    }
    
}
