// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.Localidad;
import ar.com.ix.shelters.model.Tecnico;
import ar.com.ix.shelters.model.Zona;

privileged aspect Tecnico_Roo_JavaBean {
    
    public String Tecnico.getNombre() {
        return this.nombre;
    }
    
    public void Tecnico.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Tecnico.getDomicilio() {
        return this.domicilio;
    }
    
    public void Tecnico.setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }
    
    public String Tecnico.getCelular() {
        return this.celular;
    }
    
    public void Tecnico.setCelular(String celular) {
        this.celular = celular;
    }
    
    public Localidad Tecnico.getLocalidad() {
        return this.localidad;
    }
    
    public void Tecnico.setLocalidad(Localidad localidad) {
        this.localidad = localidad;
    }
    
    public Zona Tecnico.getZona() {
        return this.zona;
    }
    
    public void Tecnico.setZona(Zona zona) {
        this.zona = zona;
    }
    
}
