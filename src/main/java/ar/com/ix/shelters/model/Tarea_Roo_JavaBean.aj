// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.EstadoTarea;
import ar.com.ix.shelters.model.Shelter;
import ar.com.ix.shelters.model.Tarea;
import ar.com.ix.shelters.model.Tecnico;
import java.util.Date;

privileged aspect Tarea_Roo_JavaBean {
    
    public String Tarea.getDescripcion() {
        return this.descripcion;
    }
    
    public void Tarea.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public Tecnico Tarea.getResponsable() {
        return this.responsable;
    }
    
    public void Tarea.setResponsable(Tecnico responsable) {
        this.responsable = responsable;
    }
    
    public Shelter Tarea.getShelter() {
        return this.shelter;
    }
    
    public void Tarea.setShelter(Shelter shelter) {
        this.shelter = shelter;
    }
    
    public EstadoTarea Tarea.getEstado() {
        return this.estado;
    }
    
    public void Tarea.setEstado(EstadoTarea estado) {
        this.estado = estado;
    }
    
    public Date Tarea.getFechaInicio() {
        return this.fechaInicio;
    }
    
    public void Tarea.setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }
    
    public String Tarea.getHoraInicio() {
        return this.horaInicio;
    }
    
    public void Tarea.setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }
    
    public Date Tarea.getFechaFin() {
        return this.fechaFin;
    }
    
    public void Tarea.setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }
    
    public String Tarea.getHoraFin() {
        return this.horaFin;
    }
    
    public void Tarea.setHoraFin(String horaFin) {
        this.horaFin = horaFin;
    }
    
}
