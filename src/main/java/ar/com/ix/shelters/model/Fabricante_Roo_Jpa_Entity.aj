// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.Fabricante;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Fabricante_Roo_Jpa_Entity {
    
    declare @type: Fabricante: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Fabricante.id;
    
    @Version
    @Column(name = "version")
    private Integer Fabricante.version;
    
    public Long Fabricante.getId() {
        return this.id;
    }
    
    public void Fabricante.setId(Long id) {
        this.id = id;
    }
    
    public Integer Fabricante.getVersion() {
        return this.version;
    }
    
    public void Fabricante.setVersion(Integer version) {
        this.version = version;
    }
    
}
