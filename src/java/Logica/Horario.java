/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Julieta
 */
@Entity
public class Horario implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id_horario;
    @Temporal(TemporalType.TIME)
    private Date hora_inicio;
    @Temporal(TemporalType.TIME)
    private Date hora_fin;
    @Basic
    private String dia;

    public  Horario() {
    }

    public Horario(int id_horario, Date hora_inicio, Date hora_fin, String dia) {
        this.id_horario = id_horario;
        this.hora_inicio = hora_inicio;
        this.hora_fin = hora_fin;
        this.dia = dia;
    }

    public int getId_horario() {
        return id_horario;
    }

    public void setId_horario(int id_horario) {
        this.id_horario = id_horario;
    }

    public Date getHora_inicio() {
        return hora_inicio;
    }

    public void setHora_inicio(Date hora_inicio) {
        this.hora_inicio = hora_inicio;
    }

    public Date getHora_fin() {
        return hora_fin;
    }

    public void setHora_fin(Date hora_fin) {
        this.hora_fin = hora_fin;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public Date getInicio() {
        return hora_inicio;
    }

    public void setInicio(Date inicio) {
        this.hora_inicio = inicio;
    }

    public Date getFin() {
        return hora_fin;
    }

    public void setFin(Date fin) {
        this.hora_fin = fin;
    }
 
    
}
