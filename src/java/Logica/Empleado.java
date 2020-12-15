/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;



/**
 *
 * @author Julieta
 */
@Entity
public class Empleado extends Persona implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id_empleado;
    @OneToOne
    private Usuario unUsuario;
    

    public Empleado() {
    }

    public Empleado(int id_empleado, Usuario unUsuario, String dni, String nombre, String apellido) {
        super(dni, nombre, apellido);
        this.id_empleado = id_empleado;
        this.unUsuario = unUsuario;
    }
 
   

    public Usuario getUnUsuario() {
        return unUsuario;
    }

    public void setUnUsuario(Usuario unUsuario) {
        this.unUsuario = unUsuario;
    }

    public int getId_empleado() {
        return id_empleado;
    }

    public void setId_empleado(int id_empleado) {
        this.id_empleado = id_empleado;
    }
    

    
}
