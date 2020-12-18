
package Logica;

import Persistencia.ControladoraPersistencia;
import java.util.ArrayList;
import java.util.List;


public class Controladora {
    ControladoraPersistencia controlPersis=new ControladoraPersistencia();
        
    
    //metodos de empleados
    public void crearEmpleado(String nombre, String apellido,String dni, Usuario usu) {
        Empleado empleado= new Empleado();
      
        empleado.setNombre(nombre);
        empleado.setApellido(apellido);
        empleado.setDni(dni);
        empleado.setUnUsuario(usu);
        controlPersis.crearEmpleado(empleado);
    }
    public void creaEmpleado(Empleado empleado){
        controlPersis.crearEmpleado(empleado);
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
    
    //metodos de cliente
    public void crearCliente(Cliente cliente){
        controlPersis.crearCliente(cliente);
    }
    
    public void eliminarCliente(int id){
        controlPersis.eliminarCliente(id);
    }
    
    public void modificarCliente(Cliente cliente){
        controlPersis.modificarCliente(cliente);
    }
    
    public List<Cliente> traerClienetes(){
        return controlPersis.traerClientes();
    }
    public Cliente traerCliente(int id){
        return controlPersis.traerCliente(id);
    }
    //metodos de entrada
    public void crearEntrada(Entrada entrada){
        controlPersis.crearEntrada(entrada);
    }
    
    public void eliminarEntrada(int id){
        controlPersis.eliminarEntrada(id);
    }
    
    public void modificar(Entrada entrada){
        controlPersis.modificarEntrada(entrada);
    }
    
    public List<Entrada> traerEntradas(){
        return controlPersis.traerEntradas();
    }
    
    public Entrada traerEntrada(int id){
        return controlPersis.traerEntrada(id);
    }
    
    //metodos de Horario
    public void crearHorario(Horario horario){
        controlPersis.crearHorario(horario);
    }
    public void eliminarHorario(int id){
        controlPersis.eliminarHorario(id);
    }
    
    public void modificarHorario(Horario horario){
        controlPersis.modificarHorario(horario);
    }
    
    public List<Horario> traerHorarios(){
        return controlPersis.traerHorarios();
    }
    public Horario traerHorario(int id){
        return controlPersis.traerHorario(id);
    }
    
    //metodos de juego
     public void crearJuego(Juego juego){
        controlPersis.crearJuego(juego);
    }
     public void eliminarJuego(int id){
         controlPersis.eliminarJuego(id);
     }
     
     public void modificarJuego(Juego juego){
         controlPersis.modificarJuego(juego);
     }
     
     public List<Juego> traerJuegos(){
         return controlPersis.traerJuegos();
     }
     
     public Juego traerJuego(int id){
         return controlPersis.traerJuego(id);
     }
    
    
    //metodos de usuario
      public void crearUsuario(Usuario usuario) {
       
        controlPersis.crearUsuario(usuario);
    }
      
      public void eliminarUsuario( int id){
          controlPersis.eliminarUsusario(id);
      }
       public void modificarUsuario(Usuario usu){
           controlPersis.modificarUsuario(usu);
       }
       
       
       public List<Usuario> traerUsuarios(){
           return controlPersis.traerUsuarios();
       }
       
       
       public Usuario traerUsuario(int id){
           return controlPersis.traerUsuario(id);
                   
       }

    public boolean comprobarIngreso(String nombreUsuario, String contrasenia) {
        boolean ret=false;
        List<Usuario> usuarios=new ArrayList<Usuario>();
        
        usuarios=controlPersis.getUsuarios();
        
        for (Usuario usuario : usuarios) {
            if (usuario.getNombre_usuario().equals(nombreUsuario)&&
                    usuario.getContrasenia().equals(contrasenia)) {
                ret=true;
                
                return ret;
            }
            
        }
        return ret;
    }

    public int getIdEmpleado(String dni) {
        List<Empleado> empleados= controlPersis.traerEmpleados();
        int id=0;
        for (Empleado empleado : empleados) {
            if (empleado.getDni().equals(dni)) {
                id=empleado.getId_empleado();
                
            }
            
        }
        return id;
    }
    
    public boolean existeEmpleado(String dni){
        List<Empleado> empleados= controlPersis.traerEmpleados();
        for (Empleado empleado : empleados) {
             if (empleado.getDni().equals(dni)) {
              return true;
                
            } 
        }
        return false;
    }

    public int getIdUsuario(int idEmpleado) {
       Empleado empleado= controlPersis.traerEmpleado(idEmpleado);
        return empleado.getUnUsuario().getId_usuario();
    }
}
