/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Cliente;
import Logica.Empleado;
import Logica.Entrada;
import Logica.Horario;
import Logica.Juego;
import Logica.Usuario;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Julieta
 */
public class ControladoraPersistencia {
    ClienteJpaController clienteJpa= new ClienteJpaController();
    EmpleadoJpaController empleadoJpa= new EmpleadoJpaController();
    EntradaJpaController entradaJpa= new EntradaJpaController();
    HorarioJpaController horarioJpa = new HorarioJpaController();
    JuegoJpaController juegoJpa =new JuegoJpaController();
    UsuarioJpaController usuarioJpa= new UsuarioJpaController();
    
    
    //metodos del empleado
    public void crearEmpleado(Empleado emple){
         empleadoJpa.create(emple);
         
    }
    
    public void eliminarEmpleado(int idEmpleado){
        try {
            empleadoJpa.destroy(idEmpleado);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarEmpleado(Empleado emple){
        try {
            empleadoJpa.edit(emple);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public List<Empleado> traerEmpleados(){
        List<Empleado> empleados=empleadoJpa.findEmpleadoEntities();
        return empleados;
    }
    
    public Empleado traerEmpleado(int id){
        Empleado empleado= empleadoJpa.findEmpleado(id);
        return empleado;
        
    }
    //mdetodos de cliente
    public void crearCliente(Cliente cliente){
        clienteJpa.create(cliente);    
    }
    
    public void eliminarCliente(int id){
        try {
            clienteJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarCliente(Cliente cliente){
        try {
            clienteJpa.edit(cliente);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Cliente> traerClientes(){
        List<Cliente> clientes=clienteJpa.findClienteEntities();
        return clientes;
    }
    
    public Cliente traerCliente(int id){
        Cliente cliente= clienteJpa.findCliente(id);
        return cliente;
    }
    
    
    //metodos de entrada
    public void crearEntrada(Entrada entrada){
        entradaJpa.create(entrada);
    }
    
    public void eliminarEntrada(int id){
        try {
            entradaJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarEntrada(Entrada entrada){
        try {
            entradaJpa.edit(entrada);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Entrada> traerEntradas(){
        List<Entrada> entradas= entradaJpa.findEntradaEntities();
        return entradas;
    }
    
    public Entrada traerEntrada(int id){
        Entrada entrada= entradaJpa.findEntrada(id);
        return entrada;
    }
    
    //metodos de Horaario
    public void crearHorario(Horario horario){
        horarioJpa.create(horario);
    }
    
    public void eliminarHorario(int id){
        try {
            horarioJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarHorario(Horario horario){
        try {
            horarioJpa.edit(horario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public List<Horario> traerHorarios(){
        List<Horario> horarios=horarioJpa.findHorarioEntities();
        return horarios;
    }
    public Horario traerHorario( int id){
        Horario horario= horarioJpa.findHorario(id);
        return horario;
    }
    
    //metodos de juego
    public void crearJuego( Juego juego){
        juegoJpa.create(juego);
        
    }
    public void eliminarJuego( int id){
        try {
            juegoJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void modificarJuego( Juego juego){
        try {
            juegoJpa.edit(juego);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public List<Juego> trearJuegos(){
        List<Juego> juegos=juegoJpa.findJuegoEntities();
        return juegos;
    }
    public Juego traerJuego(int id){
        Juego juego= juegoJpa.findJuego(id);
        return juego;
    }
    
    //metodos de usuario
    
    public void crearUsuario(Usuario Usuario){
        usuarioJpa.create(Usuario);
    }
    
    public void eliminarUsusario(int id){
        try {
            usuarioJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void modificarUsuario(Usuario usuario){
        try {
            usuarioJpa.edit(usuario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public List<Usuario> traerUsuarios(){
        List<Usuario> usuarios= usuarioJpa.findUsuarioEntities();
        return usuarios;
    }
    public Usuario trearUsuario(int id){
        Usuario usuario= usuarioJpa.findUsuario(id);
        return usuario;
    }
    
}
