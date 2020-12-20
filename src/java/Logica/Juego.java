/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 *
 * @author Julieta
 */
@Entity
public class Juego implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int idJuego;
    @Basic
    private String nombre;
    private int capacidad;
    private int edadMinima;
    @OneToOne
    private Horario horario;
    
    @OneToMany
    List<Entrada>entradasVendidas;
    
    @OneToMany
    List<Empleado> empleados;

    public Juego() {
        entradasVendidas= new ArrayList<Entrada>();
        empleados= new ArrayList<Empleado>();
        
    }

    public Juego(String nombre, int edadMinima, Horario horario, List<Empleado> empleados) {
        this.nombre = nombre;
        this.edadMinima = edadMinima;
        this.horario = horario;
        this.empleados = empleados;
    }

    public int getIdJuego() {
        return idJuego;
    }

    public void setIdJuego(int idJuego) {
        this.idJuego = idJuego;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public int getEdadMinima() {
        return edadMinima;
    }
    

    public void setEdadMinima(int edadMinima) {
        this.edadMinima = edadMinima;
    }

    public Horario getHorario() {
        return horario;
    }

    public void setHorario(Horario horario) {
        this.horario = horario;
    }

    public List<Empleado> empleadosEncargados() {
        return empleados;
    }

    public void setEmpleados(List<Empleado> empleados) {
        this.empleados = empleados;
    }

    public List<Entrada> getEntradasVendidas() {
        return entradasVendidas;
    }

    public void setEntradasVendidas(List<Entrada> entradasVendidas) {
        this.entradasVendidas = entradasVendidas;
    }
    
     public int entradasVendidasEnElDia(Date fecha) {
         int entradasDelDia=0;
         
         for (Entrada entrada : entradasVendidas) {
             if (entrada.getFecha().equals(fecha)) {
                 entradasDelDia++;
             }
         }
         return entradasDelDia;
     }
   
    
}
