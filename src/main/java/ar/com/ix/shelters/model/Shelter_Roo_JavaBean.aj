// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.Localidad;
import ar.com.ix.shelters.model.Shelter;
import ar.com.ix.shelters.model.Tecnico;
import ar.com.ix.shelters.model.TipoNodo;

privileged aspect Shelter_Roo_JavaBean {
    
    public TipoNodo Shelter.getTipoNodo() {
        return this.tipoNodo;
    }
    
    public void Shelter.setTipoNodo(TipoNodo tipoNodo) {
        this.tipoNodo = tipoNodo;
    }
    
    public String Shelter.getNodo() {
        return this.nodo;
    }
    
    public void Shelter.setNodo(String nodo) {
        this.nodo = nodo;
    }
    
    public String Shelter.getCodigoSitio() {
        return this.codigoSitio;
    }
    
    public void Shelter.setCodigoSitio(String codigoSitio) {
        this.codigoSitio = codigoSitio;
    }
    
    public String Shelter.getModelo() {
        return this.modelo;
    }
    
    public void Shelter.setModelo(String modelo) {
        this.modelo = modelo;
    }
    
    public Tecnico Shelter.getResponsable() {
        return this.responsable;
    }
    
    public void Shelter.setResponsable(Tecnico responsable) {
        this.responsable = responsable;
    }
    
    public Localidad Shelter.getLocalidad() {
        return this.localidad;
    }
    
    public void Shelter.setLocalidad(Localidad localidad) {
        this.localidad = localidad;
    }
    
    public String Shelter.getCoordenadas() {
        return this.coordenadas;
    }
    
    public void Shelter.setCoordenadas(String coordenadas) {
        this.coordenadas = coordenadas;
    }
    
}
